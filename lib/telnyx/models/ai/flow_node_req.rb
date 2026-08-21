# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class FlowNodeReq < Telnyx::Internal::Type::BaseModel
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
        #   @return [Symbol, Telnyx::Models::AI::FlowNodeReq::InstructionsMode, nil]
        optional :instructions_mode, enum: -> { Telnyx::AI::FlowNodeReq::InstructionsMode }

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
        #   @return [Symbol, Telnyx::Models::AI::FlowNodeReq::ToolsMode, nil]
        optional :tools_mode, enum: -> { Telnyx::AI::FlowNodeReq::ToolsMode }

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
        #   @return [Symbol, Telnyx::Models::AI::FlowNodeReq::Type, nil]
        optional :type, enum: -> { Telnyx::AI::FlowNodeReq::Type }

        # @!attribute voice_settings
        #   Per-node voice override. Only fields set here override the assistant-level voice
        #   settings; unset fields cascade.
        #
        #   @return [Telnyx::Models::AI::VoiceSettings, nil]
        optional :voice_settings, -> { Telnyx::AI::VoiceSettings }

        # @!method initialize(id:, instructions:, external_llm: nil, instructions_mode: nil, llm_api_key_ref: nil, model: nil, name: nil, position: nil, shared_tool_ids: nil, tools_mode: nil, transcription: nil, type: nil, voice_settings: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::FlowNodeReq} for more details.
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
        #   @param instructions_mode [Symbol, Telnyx::Models::AI::FlowNodeReq::InstructionsMode] How `instructions` combine with the assistant-level instructions. `replace` (def
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
        #   @param tools_mode [Symbol, Telnyx::Models::AI::FlowNodeReq::ToolsMode] How `shared_tool_ids` combine with the assistant-level tool set. `replace` (defa
        #
        #   @param transcription [Telnyx::Models::AI::TranscriptionSettings] Per-node transcription override (model/language/region). Unset fields cascade fr
        #
        #   @param type [Symbol, Telnyx::Models::AI::FlowNodeReq::Type] Node kind discriminator. `prompt` (default) is an LLM-driven step; `tool` is a s
        #
        #   @param voice_settings [Telnyx::Models::AI::VoiceSettings] Per-node voice override. Only fields set here override the assistant-level voice

        # How `instructions` combine with the assistant-level instructions. `replace`
        # (default): the node's instructions are used alone. `append`: the node's
        # instructions are concatenated after the assistant's instructions.
        #
        # @see Telnyx::Models::AI::FlowNodeReq#instructions_mode
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
        # @see Telnyx::Models::AI::FlowNodeReq#tools_mode
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
        # @see Telnyx::Models::AI::FlowNodeReq#type
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
