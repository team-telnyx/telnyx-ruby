# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingHostedNumberOrders#create_verification_codes
    class MessagingHostedNumberOrderCreateVerificationCodesResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data>]
      required :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data] }

      # @!method initialize(data:)
      #   @param data [Array<Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute phone_number
        #   Phone number for which the verification code was created
        #
        #   @return [String]
        required :phone_number, String

        # @!attribute error
        #   Error message describing why the verification code creation failed
        #
        #   @return [String, nil]
        optional :error, String

        # @!attribute type
        #   Type of verification method used
        #
        #   @return [Symbol, Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::Type, nil]
        optional :type,
                 enum: -> { Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::Type }

        # @!attribute verification_code_id
        #   Unique identifier for the verification code
        #
        #   @return [String, nil]
        optional :verification_code_id, String

        # @!method initialize(phone_number:, error: nil, type: nil, verification_code_id: nil)
        #   Verification code result response
        #
        #   @param phone_number [String] Phone number for which the verification code was created
        #
        #   @param error [String] Error message describing why the verification code creation failed
        #
        #   @param type [Symbol, Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data::Type] Type of verification method used
        #
        #   @param verification_code_id [String] Unique identifier for the verification code

        # Type of verification method used
        #
        # @see Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data#type
        module Type
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
end
