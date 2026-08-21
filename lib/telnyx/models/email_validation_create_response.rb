# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailValidations#create
    class EmailValidationCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::EmailValidationCreateResponse::Data]
      required :data, -> { Telnyx::Models::EmailValidationCreateResponse::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::EmailValidationCreateResponse::Data]

      # @see Telnyx::Models::EmailValidationCreateResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute checks
        #
        #   @return [Telnyx::Models::EmailValidationChecks]
        required :checks, -> { Telnyx::EmailValidationChecks }

        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::EmailValidationCreateResponse::Data::RecordType]
        required :record_type, enum: -> { Telnyx::Models::EmailValidationCreateResponse::Data::RecordType }

        # @!attribute risk_score
        #
        #   @return [Float]
        required :risk_score, Float

        # @!attribute valid
        #
        #   @return [Boolean]
        required :valid, Telnyx::Internal::Type::Boolean

        # @!attribute did_you_mean
        #   Suggested correction for typo. Omitted when nil.
        #
        #   @return [String, nil]
        optional :did_you_mean, String

        # @!method initialize(checks:, email:, record_type:, risk_score:, valid:, did_you_mean: nil)
        #   @param checks [Telnyx::Models::EmailValidationChecks]
        #
        #   @param email [String]
        #
        #   @param record_type [Symbol, Telnyx::Models::EmailValidationCreateResponse::Data::RecordType]
        #
        #   @param risk_score [Float]
        #
        #   @param valid [Boolean]
        #
        #   @param did_you_mean [String] Suggested correction for typo. Omitted when nil.

        # @see Telnyx::Models::EmailValidationCreateResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EMAIL_VALIDATION = :email_validation

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
