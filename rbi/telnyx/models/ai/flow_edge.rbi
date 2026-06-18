# typed: strong

module Telnyx
  module Models
    module AI
      class FlowEdge < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::FlowEdge, Telnyx::Internal::AnyHash)
          end

        # Caller-supplied unique identifier for this edge within the flow.
        sig { returns(String) }
        attr_accessor :id

        # Condition that gates the transition. Discriminated by `type`: `llm`,
        # `expression`.
        sig do
          returns(
            T.any(
              Telnyx::AI::FlowEdge::Condition::Llm,
              Telnyx::AI::FlowEdge::Condition::Expression,
              Telnyx::AI::FlowEdge::Condition::Default
            )
          )
        end
        attr_accessor :condition

        # ID of the node this edge transitions away from.
        sig { returns(String) }
        attr_accessor :start_node_id

        # Destination of the transition. Discriminated by `type`: `node` (jump to another
        # node in this flow) or `assistant` (hand off to a different assistant).
        sig do
          returns(
            T.any(
              Telnyx::AI::FlowEdge::Target::Node,
              Telnyx::AI::FlowEdge::Target::Assistant
            )
          )
        end
        attr_accessor :target

        # Directed transition from one node to a target, gated by a condition.
        #
        # The target is either another node in the same flow (`NodeTarget`) or a different
        # assistant (`AssistantTarget`). Multiple edges may share a `start_node_id`; the
        # runtime evaluates them in the order they're declared and takes the first whose
        # condition is true.
        sig do
          params(
            id: String,
            condition:
              T.any(
                Telnyx::AI::FlowEdge::Condition::Llm::OrHash,
                Telnyx::AI::FlowEdge::Condition::Expression::OrHash,
                Telnyx::AI::FlowEdge::Condition::Default::OrHash
              ),
            start_node_id: String,
            target:
              T.any(
                Telnyx::AI::FlowEdge::Target::Node::OrHash,
                Telnyx::AI::FlowEdge::Target::Assistant::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Caller-supplied unique identifier for this edge within the flow.
          id:,
          # Condition that gates the transition. Discriminated by `type`: `llm`,
          # `expression`.
          condition:,
          # ID of the node this edge transitions away from.
          start_node_id:,
          # Destination of the transition. Discriminated by `type`: `node` (jump to another
          # node in this flow) or `assistant` (hand off to a different assistant).
          target:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              condition:
                T.any(
                  Telnyx::AI::FlowEdge::Condition::Llm,
                  Telnyx::AI::FlowEdge::Condition::Expression,
                  Telnyx::AI::FlowEdge::Condition::Default
                ),
              start_node_id: String,
              target:
                T.any(
                  Telnyx::AI::FlowEdge::Target::Node,
                  Telnyx::AI::FlowEdge::Target::Assistant
                )
            }
          )
        end
        def to_hash
        end

        # Condition that gates the transition. Discriminated by `type`: `llm`,
        # `expression`.
        module Condition
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::AI::FlowEdge::Condition::Llm,
                Telnyx::AI::FlowEdge::Condition::Expression,
                Telnyx::AI::FlowEdge::Condition::Default
              )
            end

          class Llm < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::FlowEdge::Condition::Llm,
                  Telnyx::Internal::AnyHash
                )
              end

            # Natural-language criterion the LLM judges as true/false.
            sig { returns(String) }
            attr_accessor :prompt

            sig { returns(Symbol) }
            attr_accessor :type

            # Edge condition evaluated by the LLM from a natural-language prompt.
            #
            # The model is asked to judge the prompt against conversation context and returns
            # true/false. Use this for fuzzy intents that aren't expressible as a
            # deterministic expression (e.g. 'user wants to escalate to a human').
            sig do
              params(prompt: String, type: Symbol).returns(T.attached_class)
            end
            def self.new(
              # Natural-language criterion the LLM judges as true/false.
              prompt:,
              type: :llm
            )
            end

            sig { override.returns({ prompt: String, type: Symbol }) }
            def to_hash
            end
          end

          class Expression < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::FlowEdge::Condition::Expression,
                  Telnyx::Internal::AnyHash
                )
              end

            # Root of the expression AST; evaluates to a boolean. Typed as free-form JSON to
            # avoid an uncompilable by-value self-reference; see the Expression schema for the
            # variant structure.
            sig { returns(T.anything) }
            attr_accessor :expression

            sig { returns(Symbol) }
            attr_accessor :type

            # Edge condition evaluated as a deterministic expression AST.
            #
            # The expression is computed against runtime dynamic variables and must evaluate
            # to a boolean. Prefer this over `LLMCondition` when the rule is a clean function
            # of known variables — it's cheaper and predictable.
            sig do
              params(expression: T.anything, type: Symbol).returns(
                T.attached_class
              )
            end
            def self.new(
              # Root of the expression AST; evaluates to a boolean. Typed as free-form JSON to
              # avoid an uncompilable by-value self-reference; see the Expression schema for the
              # variant structure.
              expression:,
              type: :expression
            )
            end

            sig { override.returns({ expression: T.anything, type: Symbol }) }
            def to_hash
            end
          end

          class Default < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::FlowEdge::Condition::Default,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Symbol) }
            attr_accessor :type

            # Fallback edge condition: fires only when no other edge's condition is true.
            #
            # Evaluated after every conditioned (`llm` / `expression`) edge regardless of
            # declaration order, so it routes the flow whenever none of the node's other
            # outgoing edges match. Valid **only** on edges leaving a `tool` or `speak` node,
            # where the deterministic step auto-advances and must always have somewhere to go.
            # A tool/speak node with any outgoing edge is required to carry exactly one
            # `default` edge so it never dead-ends; a tool/speak node with no outgoing edges
            # is a valid terminal step. Carries no parameters.
            sig { params(type: Symbol).returns(T.attached_class) }
            def self.new(type: :default)
            end

            sig { override.returns({ type: Symbol }) }
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[Telnyx::AI::FlowEdge::Condition::Variants]
            )
          end
          def self.variants
          end
        end

        # Destination of the transition. Discriminated by `type`: `node` (jump to another
        # node in this flow) or `assistant` (hand off to a different assistant).
        module Target
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::AI::FlowEdge::Target::Node,
                Telnyx::AI::FlowEdge::Target::Assistant
              )
            end

          class Node < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::FlowEdge::Target::Node,
                  Telnyx::Internal::AnyHash
                )
              end

            # ID of the node this edge transitions into.
            sig { returns(String) }
            attr_accessor :node_id

            sig { returns(Symbol) }
            attr_accessor :type

            # Edge target referencing another node within the same flow.
            #
            # The runtime transitions the active node to `node_id` and continues processing
            # within the current assistant's flow.
            sig do
              params(node_id: String, type: Symbol).returns(T.attached_class)
            end
            def self.new(
              # ID of the node this edge transitions into.
              node_id:,
              type: :node
            )
            end

            sig { override.returns({ node_id: String, type: Symbol }) }
            def to_hash
            end
          end

          class Assistant < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::FlowEdge::Target::Assistant,
                  Telnyx::Internal::AnyHash
                )
              end

            # ID of the assistant the conversation transitions to.
            sig { returns(String) }
            attr_accessor :assistant_id

            sig { returns(Symbol) }
            attr_accessor :type

            # Optional canvas coordinates for rendering the target assistant as a node in
            # authoring UIs. Pure presentation — the runtime ignores it; round-trips so
            # frontends can persist graph layout across reloads. When multiple edges target
            # the same assistant, each edge's `position` is independent (frontends typically
            # use the first non-null one).
            sig { returns(T.nilable(Telnyx::AI::NodePosition)) }
            attr_reader :position

            sig { params(position: Telnyx::AI::NodePosition::OrHash).void }
            attr_writer :position

            # Voice behavior when handing off to the target assistant, mirroring the handoff
            # tool's `voice_mode`. `unified` (default) keeps the current voice across the
            # handoff; `distinct` lets the target assistant speak with its own configured
            # voice. Only applies to assistant targets — node targets override voice via the
            # node's own `voice_settings`.
            sig do
              returns(
                T.nilable(
                  Telnyx::AI::FlowEdge::Target::Assistant::VoiceMode::OrSymbol
                )
              )
            end
            attr_reader :voice_mode

            sig do
              params(
                voice_mode:
                  Telnyx::AI::FlowEdge::Target::Assistant::VoiceMode::OrSymbol
              ).void
            end
            attr_writer :voice_mode

            # Edge target referencing a different assistant.
            #
            # When the edge fires, the conversation hands off to `assistant_id`: the active
            # assistant on the conversation row is rewritten and the new assistant's flow
            # starts at its own `start_node_id`. The current turn's LLM response is delivered
            # to the user as-is; subsequent turns route to the new assistant.
            sig do
              params(
                assistant_id: String,
                position: Telnyx::AI::NodePosition::OrHash,
                voice_mode:
                  Telnyx::AI::FlowEdge::Target::Assistant::VoiceMode::OrSymbol,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # ID of the assistant the conversation transitions to.
              assistant_id:,
              # Optional canvas coordinates for rendering the target assistant as a node in
              # authoring UIs. Pure presentation — the runtime ignores it; round-trips so
              # frontends can persist graph layout across reloads. When multiple edges target
              # the same assistant, each edge's `position` is independent (frontends typically
              # use the first non-null one).
              position: nil,
              # Voice behavior when handing off to the target assistant, mirroring the handoff
              # tool's `voice_mode`. `unified` (default) keeps the current voice across the
              # handoff; `distinct` lets the target assistant speak with its own configured
              # voice. Only applies to assistant targets — node targets override voice via the
              # node's own `voice_settings`.
              voice_mode: nil,
              type: :assistant
            )
            end

            sig do
              override.returns(
                {
                  assistant_id: String,
                  type: Symbol,
                  position: Telnyx::AI::NodePosition,
                  voice_mode:
                    Telnyx::AI::FlowEdge::Target::Assistant::VoiceMode::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Voice behavior when handing off to the target assistant, mirroring the handoff
            # tool's `voice_mode`. `unified` (default) keeps the current voice across the
            # handoff; `distinct` lets the target assistant speak with its own configured
            # voice. Only applies to assistant targets — node targets override voice via the
            # node's own `voice_settings`.
            module VoiceMode
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::FlowEdge::Target::Assistant::VoiceMode
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              UNIFIED =
                T.let(
                  :unified,
                  Telnyx::AI::FlowEdge::Target::Assistant::VoiceMode::TaggedSymbol
                )
              DISTINCT =
                T.let(
                  :distinct,
                  Telnyx::AI::FlowEdge::Target::Assistant::VoiceMode::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::FlowEdge::Target::Assistant::VoiceMode::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(T::Array[Telnyx::AI::FlowEdge::Target::Variants])
          end
          def self.variants
          end
        end
      end
    end
  end
end
