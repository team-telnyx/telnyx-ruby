# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingHostedNumberOrders#create_verification_codes
    class MessagingHostedNumberOrderCreateVerificationCodesResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess, Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeError>]
      required :data,
               -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data] }

      # @!method initialize(data:)
      #   @param data [Array<Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess, Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeError>]

      # Successful verification code creation response
      module Data
        extend Telnyx::Internal::Type::Union

        # Successful verification code creation response
        variant -> { Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess }

        # Failed verification code creation response
        variant -> { Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeError }

        class VerificationCodeSuccess < Telnyx::Internal::Type::BaseModel
          # @!attribute phone_number
          #   Phone number for which the verification code was created
          #
          #   @return [String]
          required :phone_number, String

          # @!attribute type
          #   Type of verification method used
          #
          #   @return [Symbol, Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess::Type]
          required :type,
                   enum: -> { Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess::Type }

          # @!attribute verification_code_id
          #   Unique identifier for the verification code
          #
          #   @return [String]
          required :verification_code_id, String

          # @!method initialize(phone_number:, type:, verification_code_id:)
          #   Successful verification code creation response
          #
          #   @param phone_number [String] Phone number for which the verification code was created
          #
          #   @param type [Symbol, Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess::Type] Type of verification method used
          #
          #   @param verification_code_id [String] Unique identifier for the verification code

          # Type of verification method used
          #
          # @see Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess#type
          module Type
            extend Telnyx::Internal::Type::Enum

            SMS = :sms
            CALL = :call
            FLASHCALL = :flashcall

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class VerificationCodeError < Telnyx::Internal::Type::BaseModel
          # @!attribute error
          #   Error message describing why the verification code creation failed
          #
          #   @return [String]
          required :error, String

          # @!attribute phone_number
          #   Phone number for which the verification code creation failed
          #
          #   @return [String]
          required :phone_number, String

          # @!method initialize(error:, phone_number:)
          #   Failed verification code creation response
          #
          #   @param error [String] Error message describing why the verification code creation failed
          #
          #   @param phone_number [String] Phone number for which the verification code creation failed
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeSuccess, Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::VerificationCodeError)]
      end
    end
  end
end
