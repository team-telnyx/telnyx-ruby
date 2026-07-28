# typed: strong

module Telnyx
  module Resources
    class EmailBlocks
      # Async CSV import of competitor suppression lists.
      class Import
        # Accepts `multipart/form-data` with a `file` field (the CSV) and an optional
        # `block_ttl_days` (integer >0, default 30). Validates:
        #
        # - content ≤ 25 MiB, else `413`
        # - row count ≤ 250 000, else `413`
        # - header-only / all-blank / undetectable provider → `400` Returns `202` with the
        #   import record (status `pending`); an Oban worker (`EmailBlockImportWorker`,
        #   max_attempts 3) transitions `pending → processing → completed | failed`.
        #   `block_ttl_days` applies only to imported `manual_block` rows; other reasons
        #   get `expires_at: nil`. Provider is auto-detected from the CSV header
        #   (`sendgrid` / `mailgun` / `ses` / `generic`).
        sig do
          params(
            file: Telnyx::Internal::FileInput,
            block_ttl_days: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::EmailBlocks::EmailBlockImportResponse)
        end
        def create(
          # The CSV file (Plug.Upload). Missing/non-upload → 400.
          file:,
          # TTL for imported `manual_block` rows; other reasons get `expires_at: null`.
          # Invalid/missing → falls back to 30.
          block_ttl_days: nil,
          request_options: {}
        )
        end

        # Account-scoped fetch (cross-account → 404; malformed UUID → 404). Nullable
        # fields are omitted until terminal: `provider`/`completed_at` when nil;
        # `processed_rows`/`created_count`/`existing_count`/ `skipped_count`/`error_count`
        # only when `status == completed`; `errors` only when non-empty; `failure_reason`
        # only on terminal failure.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::EmailBlocks::EmailBlockImportResponse)
        end
        def retrieve(
          # Resource UUID. Malformed UUIDs are treated as not-found (not 400).
          id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
