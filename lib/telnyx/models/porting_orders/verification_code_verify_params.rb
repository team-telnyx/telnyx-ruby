# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::VerificationCodes#verify
      class VerificationCodeVerifyParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute verification_codes
        #
        #   @return [Array<Telnyx::Models::PortingOrders::VerificationCodeVerifyParams::VerificationCode>, nil]
        optional :verification_codes,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrders::VerificationCodeVerifyParams::VerificationCode] }

        # @!method initialize(verification_codes: nil, request_options: {})
        #   @param verification_codes [Array<Telnyx::Models::PortingOrders::VerificationCodeVerifyParams::VerificationCode>]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class VerificationCode < Telnyx::Internal::Type::BaseModel
          # @!attribute code
          #
          #   @return [String, nil]
          optional :code, String

          # @!attribute phone_number
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!method initialize(code: nil, phone_number: nil)
          #   @param code [String]
          #   @param phone_number [String]
        end
      end
    end
  end
end
