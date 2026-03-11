# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        # @see Telnyx::Resources::Whatsapp::PhoneNumbers::CallingSettings#update
        class CallingSettingUpdateResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingUpdateResponse::Data, nil]
          optional :data, -> { Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingUpdateResponse::Data }

          # @!method initialize(data: nil)
          #   @param data [Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingUpdateResponse::Data]

          # @see Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingUpdateResponse#data
          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute enabled
            #   True if calling is enabled on the phone
            #
            #   @return [Boolean, nil]
            optional :enabled, Telnyx::Internal::Type::Boolean

            # @!attribute phone_number
            #   Phone number in E164 format
            #
            #   @return [String, nil]
            optional :phone_number, String

            # @!attribute record_type
            #
            #   @return [String, nil]
            optional :record_type, String

            # @!attribute updated_at
            #
            #   @return [Time, nil]
            optional :updated_at, Time

            # @!method initialize(enabled: nil, phone_number: nil, record_type: nil, updated_at: nil)
            #   @param enabled [Boolean] True if calling is enabled on the phone
            #
            #   @param phone_number [String] Phone number in E164 format
            #
            #   @param record_type [String]
            #
            #   @param updated_at [Time]
          end
        end
      end
    end
  end
end
