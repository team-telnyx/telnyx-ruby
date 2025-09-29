# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingHostedNumberOrders#validate_codes
    class MessagingHostedNumberOrderValidateCodesParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute verification_codes
      #
      #   @return [Array<Telnyx::Models::MessagingHostedNumberOrderValidateCodesParams::VerificationCode>]
      required :verification_codes,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingHostedNumberOrderValidateCodesParams::VerificationCode] }

      # @!method initialize(verification_codes:, request_options: {})
      #   @param verification_codes [Array<Telnyx::Models::MessagingHostedNumberOrderValidateCodesParams::VerificationCode>]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class VerificationCode < Telnyx::Internal::Type::BaseModel
        # @!attribute code
        #
        #   @return [String]
        required :code, String

        # @!attribute phone_number
        #
        #   @return [String]
        required :phone_number, String

        # @!method initialize(code:, phone_number:)
        #   @param code [String]
        #   @param phone_number [String]
      end
    end
  end
end
