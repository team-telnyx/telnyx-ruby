# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class FlowNode < Telnyx::Internal::Type::BaseModel
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
        #   @return [Telnyx::Models::AI::ExternalLlm, nil]
        optional :external_llm, -> { Telnyx::AI::ExternalLlm }

        # @!attribute instructions_mode
        #   How `instructions` combine with the assistant-level instructions. `replace`
        #   (default): the node's instructions are used alone. `append`: the node's
        #   instructions are concatenated after the assistant's instructions.
        #
        #   @return [Symbol, Telnyx::Models::AI::FlowNode::InstructionsMode, nil]
        optional :instructions_mode, enum: -> { Telnyx::AI::FlowNode::InstructionsMode }

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

        # @!attribute tools
        #   Full tool definitions for this node, resolved from `shared_tool_ids`
        #   server-side. Populated on responses so clients can render the flow without a
        #   follow-up fetch per shared tool. Ignored on input — set `shared_tool_ids` to
        #   configure a node's tools.
        #
        #   @return [Array<Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams, Telnyx::Models::AI::AssistantTool::ClientSideTool, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::Handoff, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::AssistantTool::Transfer, Telnyx::Models::AI::AssistantTool::Invite, Telnyx::Models::AI::AssistantTool::Refer, Telnyx::Models::AI::AssistantTool::SendDtmf, Telnyx::Models::AI::AssistantTool::SendMessage, Telnyx::Models::AI::AssistantTool::SkipTurn, Telnyx::Models::AI::AssistantTool::Pay, Telnyx::Models::AI::AssistantTool::UpdateDynamicVariables>>, nil]
        optional :tools,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::AssistantTool]] }

        # @!attribute tools_mode
        #   How `shared_tool_ids` combine with the assistant-level tool set. `replace`
        #   (default): only the node's tools are callable. `append`: the node's tools are
        #   added to the assistant's tools. Ignored when `shared_tool_ids` is null.
        #
        #   @return [Symbol, Telnyx::Models::AI::FlowNode::ToolsMode, nil]
        optional :tools_mode, enum: -> { Telnyx::AI::FlowNode::ToolsMode }

        # @!attribute transcription
        #   Per-node transcription override (response form).
        #
        #   @return [Telnyx::Models::AI::TranscriptionSettings, nil]
        optional :transcription, -> { Telnyx::AI::TranscriptionSettings }

        # @!attribute type
        #   Node kind discriminator. `prompt` is an LLM-driven step.
        #
        #   @return [Symbol, Telnyx::Models::AI::FlowNode::Type, nil]
        optional :type, enum: -> { Telnyx::AI::FlowNode::Type }

        # @!attribute voice_settings
        #   Per-node voice override (response form).
        #
        #   @return [Telnyx::Models::AI::VoiceSettings, nil]
        optional :voice_settings, -> { Telnyx::AI::VoiceSettings }

        # @!method initialize(id:, instructions:, external_llm: nil, instructions_mode: nil, llm_api_key_ref: nil, model: nil, name: nil, position: nil, shared_tool_ids: nil, tools: nil, tools_mode: nil, transcription: nil, type: nil, voice_settings: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::FlowNode} for more details.
        #
        #   One step in a conversation flow, as returned by the API.
        #
        #   @param id [String] Caller-supplied unique identifier for this node within the flow.
        #
        #   @param instructions [String] Prompt that drives the LLM while this node is active. Required.
        #
        #   @param external_llm [Telnyx::Models::AI::ExternalLlm] Override for `Assistant.external_llm` while this node is active. Use this to rou
        #
        #   @param instructions_mode [Symbol, Telnyx::Models::AI::FlowNode::InstructionsMode] How `instructions` combine with the assistant-level instructions. `replace` (def
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
        #   @param tools [Array<Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams, Telnyx::Models::AI::AssistantTool::ClientSideTool, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::Handoff, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::AssistantTool::Transfer, Telnyx::Models::AI::AssistantTool::Invite, Telnyx::Models::AI::AssistantTool::Refer, Telnyx::Models::AI::AssistantTool::SendDtmf, Telnyx::Models::AI::AssistantTool::SendMessage, Telnyx::Models::AI::AssistantTool::SkipTurn, Telnyx::Models::AI::AssistantTool::Pay, Telnyx::Models::AI::AssistantTool::UpdateDynamicVariables>>] Full tool definitions for this node, resolved from `shared_tool_ids` server-side
        #
        #   @param tools_mode [Symbol, Telnyx::Models::AI::FlowNode::ToolsMode] How `shared_tool_ids` combine with the assistant-level tool set. `replace` (defa
        #
        #   @param transcription [Telnyx::Models::AI::TranscriptionSettings] Per-node transcription override (response form).
        #
        #   @param type [Symbol, Telnyx::Models::AI::FlowNode::Type] Node kind discriminator. `prompt` is an LLM-driven step.
        #
        #   @param voice_settings [Telnyx::Models::AI::VoiceSettings] Per-node voice override (response form).

        # How `instructions` combine with the assistant-level instructions. `replace`
        # (default): the node's instructions are used alone. `append`: the node's
        # instructions are concatenated after the assistant's instructions.
        #
        # @see Telnyx::Models::AI::FlowNode#instructions_mode
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
        # @see Telnyx::Models::AI::FlowNode#tools_mode
        module ToolsMode
          extend Telnyx::Internal::Type::Enum

          REPLACE = :replace
          APPEND = :append

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Node kind discriminator. `prompt` is an LLM-driven step.
        #
        # @see Telnyx::Models::AI::FlowNode#type
        module Type
          extend Telnyx::Internal::Type::Enum

          PROMPT = :prompt

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
