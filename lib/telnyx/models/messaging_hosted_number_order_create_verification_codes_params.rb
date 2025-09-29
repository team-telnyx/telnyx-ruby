# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingHostedNumberOrders#create_verification_codes
    class MessagingHostedNumberOrderCreateVerificationCodesParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute phone_numbers
      #
      #   @return [Array<String>]
      required :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute verification_method
      #
      #   @return [Symbol, Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesParams::VerificationMethod]
      required :verification_method,
               enum: -> { Telnyx::MessagingHostedNumberOrderCreateVerificationCodesParams::VerificationMethod }

      # @!method initialize(phone_numbers:, verification_method:, request_options: {})
      #   @param phone_numbers [Array<String>]
      #   @param verification_method [Symbol, Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesParams::VerificationMethod]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      module VerificationMethod
        extend Telnyx::Internal::Type::Enum

        SMS = :sms
        CALL = :call
        FLASHCALL = :flashcall

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
