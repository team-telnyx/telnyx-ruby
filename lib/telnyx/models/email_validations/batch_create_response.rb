# frozen_string_literal: true

module Telnyx
  module Models
    module EmailValidations
      # @see Telnyx::Resources::EmailValidations::Batch#create
      class BatchCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   Shape returned by the create endpoint. Includes duplicates_removed.
        #
        #   @return [Telnyx::Models::EmailValidations::BatchCreateResponse::Data]
        required :data, -> { Telnyx::Models::EmailValidations::BatchCreateResponse::Data }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::EmailValidations::BatchCreateResponse::Data] Shape returned by the create endpoint. Includes duplicates_removed.

        # @see Telnyx::Models::EmailValidations::BatchCreateResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute duplicates_removed
          #
          #   @return [Integer]
          required :duplicates_removed, Integer

          # @!attribute record_type
          #
          #   @return [Symbol, Telnyx::Models::EmailValidations::BatchCreateResponse::Data::RecordType]
          required :record_type,
                   enum: -> { Telnyx::Models::EmailValidations::BatchCreateResponse::Data::RecordType }

          # @!attribute status
          #
          #   @return [Symbol, Telnyx::Models::EmailValidations::EmailValidationBatchStatus]
          required :status, enum: -> { Telnyx::EmailValidations::EmailValidationBatchStatus }

          # @!attribute total
          #
          #   @return [Integer]
          required :total, Integer

          # @!attribute webhook_url
          #
          #   @return [String, nil]
          optional :webhook_url, String

          # @!method initialize(id:, duplicates_removed:, record_type:, status:, total:, webhook_url: nil)
          #   Shape returned by the create endpoint. Includes duplicates_removed.
          #
          #   @param id [String]
          #   @param duplicates_removed [Integer]
          #   @param record_type [Symbol, Telnyx::Models::EmailValidations::BatchCreateResponse::Data::RecordType]
          #   @param status [Symbol, Telnyx::Models::EmailValidations::EmailValidationBatchStatus]
          #   @param total [Integer]
          #   @param webhook_url [String]

          # @see Telnyx::Models::EmailValidations::BatchCreateResponse::Data#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            EMAIL_VALIDATION_BATCH = :email_validation_batch

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
