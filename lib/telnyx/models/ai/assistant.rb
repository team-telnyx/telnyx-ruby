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
        #   @return [Array<Telnyx::Models::AI::Assistant::Tool::BookAppointment, Telnyx::Models::AI::Assistant::Tool::CheckAvailability, Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::AI::Assistant::Tool::Retrieval>, nil]
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
        #   @param tools [Array<Telnyx::Models::AI::Assistant::Tool::BookAppointment, Telnyx::Models::AI::Assistant::Tool::CheckAvailability, Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::AI::Assistant::Tool::Retrieval>] The tools that the voice assistant can use.

        module Tool
          extend Telnyx::Internal::Type::Union

          discriminator :type

          variant :book_appointment, -> { Telnyx::AI::Assistant::Tool::BookAppointment }

          variant :check_availability, -> { Telnyx::AI::Assistant::Tool::CheckAvailability }

          variant :webhook, -> { Telnyx::AI::WebhookTool }

          variant :hangup, -> { Telnyx::AI::HangupTool }

          variant :transfer, -> { Telnyx::AI::TransferTool }

          variant :retrieval, -> { Telnyx::AI::Assistant::Tool::Retrieval }

          class BookAppointment < Telnyx::Internal::Type::BaseModel
            # @!attribute book_appointment
            #
            #   @return [Telnyx::Models::AI::Assistant::Tool::BookAppointment::BookAppointment]
            required :book_appointment, -> { Telnyx::AI::Assistant::Tool::BookAppointment::BookAppointment }

            # @!attribute type
            #
            #   @return [Symbol, :book_appointment]
            required :type, const: :book_appointment

            # @!method initialize(book_appointment:, type: :book_appointment)
            #   @param book_appointment [Telnyx::Models::AI::Assistant::Tool::BookAppointment::BookAppointment]
            #   @param type [Symbol, :book_appointment]

            # @see Telnyx::Models::AI::Assistant::Tool::BookAppointment#book_appointment
            class BookAppointment < Telnyx::Internal::Type::BaseModel
              # @!attribute api_key_ref
              #   Reference to an integration secret that contains your Cal.com API key. You would
              #   pass the `identifier` for an integration secret
              #   [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
              #   that refers to your Cal.com API key.
              #
              #   @return [String]
              required :api_key_ref, String

              # @!attribute event_type_id
              #   Event Type ID for which slots are being fetched.
              #   [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-event-type-id)
              #
              #   @return [Integer]
              required :event_type_id, Integer

              # @!attribute attendee_name
              #   The name of the attendee
              #   [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-name).
              #   If not provided, the assistant will ask for the attendee's name.
              #
              #   @return [String, nil]
              optional :attendee_name, String

              # @!attribute attendee_timezone
              #   The timezone of the attendee
              #   [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-timezone).
              #   If not provided, the assistant will ask for the attendee's timezone.
              #
              #   @return [String, nil]
              optional :attendee_timezone, String

              # @!method initialize(api_key_ref:, event_type_id:, attendee_name: nil, attendee_timezone: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Assistant::Tool::BookAppointment::BookAppointment} for more
              #   details.
              #
              #   @param api_key_ref [String] Reference to an integration secret that contains your Cal.com API key. You would
              #
              #   @param event_type_id [Integer] Event Type ID for which slots are being fetched. [cal.com](https://cal.com/docs/
              #
              #   @param attendee_name [String] The name of the attendee [cal.com](https://cal.com/docs/api-reference/v2/booking
              #
              #   @param attendee_timezone [String] The timezone of the attendee [cal.com](https://cal.com/docs/api-reference/v2/boo
            end
          end

          class CheckAvailability < Telnyx::Internal::Type::BaseModel
            # @!attribute check_availability
            #
            #   @return [Telnyx::Models::AI::Assistant::Tool::CheckAvailability::CheckAvailability]
            required :check_availability, -> { Telnyx::AI::Assistant::Tool::CheckAvailability::CheckAvailability }

            # @!attribute type
            #
            #   @return [Symbol, :check_availability]
            required :type, const: :check_availability

            # @!method initialize(check_availability:, type: :check_availability)
            #   @param check_availability [Telnyx::Models::AI::Assistant::Tool::CheckAvailability::CheckAvailability]
            #   @param type [Symbol, :check_availability]

            # @see Telnyx::Models::AI::Assistant::Tool::CheckAvailability#check_availability
            class CheckAvailability < Telnyx::Internal::Type::BaseModel
              # @!attribute api_key_ref
              #   Reference to an integration secret that contains your Cal.com API key. You would
              #   pass the `identifier` for an integration secret
              #   [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
              #   that refers to your Cal.com API key.
              #
              #   @return [String]
              required :api_key_ref, String

              # @!attribute event_type_id
              #   Event Type ID for which slots are being fetched.
              #   [cal.com](https://cal.com/docs/api-reference/v2/slots/get-available-slots#parameter-event-type-id)
              #
              #   @return [Integer]
              required :event_type_id, Integer

              # @!method initialize(api_key_ref:, event_type_id:)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Assistant::Tool::CheckAvailability::CheckAvailability} for
              #   more details.
              #
              #   @param api_key_ref [String] Reference to an integration secret that contains your Cal.com API key. You would
              #
              #   @param event_type_id [Integer] Event Type ID for which slots are being fetched. [cal.com](https://cal.com/docs/
            end
          end

          class Retrieval < Telnyx::Internal::Type::BaseModel
            # @!attribute retrieval
            #
            #   @return [Telnyx::Models::AI::Assistant::Tool::Retrieval::Retrieval]
            required :retrieval, -> { Telnyx::AI::Assistant::Tool::Retrieval::Retrieval }

            # @!attribute type
            #
            #   @return [Symbol, :retrieval]
            required :type, const: :retrieval

            # @!method initialize(retrieval:, type: :retrieval)
            #   @param retrieval [Telnyx::Models::AI::Assistant::Tool::Retrieval::Retrieval]
            #   @param type [Symbol, :retrieval]

            # @see Telnyx::Models::AI::Assistant::Tool::Retrieval#retrieval
            class Retrieval < Telnyx::Internal::Type::BaseModel
              # @!attribute bucket_ids
              #
              #   @return [Array<String>]
              required :bucket_ids, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute max_num_results
              #   The maximum number of results to retrieve as context for the language model.
              #
              #   @return [Integer, nil]
              optional :max_num_results, Integer

              # @!method initialize(bucket_ids:, max_num_results: nil)
              #   @param bucket_ids [Array<String>]
              #
              #   @param max_num_results [Integer] The maximum number of results to retrieve as context for the language model.
            end
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::AI::Assistant::Tool::BookAppointment, Telnyx::Models::AI::Assistant::Tool::CheckAvailability, Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::AI::Assistant::Tool::Retrieval)]
        end
      end
    end
  end
end
