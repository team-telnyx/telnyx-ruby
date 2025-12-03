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
        #   @return [Array<Telnyx::Models::AI::Assistant::Tool::BookAppointmentTool, Telnyx::Models::AI::Assistant::Tool::CheckAvailabilityTool, Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::AI::RetrievalTool>, nil]
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
        #   @param tools [Array<Telnyx::Models::AI::Assistant::Tool::BookAppointmentTool, Telnyx::Models::AI::Assistant::Tool::CheckAvailabilityTool, Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::AI::RetrievalTool>] The tools that the voice assistant can use.

        module Tool
          extend Telnyx::Internal::Type::Union

          variant -> { Telnyx::AI::Assistant::Tool::BookAppointmentTool }

          variant -> { Telnyx::AI::Assistant::Tool::CheckAvailabilityTool }

          variant -> { Telnyx::AI::WebhookTool }

          variant -> { Telnyx::AI::HangupTool }

          variant -> { Telnyx::AI::TransferTool }

          variant -> { Telnyx::AI::RetrievalTool }

          class BookAppointmentTool < Telnyx::Internal::Type::BaseModel
            # @!attribute book_appointment
            #
            #   @return [Telnyx::Models::AI::Assistant::Tool::BookAppointmentTool::BookAppointment]
            required :book_appointment, -> { Telnyx::AI::Assistant::Tool::BookAppointmentTool::BookAppointment }

            # @!attribute type
            #
            #   @return [Symbol, Telnyx::Models::AI::Assistant::Tool::BookAppointmentTool::Type]
            required :type, enum: -> { Telnyx::AI::Assistant::Tool::BookAppointmentTool::Type }

            # @!method initialize(book_appointment:, type:)
            #   @param book_appointment [Telnyx::Models::AI::Assistant::Tool::BookAppointmentTool::BookAppointment]
            #   @param type [Symbol, Telnyx::Models::AI::Assistant::Tool::BookAppointmentTool::Type]

            # @see Telnyx::Models::AI::Assistant::Tool::BookAppointmentTool#book_appointment
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
              #   {Telnyx::Models::AI::Assistant::Tool::BookAppointmentTool::BookAppointment} for
              #   more details.
              #
              #   @param api_key_ref [String] Reference to an integration secret that contains your Cal.com API key. You would
              #
              #   @param event_type_id [Integer] Event Type ID for which slots are being fetched. [cal.com](https://cal.com/docs/
              #
              #   @param attendee_name [String] The name of the attendee [cal.com](https://cal.com/docs/api-reference/v2/booking
              #
              #   @param attendee_timezone [String] The timezone of the attendee [cal.com](https://cal.com/docs/api-reference/v2/boo
            end

            # @see Telnyx::Models::AI::Assistant::Tool::BookAppointmentTool#type
            module Type
              extend Telnyx::Internal::Type::Enum

              BOOK_APPOINTMENT = :book_appointment

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class CheckAvailabilityTool < Telnyx::Internal::Type::BaseModel
            # @!attribute check_availability
            #
            #   @return [Telnyx::Models::AI::Assistant::Tool::CheckAvailabilityTool::CheckAvailability]
            required :check_availability, -> { Telnyx::AI::Assistant::Tool::CheckAvailabilityTool::CheckAvailability }

            # @!attribute type
            #
            #   @return [Symbol, Telnyx::Models::AI::Assistant::Tool::CheckAvailabilityTool::Type]
            required :type, enum: -> { Telnyx::AI::Assistant::Tool::CheckAvailabilityTool::Type }

            # @!method initialize(check_availability:, type:)
            #   @param check_availability [Telnyx::Models::AI::Assistant::Tool::CheckAvailabilityTool::CheckAvailability]
            #   @param type [Symbol, Telnyx::Models::AI::Assistant::Tool::CheckAvailabilityTool::Type]

            # @see Telnyx::Models::AI::Assistant::Tool::CheckAvailabilityTool#check_availability
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
              #   {Telnyx::Models::AI::Assistant::Tool::CheckAvailabilityTool::CheckAvailability}
              #   for more details.
              #
              #   @param api_key_ref [String] Reference to an integration secret that contains your Cal.com API key. You would
              #
              #   @param event_type_id [Integer] Event Type ID for which slots are being fetched. [cal.com](https://cal.com/docs/
            end

            # @see Telnyx::Models::AI::Assistant::Tool::CheckAvailabilityTool#type
            module Type
              extend Telnyx::Internal::Type::Enum

              CHECK_AVAILABILITY = :check_availability

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::AI::Assistant::Tool::BookAppointmentTool, Telnyx::Models::AI::Assistant::Tool::CheckAvailabilityTool, Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::AI::RetrievalTool)]
        end
      end
    end
  end
end
