# frozen_string_literal: true

module Telnyx
  module Models
    class WhatsappAccountUpdate < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WhatsappAccountUpdate::Data]
      required :data, -> { Telnyx::WhatsappAccountUpdate::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::WhatsappAccountUpdate::Data]

      # @see Telnyx::Models::WhatsappAccountUpdate#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute event_type
        #
        #   @return [Symbol, Telnyx::Models::WhatsappAccountUpdate::Data::EventType]
        required :event_type, enum: -> { Telnyx::WhatsappAccountUpdate::Data::EventType }

        # @!attribute occurred_at
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::WhatsappAccountUpdate::Data::Payload]
        required :payload, -> { Telnyx::WhatsappAccountUpdate::Data::Payload }

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::WhatsappAccountUpdate::Data::RecordType]
        required :record_type, enum: -> { Telnyx::WhatsappAccountUpdate::Data::RecordType }

        # @!method initialize(id:, event_type:, occurred_at:, payload:, record_type:)
        #   @param id [String]
        #   @param event_type [Symbol, Telnyx::Models::WhatsappAccountUpdate::Data::EventType]
        #   @param occurred_at [Time]
        #   @param payload [Telnyx::Models::WhatsappAccountUpdate::Data::Payload]
        #   @param record_type [Symbol, Telnyx::Models::WhatsappAccountUpdate::Data::RecordType]

        # @see Telnyx::Models::WhatsappAccountUpdate::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          WHATSAPP_ACCOUNT_UPDATE = :"whatsapp.account.update"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::WhatsappAccountUpdate::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute event
          #   Account event reported by Meta. Coexistence lifecycle values include
          #   `ACCOUNT_OFFBOARDED`, `ACCOUNT_RECONNECTED`, and `PARTNER_REMOVED`. Preserve
          #   unknown values for forward compatibility.
          #
          #   @return [String]
          required :event, String

          # @!attribute record_type
          #
          #   @return [Symbol, Telnyx::Models::WhatsappAccountUpdate::Data::Payload::RecordType]
          required :record_type, enum: -> { Telnyx::WhatsappAccountUpdate::Data::Payload::RecordType }

          # @!attribute waba_id
          #   Meta WhatsApp Business Account identifier.
          #
          #   @return [String]
          required :waba_id, String

          # @!method initialize(event:, record_type:, waba_id:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::WhatsappAccountUpdate::Data::Payload} for more details.
          #
          #   @param event [String] Account event reported by Meta. Coexistence lifecycle values include `ACCOUNT_OF
          #
          #   @param record_type [Symbol, Telnyx::Models::WhatsappAccountUpdate::Data::Payload::RecordType]
          #
          #   @param waba_id [String] Meta WhatsApp Business Account identifier.

          # @see Telnyx::Models::WhatsappAccountUpdate::Data::Payload#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            WHATSAPP_ACCOUNT = :whatsapp_account

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::WhatsappAccountUpdate::Data#record_type
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
