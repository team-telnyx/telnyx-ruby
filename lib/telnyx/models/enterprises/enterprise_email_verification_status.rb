# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      class EnterpriseEmailVerificationStatus < Telnyx::Internal::Type::BaseModel
        # @!attribute email_verified
        #   Whether the enterprise account's contact email has been confirmed.
        #
        #   @return [Boolean]
        required :email_verified, Telnyx::Internal::Type::Boolean

        # @!attribute status
        #   `sent` after a code is emailed; `verified` after a successful confirm.
        #
        #   @return [Symbol, Telnyx::Models::Enterprises::EnterpriseEmailVerificationStatus::Status]
        required :status, enum: -> { Telnyx::Enterprises::EnterpriseEmailVerificationStatus::Status }

        response_only do
          # @!attribute record_type
          #   Always `email_verification`.
          #
          #   @return [Symbol, Telnyx::Models::Enterprises::EnterpriseEmailVerificationStatus::RecordType]
          required :record_type, enum: -> { Telnyx::Enterprises::EnterpriseEmailVerificationStatus::RecordType }

          # @!attribute expires_at
          #   When the code just sent stops being accepted. Present on a send response; null
          #   on a confirm response.
          #
          #   @return [Time, nil]
          optional :expires_at, Time, nil?: true

          # @!attribute sends_remaining_today
          #   How many more codes may be requested for this enterprise account today. Present
          #   on a send response; null on a confirm response.
          #
          #   @return [Integer, nil]
          optional :sends_remaining_today, Integer, nil?: true
        end

        # @!method initialize(email_verified:, record_type:, status:, expires_at: nil, sends_remaining_today: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Enterprises::EnterpriseEmailVerificationStatus} for more
        #   details.
        #
        #   Verification state for an enterprise account's contact email.
        #
        #   @param email_verified [Boolean] Whether the enterprise account's contact email has been confirmed.
        #
        #   @param record_type [Symbol, Telnyx::Models::Enterprises::EnterpriseEmailVerificationStatus::RecordType] Always `email_verification`.
        #
        #   @param status [Symbol, Telnyx::Models::Enterprises::EnterpriseEmailVerificationStatus::Status] `sent` after a code is emailed; `verified` after a successful confirm.
        #
        #   @param expires_at [Time, nil] When the code just sent stops being accepted. Present on a send response; null o
        #
        #   @param sends_remaining_today [Integer, nil] How many more codes may be requested for this enterprise account today. Present

        # Always `email_verification`.
        #
        # @see Telnyx::Models::Enterprises::EnterpriseEmailVerificationStatus#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EMAIL_VERIFICATION = :email_verification

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # `sent` after a code is emailed; `verified` after a successful confirm.
        #
        # @see Telnyx::Models::Enterprises::EnterpriseEmailVerificationStatus#status
        module Status
          extend Telnyx::Internal::Type::Enum

          SENT = :sent
          VERIFIED = :verified

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    EnterpriseEmailVerificationStatus = Enterprises::EnterpriseEmailVerificationStatus
  end
end
