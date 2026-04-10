# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        module Profile
          # @see Telnyx::Resources::Whatsapp::PhoneNumbers::Profile::Photo#retrieve
          class PhotoRetrieveResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Telnyx::Models::Whatsapp::PhoneNumbers::Profile::PhotoRetrieveResponse::Data, nil]
            optional :data, -> { Telnyx::Models::Whatsapp::PhoneNumbers::Profile::PhotoRetrieveResponse::Data }

            # @!method initialize(data: nil)
            #   @param data [Telnyx::Models::Whatsapp::PhoneNumbers::Profile::PhotoRetrieveResponse::Data]

            # @see Telnyx::Models::Whatsapp::PhoneNumbers::Profile::PhotoRetrieveResponse#data
            class Data < Telnyx::Internal::Type::BaseModel
              # @!attribute phone_number_id
              #   Meta phone number ID
              #
              #   @return [String, nil]
              optional :phone_number_id, String

              # @!attribute profile_photo_url
              #   URL of the business profile photo (served by Meta's CDN). May be empty if no
              #   photo is set.
              #
              #   @return [String, nil]
              optional :profile_photo_url, String

              # @!attribute record_type
              #
              #   @return [String, nil]
              optional :record_type, String

              # @!method initialize(phone_number_id: nil, profile_photo_url: nil, record_type: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::Whatsapp::PhoneNumbers::Profile::PhotoRetrieveResponse::Data}
              #   for more details.
              #
              #   @param phone_number_id [String] Meta phone number ID
              #
              #   @param profile_photo_url [String] URL of the business profile photo (served by Meta's CDN). May be empty if no pho
              #
              #   @param record_type [String]
            end
          end
        end
      end
    end
  end
end
