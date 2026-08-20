# frozen_string_literal: true

module Telnyx
  module Models
    module EmailBlocks
      class EmailBlockImport < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute record_type
        #   View-only.
        #
        #   @return [Symbol, Telnyx::Models::EmailBlocks::EmailBlockImport::RecordType]
        required :record_type, enum: -> { Telnyx::EmailBlocks::EmailBlockImport::RecordType }

        # @!attribute status
        #
        #   @return [Symbol, Telnyx::Models::EmailBlocks::EmailBlockImport::Status]
        required :status, enum: -> { Telnyx::EmailBlocks::EmailBlockImport::Status }

        # @!attribute total
        #   Data-row count at upload.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute completed_at
        #   Omitted until terminal success.
        #
        #   @return [Time, nil]
        optional :completed_at, Time

        # @!attribute created_count
        #   Only when `status == completed`.
        #
        #   @return [Integer, nil]
        optional :created_count, Integer

        # @!attribute error_count
        #   Only when `status == completed`.
        #
        #   @return [Integer, nil]
        optional :error_count, Integer

        # @!attribute errors
        #   `{row_number: reason}`; only rendered when non-empty.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :errors, Telnyx::Internal::Type::HashOf[String]

        # @!attribute existing_count
        #   Only when `status == completed`.
        #
        #   @return [Integer, nil]
        optional :existing_count, Integer

        # @!attribute failure_reason
        #   Only on terminal failure.
        #
        #   @return [String, nil]
        optional :failure_reason, String

        # @!attribute processed_rows
        #   Only when `status == completed`.
        #
        #   @return [Integer, nil]
        optional :processed_rows, Integer

        # @!attribute provider
        #   Omitted when nil.
        #
        #   @return [Symbol, Telnyx::Models::EmailBlocks::EmailBlockImport::Provider, nil]
        optional :provider, enum: -> { Telnyx::EmailBlocks::EmailBlockImport::Provider }

        # @!attribute skipped_count
        #   Only when `status == completed`.
        #
        #   @return [Integer, nil]
        optional :skipped_count, Integer

        # @!method initialize(id:, created_at:, record_type:, status:, total:, updated_at:, completed_at: nil, created_count: nil, error_count: nil, errors: nil, existing_count: nil, failure_reason: nil, processed_rows: nil, provider: nil, skipped_count: nil)
        #   Import job. Schema fields hidden: `account_id`, `csv_content`, `block_ttl_days`.
        #   Nullable fields use the omit-nullable pattern.
        #
        #   @param id [String]
        #
        #   @param created_at [Time]
        #
        #   @param record_type [Symbol, Telnyx::Models::EmailBlocks::EmailBlockImport::RecordType] View-only.
        #
        #   @param status [Symbol, Telnyx::Models::EmailBlocks::EmailBlockImport::Status]
        #
        #   @param total [Integer] Data-row count at upload.
        #
        #   @param updated_at [Time]
        #
        #   @param completed_at [Time] Omitted until terminal success.
        #
        #   @param created_count [Integer] Only when `status == completed`.
        #
        #   @param error_count [Integer] Only when `status == completed`.
        #
        #   @param errors [Hash{Symbol=>String}] `{row_number: reason}`; only rendered when non-empty.
        #
        #   @param existing_count [Integer] Only when `status == completed`.
        #
        #   @param failure_reason [String] Only on terminal failure.
        #
        #   @param processed_rows [Integer] Only when `status == completed`.
        #
        #   @param provider [Symbol, Telnyx::Models::EmailBlocks::EmailBlockImport::Provider] Omitted when nil.
        #
        #   @param skipped_count [Integer] Only when `status == completed`.

        # View-only.
        #
        # @see Telnyx::Models::EmailBlocks::EmailBlockImport#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EMAIL_BLOCK_IMPORT = :email_block_import

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::EmailBlocks::EmailBlockImport#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          PROCESSING = :processing
          COMPLETED = :completed
          FAILED = :failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Omitted when nil.
        #
        # @see Telnyx::Models::EmailBlocks::EmailBlockImport#provider
        module Provider
          extend Telnyx::Internal::Type::Enum

          SENDGRID = :sendgrid
          MAILGUN = :mailgun
          SES = :ses
          GENERIC = :generic

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    EmailBlockImport = EmailBlocks::EmailBlockImport
  end
end
