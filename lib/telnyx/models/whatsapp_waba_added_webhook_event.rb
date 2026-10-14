# frozen_string_literal: true

module Telnyx
  module Models
    class WhatsappWabaAddedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WhatsappWabaAddedWebhookEvent::Data]
      required :data, -> { Telnyx::WhatsappWabaAddedWebhookEvent::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::WhatsappWabaAddedWebhookEvent::Data]

      # @see Telnyx::Models::WhatsappWabaAddedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute event_type
        #
        #   @return [Symbol, Telnyx::Models::WhatsappWabaAddedWebhookEvent::Data::EventType]
        required :event_type, enum: -> { Telnyx::WhatsappWabaAddedWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::WhatsappWabaAddedWebhookEvent::Data::Payload]
        required :payload, -> { Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::WhatsappWabaAddedWebhookEvent::Data::RecordType]
        required :record_type, enum: -> { Telnyx::WhatsappWabaAddedWebhookEvent::Data::RecordType }

        # @!method initialize(id:, event_type:, occurred_at:, payload:, record_type:)
        #   @param id [String]
        #   @param event_type [Symbol, Telnyx::Models::WhatsappWabaAddedWebhookEvent::Data::EventType]
        #   @param occurred_at [Time]
        #   @param payload [Telnyx::Models::WhatsappWabaAddedWebhookEvent::Data::Payload]
        #   @param record_type [Symbol, Telnyx::Models::WhatsappWabaAddedWebhookEvent::Data::RecordType]

        # @see Telnyx::Models::WhatsappWabaAddedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          WHATSAPP_WABA_ADDED = :"whatsapp.waba_added"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::WhatsappWabaAddedWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute event_id
          #   Signup session ID.
          #
          #   @return [String]
          required :event_id, String

          # @!attribute record_type
          #
          #   @return [Symbol, Telnyx::Models::WhatsappWabaAddedWebhookEvent::Data::Payload::RecordType]
          required :record_type, enum: -> { Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload::RecordType }

          # @!attribute status
          #   Signup session outcome.
          #
          #   @return [Symbol, Telnyx::Models::WhatsappWabaAddedWebhookEvent::Data::Payload::Status]
          required :status, enum: -> { Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload::Status }

          # @!attribute waba_id
          #   Meta WhatsApp Business Account identifier.
          #
          #   @return [String]
          required :waba_id, String

          # @!attribute errors
          #   Errors recorded during provisioning.
          #
          #   @return [Array<String>, nil]
          optional :errors, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute phone_numbers
          #   Phone numbers found on the WABA. Omitted for standard sessions started with a
          #   phone_number_id, and for sessions that fail before Telnyx fetches the numbers.
          #
          #   @return [Array<String>, nil]
          optional :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(event_id:, record_type:, status:, waba_id:, errors: nil, phone_numbers: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::WhatsappWabaAddedWebhookEvent::Data::Payload} for more details.
          #
          #   @param event_id [String] Signup session ID.
          #
          #   @param record_type [Symbol, Telnyx::Models::WhatsappWabaAddedWebhookEvent::Data::Payload::RecordType]
          #
          #   @param status [Symbol, Telnyx::Models::WhatsappWabaAddedWebhookEvent::Data::Payload::Status] Signup session outcome.
          #
          #   @param waba_id [String] Meta WhatsApp Business Account identifier.
          #
          #   @param errors [Array<String>] Errors recorded during provisioning.
          #
          #   @param phone_numbers [Array<String>] Phone numbers found on the WABA. Omitted for standard sessions started with a ph

          # @see Telnyx::Models::WhatsappWabaAddedWebhookEvent::Data::Payload#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            WABA_ACCOUNT_ADDED = :waba_account_added

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Signup session outcome.
          #
          # @see Telnyx::Models::WhatsappWabaAddedWebhookEvent::Data::Payload#status
          module Status
            extend Telnyx::Internal::Type::Enum

            SUCCESS = :SUCCESS
            FAILURE = :FAILURE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::WhatsappWabaAddedWebhookEvent::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EVENT = :event

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
