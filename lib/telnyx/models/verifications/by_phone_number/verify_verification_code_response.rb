# frozen_string_literal: true

module Telnyx
  module Models
    module Verifications
      module ByPhoneNumber
        # @see Telnyx::Resources::Verifications::ByPhoneNumber::Actions#verify
        class VerifyVerificationCodeResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data]
          required :data, -> { Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data]

          # @see Telnyx::Models::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse#data
          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute phone_number
            #   +E164 formatted phone number.
            #
            #   @return [String]
            required :phone_number, String

            # @!attribute response_code
            #   Identifies if the verification code has been accepted or rejected.
            #
            #   @return [Symbol, Telnyx::Models::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data::ResponseCode]
            required :response_code,
                     enum: -> { Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data::ResponseCode }

            # @!method initialize(phone_number:, response_code:)
            #   @param phone_number [String] +E164 formatted phone number.
            #
            #   @param response_code [Symbol, Telnyx::Models::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data::ResponseCode] Identifies if the verification code has been accepted or rejected.

            # Identifies if the verification code has been accepted or rejected.
            #
            # @see Telnyx::Models::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data#response_code
            module ResponseCode
              extend Telnyx::Internal::Type::Enum

              ACCEPTED = :accepted
              REJECTED = :rejected

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
