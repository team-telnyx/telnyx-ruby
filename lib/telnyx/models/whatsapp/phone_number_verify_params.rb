# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::PhoneNumbers#verify
      class PhoneNumberVerifyParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute phone_number
        #
        #   @return [String]
        required :phone_number, String

        # @!attribute code
        #
        #   @return [String]
        required :code, String

        # @!method initialize(phone_number:, code:, request_options: {})
        #   @param phone_number [String]
        #   @param code [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
