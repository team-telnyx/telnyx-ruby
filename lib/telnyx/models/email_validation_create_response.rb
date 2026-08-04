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
        #   @return [Telnyx::Models::EmailValidationCreateResponse::Data::Checks]
        required :checks, -> { Telnyx::Models::EmailValidationCreateResponse::Data::Checks }

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
        #   @param checks [Telnyx::Models::EmailValidationCreateResponse::Data::Checks]
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

        # @see Telnyx::Models::EmailValidationCreateResponse::Data#checks
        class Checks < Telnyx::Internal::Type::BaseModel
          # @!attribute disposable
          #
          #   @return [Telnyx::Models::EmailValidationCheck]
          required :disposable, -> { Telnyx::EmailValidationCheck }

          # @!attribute mx
          #
          #   @return [Telnyx::Models::EmailValidationCheck]
          required :mx, -> { Telnyx::EmailValidationCheck }

          # @!attribute role_based
          #
          #   @return [Telnyx::Models::EmailValidationCheck]
          required :role_based, -> { Telnyx::EmailValidationCheck }

          # @!attribute syntax
          #
          #   @return [Telnyx::Models::EmailValidationCheck]
          required :syntax, -> { Telnyx::EmailValidationCheck }

          # @!attribute typo
          #
          #   @return [Telnyx::Models::EmailValidationCreateResponse::Data::Checks::Typo]
          required :typo, -> { Telnyx::Models::EmailValidationCreateResponse::Data::Checks::Typo }

          # @!method initialize(disposable:, mx:, role_based:, syntax:, typo:)
          #   @param disposable [Telnyx::Models::EmailValidationCheck]
          #   @param mx [Telnyx::Models::EmailValidationCheck]
          #   @param role_based [Telnyx::Models::EmailValidationCheck]
          #   @param syntax [Telnyx::Models::EmailValidationCheck]
          #   @param typo [Telnyx::Models::EmailValidationCreateResponse::Data::Checks::Typo]

          # @see Telnyx::Models::EmailValidationCreateResponse::Data::Checks#typo
          class Typo < Telnyx::Models::EmailValidationCheck
            # @!attribute suggestion
            #   Suggested correction for common typos. Omitted when nil.
            #
            #   @return [String, nil]
            optional :suggestion, String

            # @!method initialize(suggestion: nil)
            #   @param suggestion [String] Suggested correction for common typos. Omitted when nil.
          end
        end

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
