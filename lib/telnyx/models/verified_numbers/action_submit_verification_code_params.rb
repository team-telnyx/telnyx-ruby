# frozen_string_literal: true

module Telnyx
  module Models
    module VerifiedNumbers
      # @see Telnyx::Resources::VerifiedNumbers::Actions#submit_verification_code
      class ActionSubmitVerificationCodeParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute phone_number
        #   +E164 formatted phone number.
        #
        #   @return [String]
        required :phone_number, String

        # @!attribute verification_code
        #
        #   @return [String]
        required :verification_code, String

        # @!method initialize(phone_number:, verification_code:, request_options: {})
        #   @param phone_number [String] +E164 formatted phone number.
        #
        #   @param verification_code [String]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
