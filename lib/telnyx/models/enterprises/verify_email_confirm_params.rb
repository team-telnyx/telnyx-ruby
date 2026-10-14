# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      # @see Telnyx::Resources::Enterprises::VerifyEmail#confirm
      class VerifyEmailConfirmParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute enterprise_id
        #
        #   @return [String]
        required :enterprise_id, String

        # @!attribute code
        #   The 6-digit code sent to the enterprise account's contact email.
        #
        #   @return [String]
        required :code, String

        # @!method initialize(enterprise_id:, code:, request_options: {})
        #   @param enterprise_id [String]
        #
        #   @param code [String] The 6-digit code sent to the enterprise account's contact email.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
