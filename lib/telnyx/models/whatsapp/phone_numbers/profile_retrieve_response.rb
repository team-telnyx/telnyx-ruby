# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        # @see Telnyx::Resources::Whatsapp::PhoneNumbers::Profile#retrieve
        class ProfileRetrieveResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Whatsapp::PhoneNumbers::WhatsappProfileData, nil]
          optional :data, -> { Telnyx::Whatsapp::PhoneNumbers::WhatsappProfileData }

          # @!method initialize(data: nil)
          #   @param data [Telnyx::Models::Whatsapp::PhoneNumbers::WhatsappProfileData]
        end
      end
    end
  end
end
