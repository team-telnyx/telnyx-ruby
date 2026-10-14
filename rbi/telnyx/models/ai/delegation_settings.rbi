# typed: strong

module Telnyx
  module Models
    module AI
      class DelegationSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::DelegationSettings, Telnyx::Internal::AnyHash)
          end

        # Whether the assistant delegates work to a backend model. Defaults to `true`: a
        # GPT-Live assistant with delegation disabled can hold a conversation but can
        # never look anything up or run a tool.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enabled

        sig { params(enabled: T::Boolean).void }
        attr_writer :enabled

        # Run the backend on your own OpenAI-compatible endpoint instead of a
        # Telnyx-hosted model. As above, a raw `api_key` here is rejected — reference an
        # integration secret with `external_llm.llm_api_key_ref` instead.
        sig { returns(T.nilable(Telnyx::AI::ExternalLlm)) }
        attr_reader :external_llm

        sig { params(external_llm: Telnyx::AI::ExternalLlm::OrHash).void }
        attr_writer :external_llm

        # Extra instructions for the backend model, in addition to the assistant's own.
        # Use this for the business rules the backend needs and the talking model does
        # not.
        sig { returns(T.nilable(String)) }
        attr_reader :instructions

        sig { params(instructions: String).void }
        attr_writer :instructions

        # Integration secret identifier for the backend model's API key. Required for
        # models from providers other than Telnyx, OpenAI and Anthropic. A raw `api_key`
        # is rejected rather than ignored, so that no plaintext credential is stored on
        # the assistant.
        sig { returns(T.nilable(String)) }
        attr_reader :llm_api_key_ref

        sig { params(llm_api_key_ref: String).void }
        attr_writer :llm_api_key_ref

        # Who answers a delegation. `telnyx` runs the backend model on Telnyx with the
        # assistant's own tools, MCP servers and observability. `client` relays the
        # delegation to a server you host over the WebSocket configured in
        # `websocket_settings`: Telnyx sends a `session.delegation.created` frame and
        # waits for your `session.delegation.completed` answer. That answer is text only,
        # since the socket offers no tool vocabulary. If no socket is connected the
        # delegation is refused and the assistant tells the caller it cannot look things
        # up right now. Defaults to `telnyx`.
        sig do
          returns(T.nilable(Telnyx::AI::DelegationSettings::Mode::OrSymbol))
        end
        attr_reader :mode

        sig do
          params(mode: Telnyx::AI::DelegationSettings::Mode::OrSymbol).void
        end
        attr_writer :mode

        # The backend model that answers delegations. Must be a model available for AI
        # Assistants. When enabling `telnyx` delegation, explicitly set this field or
        # `external_llm.model`; a configuration without either backend model is rejected.
        # Only applies when `mode` is `telnyx`.
        sig { returns(T.nilable(String)) }
        attr_reader :model

        sig { params(model: String).void }
        attr_writer :model

        # Whether the backend's answer is spoken to the caller. When `true` the result is
        # appended as commentary and paraphrased aloud; when `false` it is kept as silent
        # context that informs later answers without being read out. Defaults to `true`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :speak_results

        sig { params(speak_results: T::Boolean).void }
        attr_writer :speak_results

        # Splits the conversation between a frontend model that talks to the caller and a
        # backend model that does the work. On the GPT-Live route the frontend model
        # cannot call tools at all — when it needs something done it raises a delegation
        # and waits. On the chat completion route the frontend keeps a single `delegate`
        # tool that returns immediately, so the conversation carries on while the backend
        # works. Either way the backend's answer is spoken as commentary or kept as silent
        # context, depending on `speak_results`. Beta feature.
        sig do
          params(
            enabled: T::Boolean,
            external_llm: Telnyx::AI::ExternalLlm::OrHash,
            instructions: String,
            llm_api_key_ref: String,
            mode: Telnyx::AI::DelegationSettings::Mode::OrSymbol,
            model: String,
            speak_results: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether the assistant delegates work to a backend model. Defaults to `true`: a
          # GPT-Live assistant with delegation disabled can hold a conversation but can
          # never look anything up or run a tool.
          enabled: nil,
          # Run the backend on your own OpenAI-compatible endpoint instead of a
          # Telnyx-hosted model. As above, a raw `api_key` here is rejected — reference an
          # integration secret with `external_llm.llm_api_key_ref` instead.
          external_llm: nil,
          # Extra instructions for the backend model, in addition to the assistant's own.
          # Use this for the business rules the backend needs and the talking model does
          # not.
          instructions: nil,
          # Integration secret identifier for the backend model's API key. Required for
          # models from providers other than Telnyx, OpenAI and Anthropic. A raw `api_key`
          # is rejected rather than ignored, so that no plaintext credential is stored on
          # the assistant.
          llm_api_key_ref: nil,
          # Who answers a delegation. `telnyx` runs the backend model on Telnyx with the
          # assistant's own tools, MCP servers and observability. `client` relays the
          # delegation to a server you host over the WebSocket configured in
          # `websocket_settings`: Telnyx sends a `session.delegation.created` frame and
          # waits for your `session.delegation.completed` answer. That answer is text only,
          # since the socket offers no tool vocabulary. If no socket is connected the
          # delegation is refused and the assistant tells the caller it cannot look things
          # up right now. Defaults to `telnyx`.
          mode: nil,
          # The backend model that answers delegations. Must be a model available for AI
          # Assistants. When enabling `telnyx` delegation, explicitly set this field or
          # `external_llm.model`; a configuration without either backend model is rejected.
          # Only applies when `mode` is `telnyx`.
          model: nil,
          # Whether the backend's answer is spoken to the caller. When `true` the result is
          # appended as commentary and paraphrased aloud; when `false` it is kept as silent
          # context that informs later answers without being read out. Defaults to `true`.
          speak_results: nil
        )
        end

        sig do
          override.returns(
            {
              enabled: T::Boolean,
              external_llm: Telnyx::AI::ExternalLlm,
              instructions: String,
              llm_api_key_ref: String,
              mode: Telnyx::AI::DelegationSettings::Mode::OrSymbol,
              model: String,
              speak_results: T::Boolean
            }
          )
        end
        def to_hash
        end

        # Who answers a delegation. `telnyx` runs the backend model on Telnyx with the
        # assistant's own tools, MCP servers and observability. `client` relays the
        # delegation to a server you host over the WebSocket configured in
        # `websocket_settings`: Telnyx sends a `session.delegation.created` frame and
        # waits for your `session.delegation.completed` answer. That answer is text only,
        # since the socket offers no tool vocabulary. If no socket is connected the
        # delegation is refused and the assistant tells the caller it cannot look things
        # up right now. Defaults to `telnyx`.
        module Mode
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::DelegationSettings::Mode) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TELNYX =
            T.let(:telnyx, Telnyx::AI::DelegationSettings::Mode::TaggedSymbol)
          CLIENT =
            T.let(:client, Telnyx::AI::DelegationSettings::Mode::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::DelegationSettings::Mode::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
