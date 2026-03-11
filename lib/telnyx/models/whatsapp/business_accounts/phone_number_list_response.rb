# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module BusinessAccounts
        # @see Telnyx::Resources::Whatsapp::BusinessAccounts::PhoneNumbers#list
        class PhoneNumberListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute calling_enabled
          #
          #   @return [Boolean, nil]
          optional :calling_enabled, Telnyx::Internal::Type::Boolean

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute display_name
          #
          #   @return [String, nil]
          optional :display_name, String

          # @!attribute enabled
          #
          #   @return [Boolean, nil]
          optional :enabled, Telnyx::Internal::Type::Boolean

          # @!attribute phone_number
          #   Phone number in E164 format
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute phone_number_id
          #   Whatsapp phone number ID
          #
          #   @return [String, nil]
          optional :phone_number_id, String

          # @!attribute quality_rating
          #   Whatsapp quality rating
          #
          #   @return [String, nil]
          optional :quality_rating, String

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String

          # @!attribute user_id
          #   User ID
          #
          #   @return [String, nil]
          optional :user_id, String

          # @!attribute waba_id
          #   WABA ID of Whatsapp business account
          #
          #   @return [String, nil]
          optional :waba_id, String

          # @!method initialize(calling_enabled: nil, created_at: nil, display_name: nil, enabled: nil, phone_number: nil, phone_number_id: nil, quality_rating: nil, record_type: nil, status: nil, user_id: nil, waba_id: nil)
          #   @param calling_enabled [Boolean]
          #
          #   @param created_at [Time]
          #
          #   @param display_name [String]
          #
          #   @param enabled [Boolean]
          #
          #   @param phone_number [String] Phone number in E164 format
          #
          #   @param phone_number_id [String] Whatsapp phone number ID
          #
          #   @param quality_rating [String] Whatsapp quality rating
          #
          #   @param record_type [String]
          #
          #   @param status [String]
          #
          #   @param user_id [String] User ID
          #
          #   @param waba_id [String] WABA ID of Whatsapp business account
        end
      end
    end
  end
end
