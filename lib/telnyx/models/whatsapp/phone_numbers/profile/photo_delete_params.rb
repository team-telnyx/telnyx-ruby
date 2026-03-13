# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        module Profile
          # @see Telnyx::Resources::Whatsapp::PhoneNumbers::Profile::Photo#delete
          class PhotoDeleteParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute phone_number
            #
            #   @return [String]
            required :phone_number, String

            # @!method initialize(phone_number:, request_options: {})
            #   @param phone_number [String]
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
