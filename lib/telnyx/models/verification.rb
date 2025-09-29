# frozen_string_literal: true

module Telnyx
  module Models
    class Verification < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute created_at
      #
      #   @return [String, nil]
      optional :created_at, String

      # @!attribute custom_code
      #   Send a self-generated numeric code to the end-user
      #
      #   @return [String, nil]
      optional :custom_code, String, nil?: true

      # @!attribute phone_number
      #   +E164 formatted phone number.
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!attribute record_type
      #   The possible verification record types.
      #
      #   @return [Symbol, Telnyx::Models::Verification::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::Verification::RecordType }

      # @!attribute status
      #   The possible statuses of the verification request.
      #
      #   @return [Symbol, Telnyx::Models::Verification::Status, nil]
      optional :status, enum: -> { Telnyx::Verification::Status }

      # @!attribute timeout_secs
      #   This is the number of seconds before the code of the request is expired. Once
      #   this request has expired, the code will no longer verify the user. Note: this
      #   will override the `default_verification_timeout_secs` on the Verify profile.
      #
      #   @return [Integer, nil]
      optional :timeout_secs, Integer

      # @!attribute type
      #   The possible types of verification.
      #
      #   @return [Symbol, Telnyx::Models::Verification::Type, nil]
      optional :type, enum: -> { Telnyx::Verification::Type }

      # @!attribute updated_at
      #
      #   @return [String, nil]
      optional :updated_at, String

      # @!attribute verify_profile_id
      #   The identifier of the associated Verify profile.
      #
      #   @return [String, nil]
      optional :verify_profile_id, String

      # @!method initialize(id: nil, created_at: nil, custom_code: nil, phone_number: nil, record_type: nil, status: nil, timeout_secs: nil, type: nil, updated_at: nil, verify_profile_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::Verification} for more details.
      #
      #   @param id [String]
      #
      #   @param created_at [String]
      #
      #   @param custom_code [String, nil] Send a self-generated numeric code to the end-user
      #
      #   @param phone_number [String] +E164 formatted phone number.
      #
      #   @param record_type [Symbol, Telnyx::Models::Verification::RecordType] The possible verification record types.
      #
      #   @param status [Symbol, Telnyx::Models::Verification::Status] The possible statuses of the verification request.
      #
      #   @param timeout_secs [Integer] This is the number of seconds before the code of the request is expired. Once th
      #
      #   @param type [Symbol, Telnyx::Models::Verification::Type] The possible types of verification.
      #
      #   @param updated_at [String]
      #
      #   @param verify_profile_id [String] The identifier of the associated Verify profile.

      # The possible verification record types.
      #
      # @see Telnyx::Models::Verification#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        VERIFICATION = :verification

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The possible statuses of the verification request.
      #
      # @see Telnyx::Models::Verification#status
      module Status
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        ACCEPTED = :accepted
        INVALID = :invalid
        EXPIRED = :expired
        ERROR = :error

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The possible types of verification.
      #
      # @see Telnyx::Models::Verification#type
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
