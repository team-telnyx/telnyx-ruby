# frozen_string_literal: true

module Telnyx
  module Models
    module VerifiedNumbers
      # @see Telnyx::Resources::VerifiedNumbers::Actions#submit_verification_code
      class ActionSubmitVerificationCodeParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute verification_code
        #
        #   @return [String]
        required :verification_code, String

        # @!method initialize(verification_code:, request_options: {})
        #   @param verification_code [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
