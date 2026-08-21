# typed: strong

module Telnyx
  module Models
    module AI
      class FlowNodeReq < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::FlowNodeReq, Telnyx::Internal::AnyHash)
          end

        # Caller-supplied unique identifier for this node within the flow.
        sig { returns(String) }
        attr_accessor :id

        # Prompt that drives the LLM while this node is active. Required.
        sig { returns(String) }
        attr_accessor :instructions

        # Override for `Assistant.external_llm` while this node is active. Use this to
        # route a node's turns to a different external LLM (different `model`, `base_url`,
        # credentials). Part of the LLM bundle — see `model` for cascade semantics.
        # Mutually exclusive with `model` on the node (a single LLM identity per node).
        sig { returns(T.nilable(Telnyx::AI::ExternalLlmReq)) }
        attr_reader :external_llm

        sig { params(external_llm: Telnyx::AI::ExternalLlmReq::OrHash).void }
        attr_writer :external_llm

        # How `instructions` combine with the assistant-level instructions. `replace`
        # (default): the node's instructions are used alone. `append`: the node's
        # instructions are concatenated after the assistant's instructions.
        sig do
          returns(
            T.nilable(Telnyx::AI::FlowNodeReq::InstructionsMode::OrSymbol)
          )
        end
        attr_reader :instructions_mode

        sig do
          params(
            instructions_mode:
              Telnyx::AI::FlowNodeReq::InstructionsMode::OrSymbol
          ).void
        end
        attr_writer :instructions_mode

        # Override for `Assistant.llm_api_key_ref` while this node is active. Part of the
        # LLM bundle — see `model` for cascade semantics.
        sig { returns(T.nilable(String)) }
        attr_reader :llm_api_key_ref

        sig { params(llm_api_key_ref: String).void }
        attr_writer :llm_api_key_ref

        # Override for `Assistant.model` while this node is active. Part of the LLM bundle
        # (`model` + `llm_api_key_ref` + `external_llm`): when any of the three is set on
        # the node, all three are taken from the node and the assistant-level LLM identity
        # is not consulted. When none of the three is set, the assistant's bundle cascades
        # unchanged.
        sig { returns(T.nilable(String)) }
        attr_reader :model

        sig { params(model: String).void }
        attr_writer :model

        # Optional human-readable label, displayed in authoring UIs.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
        # by the runtime; round-trips so frontends can persist graph layout across
        # reloads.
        sig { returns(T.nilable(Telnyx::AI::NodePosition)) }
        attr_reader :position

        sig { params(position: Telnyx::AI::NodePosition::OrHash).void }
        attr_writer :position

        # IDs of shared (org-level) tools available at this node. Knowledge bases are
        # attached the same way — via a shared retrieval tool. Tools not listed here are
        # not callable while this node is active.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :shared_tool_ids

        sig { params(shared_tool_ids: T::Array[String]).void }
        attr_writer :shared_tool_ids

        # How `shared_tool_ids` combine with the assistant-level tool set. `replace`
        # (default): only the node's tools are callable. `append`: the node's tools are
        # added to the assistant's tools. Ignored when `shared_tool_ids` is null.
        sig { returns(T.nilable(Telnyx::AI::FlowNodeReq::ToolsMode::OrSymbol)) }
        attr_reader :tools_mode

        sig do
          params(tools_mode: Telnyx::AI::FlowNodeReq::ToolsMode::OrSymbol).void
        end
        attr_writer :tools_mode

        # Per-node transcription override (model/language/region). Unset fields cascade
        # from the assistant-level transcription.
        sig { returns(T.nilable(Telnyx::AI::TranscriptionSettings)) }
        attr_reader :transcription

        sig do
          params(transcription: Telnyx::AI::TranscriptionSettings::OrHash).void
        end
        attr_writer :transcription

        # Node kind discriminator. `prompt` (default) is an LLM-driven step; `tool` is a
        # standalone tool execution (see `ToolNodeReq`).
        sig { returns(T.nilable(Telnyx::AI::FlowNodeReq::Type::OrSymbol)) }
        attr_reader :type

        sig { params(type: Telnyx::AI::FlowNodeReq::Type::OrSymbol).void }
        attr_writer :type

        # Per-node voice override. Only fields set here override the assistant-level voice
        # settings; unset fields cascade.
        sig { returns(T.nilable(Telnyx::AI::VoiceSettings)) }
        attr_reader :voice_settings

        sig { params(voice_settings: Telnyx::AI::VoiceSettings::OrHash).void }
        attr_writer :voice_settings

        # One step in a conversation flow, as supplied by API clients.
        #
        # Each node carries the prompt, tool scope, and optional overrides for
        # model/voice/transcription. Unset overrides cascade from the assistant.
        sig do
          params(
            id: String,
            instructions: String,
            external_llm: Telnyx::AI::ExternalLlmReq::OrHash,
            instructions_mode:
              Telnyx::AI::FlowNodeReq::InstructionsMode::OrSymbol,
            llm_api_key_ref: String,
            model: String,
            name: String,
            position: Telnyx::AI::NodePosition::OrHash,
            shared_tool_ids: T::Array[String],
            tools_mode: Telnyx::AI::FlowNodeReq::ToolsMode::OrSymbol,
            transcription: Telnyx::AI::TranscriptionSettings::OrHash,
            type: Telnyx::AI::FlowNodeReq::Type::OrSymbol,
            voice_settings: Telnyx::AI::VoiceSettings::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Caller-supplied unique identifier for this node within the flow.
          id:,
          # Prompt that drives the LLM while this node is active. Required.
          instructions:,
          # Override for `Assistant.external_llm` while this node is active. Use this to
          # route a node's turns to a different external LLM (different `model`, `base_url`,
          # credentials). Part of the LLM bundle — see `model` for cascade semantics.
          # Mutually exclusive with `model` on the node (a single LLM identity per node).
          external_llm: nil,
          # How `instructions` combine with the assistant-level instructions. `replace`
          # (default): the node's instructions are used alone. `append`: the node's
          # instructions are concatenated after the assistant's instructions.
          instructions_mode: nil,
          # Override for `Assistant.llm_api_key_ref` while this node is active. Part of the
          # LLM bundle — see `model` for cascade semantics.
          llm_api_key_ref: nil,
          # Override for `Assistant.model` while this node is active. Part of the LLM bundle
          # (`model` + `llm_api_key_ref` + `external_llm`): when any of the three is set on
          # the node, all three are taken from the node and the assistant-level LLM identity
          # is not consulted. When none of the three is set, the assistant's bundle cascades
          # unchanged.
          model: nil,
          # Optional human-readable label, displayed in authoring UIs.
          name: nil,
          # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
          # by the runtime; round-trips so frontends can persist graph layout across
          # reloads.
          position: nil,
          # IDs of shared (org-level) tools available at this node. Knowledge bases are
          # attached the same way — via a shared retrieval tool. Tools not listed here are
          # not callable while this node is active.
          shared_tool_ids: nil,
          # How `shared_tool_ids` combine with the assistant-level tool set. `replace`
          # (default): only the node's tools are callable. `append`: the node's tools are
          # added to the assistant's tools. Ignored when `shared_tool_ids` is null.
          tools_mode: nil,
          # Per-node transcription override (model/language/region). Unset fields cascade
          # from the assistant-level transcription.
          transcription: nil,
          # Node kind discriminator. `prompt` (default) is an LLM-driven step; `tool` is a
          # standalone tool execution (see `ToolNodeReq`).
          type: nil,
          # Per-node voice override. Only fields set here override the assistant-level voice
          # settings; unset fields cascade.
          voice_settings: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              instructions: String,
              external_llm: Telnyx::AI::ExternalLlmReq,
              instructions_mode:
                Telnyx::AI::FlowNodeReq::InstructionsMode::OrSymbol,
              llm_api_key_ref: String,
              model: String,
              name: String,
              position: Telnyx::AI::NodePosition,
              shared_tool_ids: T::Array[String],
              tools_mode: Telnyx::AI::FlowNodeReq::ToolsMode::OrSymbol,
              transcription: Telnyx::AI::TranscriptionSettings,
              type: Telnyx::AI::FlowNodeReq::Type::OrSymbol,
              voice_settings: Telnyx::AI::VoiceSettings
            }
          )
        end
        def to_hash
        end

        # How `instructions` combine with the assistant-level instructions. `replace`
        # (default): the node's instructions are used alone. `append`: the node's
        # instructions are concatenated after the assistant's instructions.
        module InstructionsMode
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::FlowNodeReq::InstructionsMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REPLACE =
            T.let(
              :replace,
              Telnyx::AI::FlowNodeReq::InstructionsMode::TaggedSymbol
            )
          APPEND =
            T.let(
              :append,
              Telnyx::AI::FlowNodeReq::InstructionsMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::AI::FlowNodeReq::InstructionsMode::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # How `shared_tool_ids` combine with the assistant-level tool set. `replace`
        # (default): only the node's tools are callable. `append`: the node's tools are
        # added to the assistant's tools. Ignored when `shared_tool_ids` is null.
        module ToolsMode
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::FlowNodeReq::ToolsMode) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REPLACE =
            T.let(:replace, Telnyx::AI::FlowNodeReq::ToolsMode::TaggedSymbol)
          APPEND =
            T.let(:append, Telnyx::AI::FlowNodeReq::ToolsMode::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::FlowNodeReq::ToolsMode::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Node kind discriminator. `prompt` (default) is an LLM-driven step; `tool` is a
        # standalone tool execution (see `ToolNodeReq`).
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::FlowNodeReq::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROMPT = T.let(:prompt, Telnyx::AI::FlowNodeReq::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::FlowNodeReq::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
