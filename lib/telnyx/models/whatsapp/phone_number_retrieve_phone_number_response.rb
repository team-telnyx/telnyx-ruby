# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::PhoneNumbers#retrieve_phone_number
      class PhoneNumberRetrievePhoneNumberResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Whatsapp::WhatsappPhoneResponse]
        required :data, -> { Telnyx::Whatsapp::WhatsappPhoneResponse }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::Whatsapp::WhatsappPhoneResponse]
      end
    end
  end
end
