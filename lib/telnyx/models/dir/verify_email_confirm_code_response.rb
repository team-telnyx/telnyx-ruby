# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::VerifyEmail#confirm_code
      class VerifyEmailConfirmCodeResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   Verification state for a DIR's authorizer email.
        #
        #   @return [Telnyx::Models::Dir::VerifyEmailConfirmCodeResponse::Data]
        required :data, -> { Telnyx::Models::Dir::VerifyEmailConfirmCodeResponse::Data }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::Dir::VerifyEmailConfirmCodeResponse::Data] Verification state for a DIR's authorizer email.

        # @see Telnyx::Models::Dir::VerifyEmailConfirmCodeResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute email_verified
          #   Whether the DIR's authorizer email has been confirmed.
          #
          #   @return [Boolean]
          required :email_verified, Telnyx::Internal::Type::Boolean

          # @!attribute status
          #   `sent` after a code is emailed; `verified` after a successful confirm;
          #   `unverified` when no verification is in progress.
          #
          #   @return [Symbol, Telnyx::Models::Dir::VerifyEmailConfirmCodeResponse::Data::Status]
          required :status, enum: -> { Telnyx::Models::Dir::VerifyEmailConfirmCodeResponse::Data::Status }

          response_only do
            # @!attribute record_type
            #   Always `email_verification`.
            #
            #   @return [Symbol, Telnyx::Models::Dir::VerifyEmailConfirmCodeResponse::Data::RecordType]
            required :record_type, enum: -> { Telnyx::Models::Dir::VerifyEmailConfirmCodeResponse::Data::RecordType }
          end

          # @!method initialize(email_verified:, record_type:, status:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Dir::VerifyEmailConfirmCodeResponse::Data} for more details.
          #
          #   Verification state for a DIR's authorizer email.
          #
          #   @param email_verified [Boolean] Whether the DIR's authorizer email has been confirmed.
          #
          #   @param record_type [Symbol, Telnyx::Models::Dir::VerifyEmailConfirmCodeResponse::Data::RecordType] Always `email_verification`.
          #
          #   @param status [Symbol, Telnyx::Models::Dir::VerifyEmailConfirmCodeResponse::Data::Status] `sent` after a code is emailed; `verified` after a successful confirm; `unverifi

          # Always `email_verification`.
          #
          # @see Telnyx::Models::Dir::VerifyEmailConfirmCodeResponse::Data#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            EMAIL_VERIFICATION = :email_verification

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # `sent` after a code is emailed; `verified` after a successful confirm;
          # `unverified` when no verification is in progress.
          #
          # @see Telnyx::Models::Dir::VerifyEmailConfirmCodeResponse::Data#status
          module Status
            extend Telnyx::Internal::Type::Enum

            SENT = :sent
            VERIFIED = :verified
            UNVERIFIED = :unverified

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
