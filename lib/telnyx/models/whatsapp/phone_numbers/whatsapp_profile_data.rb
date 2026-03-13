# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        class WhatsappProfileData < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute about
          #
          #   @return [String, nil]
          optional :about, String

          # @!attribute address
          #
          #   @return [String, nil]
          optional :address, String

          # @!attribute category
          #
          #   @return [String, nil]
          optional :category, String

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute display_name
          #
          #   @return [String, nil]
          optional :display_name, String

          # @!attribute email
          #
          #   @return [String, nil]
          optional :email, String

          # @!attribute phone_number_id
          #   Whatsapp phone number ID
          #
          #   @return [String, nil]
          optional :phone_number_id, String

          # @!attribute profile_photo_url
          #
          #   @return [String, nil]
          optional :profile_photo_url, String

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute updated_at
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!attribute website
          #
          #   @return [String, nil]
          optional :website, String

          # @!method initialize(id: nil, about: nil, address: nil, category: nil, created_at: nil, description: nil, display_name: nil, email: nil, phone_number_id: nil, profile_photo_url: nil, record_type: nil, updated_at: nil, website: nil)
          #   @param id [String]
          #
          #   @param about [String]
          #
          #   @param address [String]
          #
          #   @param category [String]
          #
          #   @param created_at [Time]
          #
          #   @param description [String]
          #
          #   @param display_name [String]
          #
          #   @param email [String]
          #
          #   @param phone_number_id [String] Whatsapp phone number ID
          #
          #   @param profile_photo_url [String]
          #
          #   @param record_type [String]
          #
          #   @param updated_at [Time]
          #
          #   @param website [String]
        end
      end
    end
  end
end
