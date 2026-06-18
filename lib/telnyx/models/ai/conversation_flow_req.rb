# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class ConversationFlowReq < Telnyx::Internal::Type::BaseModel
        # @!attribute nodes
        #   All nodes in the flow. Must contain `start_node_id`. Each node is a prompt node
        #   (`type: prompt`) or a tool node (`type: tool`).
        #
        #   @return [Array<Telnyx::Models::AI::ConversationFlowReq::Node::Prompt, Telnyx::Models::AI::ConversationFlowReq::Node::Tool, Telnyx::Models::AI::ConversationFlowReq::Node::Speak>]
        required :nodes, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::ConversationFlowReq::Node] }

        # @!attribute start_node_id
        #   ID of the node where the conversation begins.
        #
        #   @return [String]
        required :start_node_id, String

        # @!attribute edges
        #   Directed transitions between nodes. May be empty for a single-node flow.
        #
        #   @return [Array<Telnyx::Models::AI::FlowEdge>, nil]
        optional :edges, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::FlowEdge] }

        # @!method initialize(nodes:, start_node_id:, edges: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::ConversationFlowReq} for more details.
        #
        #   Conversation flow as supplied by API clients (create / update).
        #
        #   A directed graph of `FlowNodeReq` connected by `FlowEdge`s. Validation enforces
        #   unique node/edge IDs, that `start_node_id` references a real node, and that
        #   every edge's endpoints reference real nodes.
        #
        #   @param nodes [Array<Telnyx::Models::AI::ConversationFlowReq::Node::Prompt, Telnyx::Models::AI::ConversationFlowReq::Node::Tool, Telnyx::Models::AI::ConversationFlowReq::Node::Speak>] All nodes in the flow. Must contain `start_node_id`. Each node is a prompt node
        #
        #   @param start_node_id [String] ID of the node where the conversation begins.
        #
        #   @param edges [Array<Telnyx::Models::AI::FlowEdge>] Directed transitions between nodes. May be empty for a single-node flow.

        # One step in a conversation flow, as supplied by API clients.
        #
        # Each node carries the prompt, tool scope, and optional overrides for
        # model/voice/transcription. Unset overrides cascade from the assistant.
        module Node
          extend Telnyx::Internal::Type::Union

          discriminator :type

          # One step in a conversation flow, as supplied by API clients.
          #
          # Each node carries the prompt, tool scope, and optional overrides for
          # model/voice/transcription. Unset overrides cascade from the assistant.
          variant :prompt, -> { Telnyx::AI::ConversationFlowReq::Node::Prompt }

          # A standalone tool step in a conversation flow, as supplied by clients.
          #
          # Unlike a prompt node, a tool node has no instructions or model — it
          # isn't an LLM turn. Reaching it deterministically runs one shared tool
          # (arguments filled from matching dynamic variables by name), then routes
          # on the result via outgoing `tool_result` edges.
          variant :tool, -> { Telnyx::AI::ConversationFlowReq::Node::Tool }

          # A standalone scripted-message step in a flow, as supplied by clients.
          #
          # Unlike a prompt node, a speak node has no instructions or model — it isn't
          # an LLM turn. Reaching it delivers `message` to the user verbatim (with
          # `{{variable}}` interpolation), then routes via outgoing `llm` /
          # `expression` edges.
          variant :speak, -> { Telnyx::AI::ConversationFlowReq::Node::Speak }

          class Prompt < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   Caller-supplied unique identifier for this node within the flow.
            #
            #   @return [String]
            required :id, String

            # @!attribute instructions
            #   Prompt that drives the LLM while this node is active. Required.
            #
            #   @return [String]
            required :instructions, String

            # @!attribute external_llm
            #   Override for `Assistant.external_llm` while this node is active. Use this to
            #   route a node's turns to a different external LLM (different `model`, `base_url`,
            #   credentials). Part of the LLM bundle — see `model` for cascade semantics.
            #   Mutually exclusive with `model` on the node (a single LLM identity per node).
            #
            #   @return [Telnyx::Models::AI::ExternalLlmReq, nil]
            optional :external_llm, -> { Telnyx::AI::ExternalLlmReq }

            # @!attribute instructions_mode
            #   How `instructions` combine with the assistant-level instructions. `replace`
            #   (default): the node's instructions are used alone. `append`: the node's
            #   instructions are concatenated after the assistant's instructions.
            #
            #   @return [Symbol, Telnyx::Models::AI::ConversationFlowReq::Node::Prompt::InstructionsMode, nil]
            optional :instructions_mode, enum: -> { Telnyx::AI::ConversationFlowReq::Node::Prompt::InstructionsMode }

            # @!attribute llm_api_key_ref
            #   Override for `Assistant.llm_api_key_ref` while this node is active. Part of the
            #   LLM bundle — see `model` for cascade semantics.
            #
            #   @return [String, nil]
            optional :llm_api_key_ref, String

            # @!attribute model
            #   Override for `Assistant.model` while this node is active. Part of the LLM bundle
            #   (`model` + `llm_api_key_ref` + `external_llm`): when any of the three is set on
            #   the node, all three are taken from the node and the assistant-level LLM identity
            #   is not consulted. When none of the three is set, the assistant's bundle cascades
            #   unchanged.
            #
            #   @return [String, nil]
            optional :model, String

            # @!attribute name
            #   Optional human-readable label, displayed in authoring UIs.
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute position
            #   Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
            #   by the runtime; round-trips so frontends can persist graph layout across
            #   reloads.
            #
            #   @return [Telnyx::Models::AI::NodePosition, nil]
            optional :position, -> { Telnyx::AI::NodePosition }

            # @!attribute shared_tool_ids
            #   IDs of shared (org-level) tools available at this node. Knowledge bases are
            #   attached the same way — via a shared retrieval tool. Tools not listed here are
            #   not callable while this node is active.
            #
            #   @return [Array<String>, nil]
            optional :shared_tool_ids, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute tools_mode
            #   How `shared_tool_ids` combine with the assistant-level tool set. `replace`
            #   (default): only the node's tools are callable. `append`: the node's tools are
            #   added to the assistant's tools. Ignored when `shared_tool_ids` is null.
            #
            #   @return [Symbol, Telnyx::Models::AI::ConversationFlowReq::Node::Prompt::ToolsMode, nil]
            optional :tools_mode, enum: -> { Telnyx::AI::ConversationFlowReq::Node::Prompt::ToolsMode }

            # @!attribute transcription
            #   Per-node transcription override (model/language/region). Unset fields cascade
            #   from the assistant-level transcription.
            #
            #   @return [Telnyx::Models::AI::TranscriptionSettings, nil]
            optional :transcription, -> { Telnyx::AI::TranscriptionSettings }

            # @!attribute type
            #   Node kind discriminator. `prompt` (default) is an LLM-driven step; `tool` is a
            #   standalone tool execution (see `ToolNodeReq`).
            #
            #   @return [Symbol, Telnyx::Models::AI::ConversationFlowReq::Node::Prompt::Type, nil]
            optional :type, enum: -> { Telnyx::AI::ConversationFlowReq::Node::Prompt::Type }

            # @!attribute voice_settings
            #   Per-node voice override. Only fields set here override the assistant-level voice
            #   settings; unset fields cascade.
            #
            #   @return [Telnyx::Models::AI::VoiceSettings, nil]
            optional :voice_settings, -> { Telnyx::AI::VoiceSettings }

            # @!method initialize(id:, instructions:, external_llm: nil, instructions_mode: nil, llm_api_key_ref: nil, model: nil, name: nil, position: nil, shared_tool_ids: nil, tools_mode: nil, transcription: nil, type: nil, voice_settings: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::ConversationFlowReq::Node::Prompt} for more details.
            #
            #   One step in a conversation flow, as supplied by API clients.
            #
            #   Each node carries the prompt, tool scope, and optional overrides for
            #   model/voice/transcription. Unset overrides cascade from the assistant.
            #
            #   @param id [String] Caller-supplied unique identifier for this node within the flow.
            #
            #   @param instructions [String] Prompt that drives the LLM while this node is active. Required.
            #
            #   @param external_llm [Telnyx::Models::AI::ExternalLlmReq] Override for `Assistant.external_llm` while this node is active. Use this to rou
            #
            #   @param instructions_mode [Symbol, Telnyx::Models::AI::ConversationFlowReq::Node::Prompt::InstructionsMode] How `instructions` combine with the assistant-level instructions. `replace` (def
            #
            #   @param llm_api_key_ref [String] Override for `Assistant.llm_api_key_ref` while this node is active. Part of the
            #
            #   @param model [String] Override for `Assistant.model` while this node is active. Part of the LLM bundle
            #
            #   @param name [String] Optional human-readable label, displayed in authoring UIs.
            #
            #   @param position [Telnyx::Models::AI::NodePosition] Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
            #
            #   @param shared_tool_ids [Array<String>] IDs of shared (org-level) tools available at this node. Knowledge bases are atta
            #
            #   @param tools_mode [Symbol, Telnyx::Models::AI::ConversationFlowReq::Node::Prompt::ToolsMode] How `shared_tool_ids` combine with the assistant-level tool set. `replace` (defa
            #
            #   @param transcription [Telnyx::Models::AI::TranscriptionSettings] Per-node transcription override (model/language/region). Unset fields cascade fr
            #
            #   @param type [Symbol, Telnyx::Models::AI::ConversationFlowReq::Node::Prompt::Type] Node kind discriminator. `prompt` (default) is an LLM-driven step; `tool` is a s
            #
            #   @param voice_settings [Telnyx::Models::AI::VoiceSettings] Per-node voice override. Only fields set here override the assistant-level voice

            # How `instructions` combine with the assistant-level instructions. `replace`
            # (default): the node's instructions are used alone. `append`: the node's
            # instructions are concatenated after the assistant's instructions.
            #
            # @see Telnyx::Models::AI::ConversationFlowReq::Node::Prompt#instructions_mode
            module InstructionsMode
              extend Telnyx::Internal::Type::Enum

              REPLACE = :replace
              APPEND = :append

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # How `shared_tool_ids` combine with the assistant-level tool set. `replace`
            # (default): only the node's tools are callable. `append`: the node's tools are
            # added to the assistant's tools. Ignored when `shared_tool_ids` is null.
            #
            # @see Telnyx::Models::AI::ConversationFlowReq::Node::Prompt#tools_mode
            module ToolsMode
              extend Telnyx::Internal::Type::Enum

              REPLACE = :replace
              APPEND = :append

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Node kind discriminator. `prompt` (default) is an LLM-driven step; `tool` is a
            # standalone tool execution (see `ToolNodeReq`).
            #
            # @see Telnyx::Models::AI::ConversationFlowReq::Node::Prompt#type
            module Type
              extend Telnyx::Internal::Type::Enum

              PROMPT = :prompt

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Tool < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   Caller-supplied unique identifier for this node within the flow.
            #
            #   @return [String]
            required :id, String

            # @!attribute shared_tool_id
            #   ID of the single shared (org-level) tool this node executes. When the flow
            #   reaches this node the tool runs as a deliberate step (no LLM turn); its outgoing
            #   `tool_result` edges then route on the outcome. Arguments are filled from the
            #   conversation's dynamic variables by name — a dynamic variable whose name matches
            #   one of the tool's parameters supplies that argument. Cross-validated against the
            #   org's shared tools on write.
            #
            #   @return [String]
            required :shared_tool_id, String

            # @!attribute name
            #   Optional human-readable label, displayed in authoring UIs.
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute position
            #   Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
            #   by the runtime; round-trips so frontends can persist graph layout across
            #   reloads.
            #
            #   @return [Telnyx::Models::AI::NodePosition, nil]
            optional :position, -> { Telnyx::AI::NodePosition }

            # @!attribute type
            #   Node kind discriminator. Always `tool` for a tool node.
            #
            #   @return [Symbol, Telnyx::Models::AI::ConversationFlowReq::Node::Tool::Type, nil]
            optional :type, enum: -> { Telnyx::AI::ConversationFlowReq::Node::Tool::Type }

            # @!method initialize(id:, shared_tool_id:, name: nil, position: nil, type: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::ConversationFlowReq::Node::Tool} for more details.
            #
            #   A standalone tool step in a conversation flow, as supplied by clients.
            #
            #   Unlike a prompt node, a tool node has no instructions or model — it isn't an LLM
            #   turn. Reaching it deterministically runs one shared tool (arguments filled from
            #   matching dynamic variables by name), then routes on the result via outgoing
            #   `tool_result` edges.
            #
            #   @param id [String] Caller-supplied unique identifier for this node within the flow.
            #
            #   @param shared_tool_id [String] ID of the single shared (org-level) tool this node executes. When the flow reach
            #
            #   @param name [String] Optional human-readable label, displayed in authoring UIs.
            #
            #   @param position [Telnyx::Models::AI::NodePosition] Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
            #
            #   @param type [Symbol, Telnyx::Models::AI::ConversationFlowReq::Node::Tool::Type] Node kind discriminator. Always `tool` for a tool node.

            # Node kind discriminator. Always `tool` for a tool node.
            #
            # @see Telnyx::Models::AI::ConversationFlowReq::Node::Tool#type
            module Type
              extend Telnyx::Internal::Type::Enum

              TOOL = :tool

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Speak < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   Caller-supplied unique identifier for this node within the flow.
            #
            #   @return [String]
            required :id, String

            # @!attribute message
            #   Message delivered to the user verbatim when the flow reaches this node. No LLM
            #   turn — the text is spoken/sent exactly as written. `{{variable}}` placeholders
            #   are interpolated from the conversation's dynamic variables; an unresolved
            #   placeholder renders as an empty string. After delivering, the flow routes via
            #   the node's outgoing `llm` / `expression` edges (commonly a single unconditional
            #   edge).
            #
            #   @return [String]
            required :message, String

            # @!attribute name
            #   Optional human-readable label, displayed in authoring UIs.
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute position
            #   Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
            #   by the runtime; round-trips so frontends can persist graph layout across
            #   reloads.
            #
            #   @return [Telnyx::Models::AI::NodePosition, nil]
            optional :position, -> { Telnyx::AI::NodePosition }

            # @!attribute type
            #   Node kind discriminator. Always `speak` for a speak node.
            #
            #   @return [Symbol, Telnyx::Models::AI::ConversationFlowReq::Node::Speak::Type, nil]
            optional :type, enum: -> { Telnyx::AI::ConversationFlowReq::Node::Speak::Type }

            # @!method initialize(id:, message:, name: nil, position: nil, type: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::ConversationFlowReq::Node::Speak} for more details.
            #
            #   A standalone scripted-message step in a flow, as supplied by clients.
            #
            #   Unlike a prompt node, a speak node has no instructions or model — it isn't an
            #   LLM turn. Reaching it delivers `message` to the user verbatim (with
            #   `{{variable}}` interpolation), then routes via outgoing `llm` / `expression`
            #   edges.
            #
            #   @param id [String] Caller-supplied unique identifier for this node within the flow.
            #
            #   @param message [String] Message delivered to the user verbatim when the flow reaches this node. No LLM t
            #
            #   @param name [String] Optional human-readable label, displayed in authoring UIs.
            #
            #   @param position [Telnyx::Models::AI::NodePosition] Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
            #
            #   @param type [Symbol, Telnyx::Models::AI::ConversationFlowReq::Node::Speak::Type] Node kind discriminator. Always `speak` for a speak node.

            # Node kind discriminator. Always `speak` for a speak node.
            #
            # @see Telnyx::Models::AI::ConversationFlowReq::Node::Speak#type
            module Type
              extend Telnyx::Internal::Type::Enum

              SPEAK = :speak

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::AI::ConversationFlowReq::Node::Prompt, Telnyx::Models::AI::ConversationFlowReq::Node::Tool, Telnyx::Models::AI::ConversationFlowReq::Node::Speak)]
        end
      end
    end
  end
end
