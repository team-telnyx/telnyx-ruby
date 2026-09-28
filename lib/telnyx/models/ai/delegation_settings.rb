# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class DelegationSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute enabled
        #   Whether the assistant delegates work to a backend model. Defaults to `true`: a
        #   GPT-Live assistant with delegation disabled can hold a conversation but can
        #   never look anything up or run a tool.
        #
        #   @return [Boolean, nil]
        optional :enabled, Telnyx::Internal::Type::Boolean

        # @!attribute external_llm
        #   Run the backend on your own OpenAI-compatible endpoint instead of a
        #   Telnyx-hosted model. As above, a raw `api_key` here is rejected — reference an
        #   integration secret with `external_llm.llm_api_key_ref` instead.
        #
        #   @return [Telnyx::Models::AI::ExternalLlm, nil]
        optional :external_llm, -> { Telnyx::AI::ExternalLlm }

        # @!attribute instructions
        #   Extra instructions for the backend model, in addition to the assistant's own.
        #   Use this for the business rules the backend needs and the talking model does
        #   not.
        #
        #   @return [String, nil]
        optional :instructions, String

        # @!attribute llm_api_key_ref
        #   Integration secret identifier for the backend model's API key. Required for
        #   models from providers other than Telnyx, OpenAI and Anthropic. A raw `api_key`
        #   is rejected rather than ignored, so that no plaintext credential is stored on
        #   the assistant.
        #
        #   @return [String, nil]
        optional :llm_api_key_ref, String

        # @!attribute mode
        #   Who answers a delegation. `telnyx` runs the backend model on Telnyx with the
        #   assistant's own tools, MCP servers and observability. `client` relays the
        #   delegation to a server you host over the WebSocket configured in
        #   `websocket_settings`: Telnyx sends a `session.delegation.created` frame and
        #   waits for your `session.delegation.completed` answer. That answer is text only,
        #   since the socket offers no tool vocabulary. If no socket is connected the
        #   delegation is refused and the assistant tells the caller it cannot look things
        #   up right now. Defaults to `telnyx`.
        #
        #   @return [Symbol, Telnyx::Models::AI::DelegationSettings::Mode, nil]
        optional :mode, enum: -> { Telnyx::AI::DelegationSettings::Mode }

        # @!attribute model
        #   The backend model that answers delegations. Must be a model available for AI
        #   Assistants. Leave unset to use the platform default backend model. Only applies
        #   when `mode` is `telnyx`.
        #
        #   @return [String, nil]
        optional :model, String

        # @!attribute speak_results
        #   Whether the backend's answer is spoken to the caller. When `true` the result is
        #   appended as commentary and paraphrased aloud; when `false` it is kept as silent
        #   context that informs later answers without being read out. Defaults to `true`.
        #
        #   @return [Boolean, nil]
        optional :speak_results, Telnyx::Internal::Type::Boolean

        # @!method initialize(enabled: nil, external_llm: nil, instructions: nil, llm_api_key_ref: nil, mode: nil, model: nil, speak_results: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::DelegationSettings} for more details.
        #
        #   Splits the conversation between a frontend model that talks to the caller and a
        #   backend model that does the work. On the GPT-Live route the frontend model
        #   cannot call tools at all — when it needs something done it raises a delegation
        #   and waits. On the chat completion route the frontend keeps a single `delegate`
        #   tool that returns immediately, so the conversation carries on while the backend
        #   works. Either way the backend's answer is spoken as commentary or kept as silent
        #   context, depending on `speak_results`. Beta feature.
        #
        #   @param enabled [Boolean] Whether the assistant delegates work to a backend model. Defaults to `true`: a G
        #
        #   @param external_llm [Telnyx::Models::AI::ExternalLlm] Run the backend on your own OpenAI-compatible endpoint instead of a Telnyx-hoste
        #
        #   @param instructions [String] Extra instructions for the backend model, in addition to the assistant's own. Us
        #
        #   @param llm_api_key_ref [String] Integration secret identifier for the backend model's API key. Required for mode
        #
        #   @param mode [Symbol, Telnyx::Models::AI::DelegationSettings::Mode] Who answers a delegation. `telnyx` runs the backend model on Telnyx with the ass
        #
        #   @param model [String] The backend model that answers delegations. Must be a model available for AI Ass
        #
        #   @param speak_results [Boolean] Whether the backend's answer is spoken to the caller. When `true` the result is

        # Who answers a delegation. `telnyx` runs the backend model on Telnyx with the
        # assistant's own tools, MCP servers and observability. `client` relays the
        # delegation to a server you host over the WebSocket configured in
        # `websocket_settings`: Telnyx sends a `session.delegation.created` frame and
        # waits for your `session.delegation.completed` answer. That answer is text only,
        # since the socket offers no tool vocabulary. If no socket is connected the
        # delegation is refused and the assistant tells the caller it cannot look things
        # up right now. Defaults to `telnyx`.
        #
        # @see Telnyx::Models::AI::DelegationSettings#mode
        module Mode
          extend Telnyx::Internal::Type::Enum

          TELNYX = :telnyx
          CLIENT = :client

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
