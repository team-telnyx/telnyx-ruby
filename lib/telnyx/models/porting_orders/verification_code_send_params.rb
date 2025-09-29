# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::VerificationCodes#send_
      class VerificationCodeSendParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute phone_numbers
        #
        #   @return [Array<String>, nil]
        optional :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute verification_method
        #
        #   @return [Symbol, Telnyx::Models::PortingOrders::VerificationCodeSendParams::VerificationMethod, nil]
        optional :verification_method,
                 enum: -> { Telnyx::PortingOrders::VerificationCodeSendParams::VerificationMethod }

        # @!method initialize(phone_numbers: nil, verification_method: nil, request_options: {})
        #   @param phone_numbers [Array<String>]
        #   @param verification_method [Symbol, Telnyx::Models::PortingOrders::VerificationCodeSendParams::VerificationMethod]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        module VerificationMethod
          extend Telnyx::Internal::Type::Enum

          SMS = :sms
          CALL = :call

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
