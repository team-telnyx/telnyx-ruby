# frozen_string_literal: true

module Telnyx
  module Models
    module EmailValidations
      # @see Telnyx::Resources::EmailValidations::Batch#retrieve
      class BatchRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   Shape returned by the GET endpoint. Does not include duplicates_removed.
        #
        #   @return [Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data]
        required :data, -> { Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data] Shape returned by the GET endpoint. Does not include duplicates_removed.

        # @see Telnyx::Models::EmailValidations::BatchRetrieveResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute record_type
          #
          #   @return [Symbol, Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::RecordType]
          required :record_type,
                   enum: -> { Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::RecordType }

          # @!attribute status
          #
          #   @return [Symbol, Telnyx::Models::EmailValidations::EmailValidationBatchStatus]
          required :status, enum: -> { Telnyx::EmailValidations::EmailValidationBatchStatus }

          # @!attribute total
          #
          #   @return [Integer]
          required :total, Integer

          # @!attribute completed_at
          #
          #   @return [Time, nil]
          optional :completed_at, Time

          # @!attribute results
          #   Map keyed by original email address. Present only when the batch is completed.
          #
          #   @return [Hash{Symbol=>Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result}, nil]
          optional :results,
                   -> { Telnyx::Internal::Type::HashOf[Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result] }

          # @!attribute webhook_url
          #
          #   @return [String, nil]
          optional :webhook_url, String

          # @!method initialize(id:, record_type:, status:, total:, completed_at: nil, results: nil, webhook_url: nil)
          #   Shape returned by the GET endpoint. Does not include duplicates_removed.
          #
          #   @param id [String]
          #
          #   @param record_type [Symbol, Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::RecordType]
          #
          #   @param status [Symbol, Telnyx::Models::EmailValidations::EmailValidationBatchStatus]
          #
          #   @param total [Integer]
          #
          #   @param completed_at [Time]
          #
          #   @param results [Hash{Symbol=>Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result}] Map keyed by original email address. Present only when the batch is completed.
          #
          #   @param webhook_url [String]

          # @see Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            EMAIL_VALIDATION_BATCH = :email_validation_batch

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class Result < Telnyx::Internal::Type::BaseModel
            # @!attribute checks
            #
            #   @return [Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::Checks]
            required :checks, -> { Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::Checks }

            # @!attribute email
            #
            #   @return [String]
            required :email, String

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

            # @!method initialize(checks:, email:, risk_score:, valid:, did_you_mean: nil)
            #   @param checks [Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::Checks]
            #
            #   @param email [String]
            #
            #   @param risk_score [Float]
            #
            #   @param valid [Boolean]
            #
            #   @param did_you_mean [String] Suggested correction for typo. Omitted when nil.

            # @see Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result#checks
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
              #   @return [Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::Checks::Typo]
              required :typo, -> { Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::Checks::Typo }

              # @!method initialize(disposable:, mx:, role_based:, syntax:, typo:)
              #   @param disposable [Telnyx::Models::EmailValidationCheck]
              #   @param mx [Telnyx::Models::EmailValidationCheck]
              #   @param role_based [Telnyx::Models::EmailValidationCheck]
              #   @param syntax [Telnyx::Models::EmailValidationCheck]
              #   @param typo [Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::Checks::Typo]

              # @see Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::Checks#typo
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
          end
        end
      end
    end
  end
end
