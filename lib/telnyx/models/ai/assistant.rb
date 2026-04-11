# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class Assistant < Telnyx::Internal::Type::BaseModel
        # @!attribute instructions
        #   The system instructions that the voice assistant uses during the gather command
        #
        #   @return [String, nil]
        optional :instructions, String

        # @!attribute model
        #   The model to be used by the voice assistant.
        #
        #   @return [String, nil]
        optional :model, String

        # @!attribute openai_api_key_ref
        #   This is necessary only if the model selected is from OpenAI. You would pass the
        #   `identifier` for an integration secret
        #   [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        #   that refers to your OpenAI API Key. Warning: Free plans are unlikely to work
        #   with this integration.
        #
        #   @return [String, nil]
        optional :openai_api_key_ref, String

        # @!attribute tools
        #   The tools that the voice assistant can use.
        #
        #   @return [Array<Telnyx::Models::BookAppointmentTool, Telnyx::Models::CheckAvailabilityTool, Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::CallControlRetrievalTool>, nil]
        optional :tools, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::Assistant::Tool] }

        # @!method initialize(instructions: nil, model: nil, openai_api_key_ref: nil, tools: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::Assistant} for more details.
        #
        #   Assistant configuration including choice of LLM, custom instructions, and tools.
        #
        #   @param instructions [String] The system instructions that the voice assistant uses during the gather command
        #
        #   @param model [String] The model to be used by the voice assistant.
        #
        #   @param openai_api_key_ref [String] This is necessary only if the model selected is from OpenAI. You would pass the
        #
        #   @param tools [Array<Telnyx::Models::BookAppointmentTool, Telnyx::Models::CheckAvailabilityTool, Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::CallControlRetrievalTool>] The tools that the voice assistant can use.

        module Tool
          extend Telnyx::Internal::Type::Union

          discriminator :type

          variant :book_appointment, -> { Telnyx::BookAppointmentTool }

          variant :check_availability, -> { Telnyx::CheckAvailabilityTool }

          variant :webhook, -> { Telnyx::AI::WebhookTool }

          variant :hangup, -> { Telnyx::AI::HangupTool }

          variant :transfer, -> { Telnyx::AI::TransferTool }

          variant :retrieval, -> { Telnyx::CallControlRetrievalTool }

          # @!method self.variants
          #   @return [Array(Telnyx::Models::BookAppointmentTool, Telnyx::Models::CheckAvailabilityTool, Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::CallControlRetrievalTool)]
        end
      end
    end
  end
end
