# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      class EmailVerificationStatus < Telnyx::Internal::Type::BaseModel
        # @!attribute email_verified
        #   Whether the DIR's authorizer email has been confirmed.
        #
        #   @return [Boolean]
        required :email_verified, Telnyx::Internal::Type::Boolean

        # @!attribute status
        #   `sent` after a code is emailed; `verified` after a successful confirm;
        #   `unverified` when no verification is in progress.
        #
        #   @return [Symbol, Telnyx::Models::Dir::EmailVerificationStatus::Status]
        required :status, enum: -> { Telnyx::Dir::EmailVerificationStatus::Status }

        response_only do
          # @!attribute record_type
          #   Always `email_verification`.
          #
          #   @return [Symbol, Telnyx::Models::Dir::EmailVerificationStatus::RecordType]
          required :record_type, enum: -> { Telnyx::Dir::EmailVerificationStatus::RecordType }

          # @!attribute expires_at
          #   When the outstanding code stops being accepted. Null when no verification is in
          #   progress.
          #
          #   @return [Time, nil]
          optional :expires_at, Time, nil?: true

          # @!attribute sends_remaining_today
          #   How many more codes may be requested for this DIR today. Null when the daily cap
          #   does not apply.
          #
          #   @return [Integer, nil]
          optional :sends_remaining_today, Integer, nil?: true
        end

        # @!method initialize(email_verified:, record_type:, status:, expires_at: nil, sends_remaining_today: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Dir::EmailVerificationStatus} for more details.
        #
        #   Verification state for a DIR's authorizer email.
        #
        #   @param email_verified [Boolean] Whether the DIR's authorizer email has been confirmed.
        #
        #   @param record_type [Symbol, Telnyx::Models::Dir::EmailVerificationStatus::RecordType] Always `email_verification`.
        #
        #   @param status [Symbol, Telnyx::Models::Dir::EmailVerificationStatus::Status] `sent` after a code is emailed; `verified` after a successful confirm; `unverifi
        #
        #   @param expires_at [Time, nil] When the outstanding code stops being accepted. Null when no verification is in
        #
        #   @param sends_remaining_today [Integer, nil] How many more codes may be requested for this DIR today. Null when the daily cap

        # Always `email_verification`.
        #
        # @see Telnyx::Models::Dir::EmailVerificationStatus#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EMAIL_VERIFICATION = :email_verification

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # `sent` after a code is emailed; `verified` after a successful confirm;
        # `unverified` when no verification is in progress.
        #
        # @see Telnyx::Models::Dir::EmailVerificationStatus#status
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
