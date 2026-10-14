# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        class WhatsappCallingRoutingData < Telnyx::Internal::Type::BaseModel
          # @!attribute connection_id
          #   ID of the routing connection, or `null` when none is set.
          #
          #   @return [String, nil]
          required :connection_id, String, nil?: true

          # @!attribute phone_number
          #   Phone number in E.164 format, with a leading `+`.
          #
          #   @return [String]
          required :phone_number, String

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [Symbol, Telnyx::Models::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData::RecordType]
          required :record_type, enum: -> { Telnyx::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData::RecordType }

          # @!method initialize(connection_id:, phone_number:, record_type:)
          #   @param connection_id [String, nil] ID of the routing connection, or `null` when none is set.
          #
          #   @param phone_number [String] Phone number in E.164 format, with a leading `+`.
          #
          #   @param record_type [Symbol, Telnyx::Models::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData::RecordType] Identifies the type of the resource.

          # Identifies the type of the resource.
          #
          # @see Telnyx::Models::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            WHATSAPP_CALLING_ROUTING = :whatsapp_calling_routing

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
