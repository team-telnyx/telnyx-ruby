# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class FlowEdge < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Caller-supplied unique identifier for this edge within the flow.
        #
        #   @return [String]
        required :id, String

        # @!attribute condition
        #   Condition that gates the transition. Discriminated by `type`: `llm`,
        #   `expression`.
        #
        #   @return [Telnyx::Models::AI::FlowEdge::Condition::Llm, Telnyx::Models::AI::FlowEdge::Condition::Expression, Telnyx::Models::AI::FlowEdge::Condition::Default]
        required :condition, union: -> { Telnyx::AI::FlowEdge::Condition }

        # @!attribute start_node_id
        #   ID of the node this edge transitions away from.
        #
        #   @return [String]
        required :start_node_id, String

        # @!attribute target
        #   Destination of the transition. Discriminated by `type`: `node` (jump to another
        #   node in this flow) or `assistant` (hand off to a different assistant).
        #
        #   @return [Telnyx::Models::AI::FlowEdge::Target::Node, Telnyx::Models::AI::FlowEdge::Target::Assistant]
        required :target, union: -> { Telnyx::AI::FlowEdge::Target }

        # @!method initialize(id:, condition:, start_node_id:, target:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::FlowEdge} for more details.
        #
        #   Directed transition from one node to a target, gated by a condition.
        #
        #   The target is either another node in the same flow (`NodeTarget`) or a different
        #   assistant (`AssistantTarget`). Multiple edges may share a `start_node_id`; the
        #   runtime evaluates them in the order they're declared and takes the first whose
        #   condition is true.
        #
        #   @param id [String] Caller-supplied unique identifier for this edge within the flow.
        #
        #   @param condition [Telnyx::Models::AI::FlowEdge::Condition::Llm, Telnyx::Models::AI::FlowEdge::Condition::Expression, Telnyx::Models::AI::FlowEdge::Condition::Default] Condition that gates the transition. Discriminated by `type`: `llm`, `expression
        #
        #   @param start_node_id [String] ID of the node this edge transitions away from.
        #
        #   @param target [Telnyx::Models::AI::FlowEdge::Target::Node, Telnyx::Models::AI::FlowEdge::Target::Assistant] Destination of the transition. Discriminated by `type`: `node` (jump to another

        # Condition that gates the transition. Discriminated by `type`: `llm`,
        # `expression`.
        #
        # @see Telnyx::Models::AI::FlowEdge#condition
        module Condition
          extend Telnyx::Internal::Type::Union

          discriminator :type

          # Edge condition evaluated by the LLM from a natural-language prompt.
          #
          # The model is asked to judge the prompt against conversation context and
          # returns true/false. Use this for fuzzy intents that aren't expressible as
          # a deterministic expression (e.g. 'user wants to escalate to a human').
          variant :llm, -> { Telnyx::AI::FlowEdge::Condition::Llm }

          # Edge condition evaluated as a deterministic expression AST.
          #
          # The expression is computed against runtime dynamic variables and must
          # evaluate to a boolean. Prefer this over `LLMCondition` when the rule is
          # a clean function of known variables — it's cheaper and predictable.
          variant :expression, -> { Telnyx::AI::FlowEdge::Condition::Expression }

          # Fallback edge condition: fires only when no other edge's condition is true.
          #
          # Evaluated after every conditioned (`llm` / `expression`) edge regardless
          # of declaration order, so it routes the flow whenever none of the node's
          # other outgoing edges match. Valid **only** on edges leaving a `tool` or
          # `speak` node, where the deterministic step auto-advances and must always
          # have somewhere to go. A tool/speak node with any outgoing edge is required
          # to carry exactly one `default` edge so it never dead-ends; a tool/speak
          # node with no outgoing edges is a valid terminal step. Carries no parameters.
          variant :default, -> { Telnyx::AI::FlowEdge::Condition::Default }

          class Llm < Telnyx::Internal::Type::BaseModel
            # @!attribute prompt
            #   Natural-language criterion the LLM judges as true/false.
            #
            #   @return [String]
            required :prompt, String

            # @!attribute type
            #
            #   @return [Symbol, :llm]
            required :type, const: :llm

            # @!method initialize(prompt:, type: :llm)
            #   Edge condition evaluated by the LLM from a natural-language prompt.
            #
            #   The model is asked to judge the prompt against conversation context and returns
            #   true/false. Use this for fuzzy intents that aren't expressible as a
            #   deterministic expression (e.g. 'user wants to escalate to a human').
            #
            #   @param prompt [String] Natural-language criterion the LLM judges as true/false.
            #
            #   @param type [Symbol, :llm]
          end

          class Expression < Telnyx::Internal::Type::BaseModel
            # @!attribute expression
            #   Root of the expression AST; evaluates to a boolean. Typed as free-form JSON to
            #   avoid an uncompilable by-value self-reference; see the Expression schema for the
            #   variant structure.
            #
            #   @return [Object]
            required :expression, Telnyx::Internal::Type::Unknown

            # @!attribute type
            #
            #   @return [Symbol, :expression]
            required :type, const: :expression

            # @!method initialize(expression:, type: :expression)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::FlowEdge::Condition::Expression} for more details.
            #
            #   Edge condition evaluated as a deterministic expression AST.
            #
            #   The expression is computed against runtime dynamic variables and must evaluate
            #   to a boolean. Prefer this over `LLMCondition` when the rule is a clean function
            #   of known variables — it's cheaper and predictable.
            #
            #   @param expression [Object] Root of the expression AST; evaluates to a boolean. Typed as free-form JSON to a
            #
            #   @param type [Symbol, :expression]
          end

          class Default < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #
            #   @return [Symbol, :default]
            required :type, const: :default

            # @!method initialize(type: :default)
            #   Fallback edge condition: fires only when no other edge's condition is true.
            #
            #   Evaluated after every conditioned (`llm` / `expression`) edge regardless of
            #   declaration order, so it routes the flow whenever none of the node's other
            #   outgoing edges match. Valid **only** on edges leaving a `tool` or `speak` node,
            #   where the deterministic step auto-advances and must always have somewhere to go.
            #   A tool/speak node with any outgoing edge is required to carry exactly one
            #   `default` edge so it never dead-ends; a tool/speak node with no outgoing edges
            #   is a valid terminal step. Carries no parameters.
            #
            #   @param type [Symbol, :default]
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::AI::FlowEdge::Condition::Llm, Telnyx::Models::AI::FlowEdge::Condition::Expression, Telnyx::Models::AI::FlowEdge::Condition::Default)]
        end

        # Destination of the transition. Discriminated by `type`: `node` (jump to another
        # node in this flow) or `assistant` (hand off to a different assistant).
        #
        # @see Telnyx::Models::AI::FlowEdge#target
        module Target
          extend Telnyx::Internal::Type::Union

          discriminator :type

          # Edge target referencing another node within the same flow.
          #
          # The runtime transitions the active node to `node_id` and continues
          # processing within the current assistant's flow.
          variant :node, -> { Telnyx::AI::FlowEdge::Target::Node }

          # Edge target referencing a different assistant.
          #
          # When the edge fires, the conversation hands off to `assistant_id`: the
          # active assistant on the conversation row is rewritten and the new
          # assistant's flow starts at its own `start_node_id`. The current turn's
          # LLM response is delivered to the user as-is; subsequent turns route
          # to the new assistant.
          variant :assistant, -> { Telnyx::AI::FlowEdge::Target::Assistant }

          class Node < Telnyx::Internal::Type::BaseModel
            # @!attribute node_id
            #   ID of the node this edge transitions into.
            #
            #   @return [String]
            required :node_id, String

            # @!attribute type
            #
            #   @return [Symbol, :node]
            required :type, const: :node

            # @!method initialize(node_id:, type: :node)
            #   Edge target referencing another node within the same flow.
            #
            #   The runtime transitions the active node to `node_id` and continues processing
            #   within the current assistant's flow.
            #
            #   @param node_id [String] ID of the node this edge transitions into.
            #
            #   @param type [Symbol, :node]
          end

          class Assistant < Telnyx::Internal::Type::BaseModel
            # @!attribute assistant_id
            #   ID of the assistant the conversation transitions to.
            #
            #   @return [String]
            required :assistant_id, String

            # @!attribute type
            #
            #   @return [Symbol, :assistant]
            required :type, const: :assistant

            # @!attribute position
            #   Optional canvas coordinates for rendering the target assistant as a node in
            #   authoring UIs. Pure presentation — the runtime ignores it; round-trips so
            #   frontends can persist graph layout across reloads. When multiple edges target
            #   the same assistant, each edge's `position` is independent (frontends typically
            #   use the first non-null one).
            #
            #   @return [Telnyx::Models::AI::NodePosition, nil]
            optional :position, -> { Telnyx::AI::NodePosition }

            # @!attribute voice_mode
            #   Voice behavior when handing off to the target assistant, mirroring the handoff
            #   tool's `voice_mode`. `unified` (default) keeps the current voice across the
            #   handoff; `distinct` lets the target assistant speak with its own configured
            #   voice. Only applies to assistant targets — node targets override voice via the
            #   node's own `voice_settings`.
            #
            #   @return [Symbol, Telnyx::Models::AI::FlowEdge::Target::Assistant::VoiceMode, nil]
            optional :voice_mode, enum: -> { Telnyx::AI::FlowEdge::Target::Assistant::VoiceMode }

            # @!method initialize(assistant_id:, position: nil, voice_mode: nil, type: :assistant)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::FlowEdge::Target::Assistant} for more details.
            #
            #   Edge target referencing a different assistant.
            #
            #   When the edge fires, the conversation hands off to `assistant_id`: the active
            #   assistant on the conversation row is rewritten and the new assistant's flow
            #   starts at its own `start_node_id`. The current turn's LLM response is delivered
            #   to the user as-is; subsequent turns route to the new assistant.
            #
            #   @param assistant_id [String] ID of the assistant the conversation transitions to.
            #
            #   @param position [Telnyx::Models::AI::NodePosition] Optional canvas coordinates for rendering the target assistant as a node in auth
            #
            #   @param voice_mode [Symbol, Telnyx::Models::AI::FlowEdge::Target::Assistant::VoiceMode] Voice behavior when handing off to the target assistant, mirroring the handoff t
            #
            #   @param type [Symbol, :assistant]

            # Voice behavior when handing off to the target assistant, mirroring the handoff
            # tool's `voice_mode`. `unified` (default) keeps the current voice across the
            # handoff; `distinct` lets the target assistant speak with its own configured
            # voice. Only applies to assistant targets — node targets override voice via the
            # node's own `voice_settings`.
            #
            # @see Telnyx::Models::AI::FlowEdge::Target::Assistant#voice_mode
            module VoiceMode
              extend Telnyx::Internal::Type::Enum

              UNIFIED = :unified
              DISTINCT = :distinct

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::AI::FlowEdge::Target::Node, Telnyx::Models::AI::FlowEdge::Target::Assistant)]
        end
      end
    end
  end
end
