# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::PhoneNumbers#resend_verification
      class PhoneNumberResendVerificationParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute phone_number
        #
        #   @return [String]
        required :phone_number, String

        # @!attribute verification_method
        #
        #   @return [Symbol, Telnyx::Models::Whatsapp::PhoneNumberResendVerificationParams::VerificationMethod, nil]
        optional :verification_method,
                 enum: -> { Telnyx::Whatsapp::PhoneNumberResendVerificationParams::VerificationMethod }

        # @!method initialize(phone_number:, verification_method: nil, request_options: {})
        #   @param phone_number [String]
        #   @param verification_method [Symbol, Telnyx::Models::Whatsapp::PhoneNumberResendVerificationParams::VerificationMethod]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        module VerificationMethod
          extend Telnyx::Internal::Type::Enum

          SMS = :sms
          VOICE = :voice

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
