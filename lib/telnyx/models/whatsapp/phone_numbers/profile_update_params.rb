# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        # @see Telnyx::Resources::Whatsapp::PhoneNumbers::Profile#update
        class ProfileUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute phone_number
          #
          #   @return [String]
          required :phone_number, String

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

          # @!attribute profile_id
          #   Messaging profile ID for inbound messages
          #
          #   @return [String, nil]
          optional :profile_id, String

          # @!attribute website
          #
          #   @return [String, nil]
          optional :website, String

          # @!method initialize(phone_number:, about: nil, address: nil, category: nil, description: nil, display_name: nil, email: nil, profile_id: nil, website: nil, request_options: {})
          #   @param phone_number [String]
          #
          #   @param about [String]
          #
          #   @param address [String]
          #
          #   @param category [String]
          #
          #   @param description [String]
          #
          #   @param display_name [String]
          #
          #   @param email [String]
          #
          #   @param profile_id [String] Messaging profile ID for inbound messages
          #
          #   @param website [String]
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
