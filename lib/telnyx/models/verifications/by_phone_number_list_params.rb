# frozen_string_literal: true

module Telnyx
  module Models
    module Verifications
      # @see Telnyx::Resources::Verifications::ByPhoneNumber#list
      class ByPhoneNumberListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute phone_number
        #   +E164 formatted phone number.
        #
        #   @return [String]
        required :phone_number, String

        # @!method initialize(phone_number:, request_options: {})
        #   @param phone_number [String] +E164 formatted phone number.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
