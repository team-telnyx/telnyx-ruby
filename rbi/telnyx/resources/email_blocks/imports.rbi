# typed: strong

module Telnyx
  module Resources
    class EmailBlocks
      # Async CSV import of competitor suppression lists.
      class Imports
        # Accepts `multipart/form-data` with a `file` field (the CSV) and an optional
        # `block_ttl_days` (integer >0, default 30). Validates:
        #
        # - content ≤ 25 MiB, else `413`
        # - row count ≤ 250 000, else `413`
        # - header-only / all-blank / undetectable provider → `400` Returns `202` with the
        #   import record (status `pending`); an Oban worker (`EmailBlockImportWorker`,
        #   max_attempts 3) transitions `pending → processing → completed | failed`.
        #
        # Native Telnyx exports are detected by the stable first-12-column header
        # signature (`id` … `group_id`) and are restored with their original `from`,
        # `domain_id`, `group_id`, `source`, `status`, `expires_at`, plus
        # `bounce_category`, `dsn_code`, and `meta` when present (`scope` is re-derived
        # from `domain_id`/`from`; the exported `scope` cell must be a valid enum value).
        # Lifecycle changes reconcile through the same create path as the API: a row
        # already in the requested state restores its mutable backup fields without a new
        # audit event, and a real transition (e.g. tombstone → active) appends the
        # matching lifecycle event. `block_ttl_days` is not applied to native rows — their
        # exported `expires_at` is preserved verbatim.
        #
        # Competitor and generic imports (SendGrid / Mailgun / SES / generic) remain
        # account-scoped (`from`, `domain_id`, `group_id`, `scope` are not read) and
        # `block_ttl_days` applies only to imported `manual_block` rows; other reasons get
        # `expires_at: nil`. Provider is auto-detected from the CSV header (`sendgrid` /
        # `mailgun` / `ses` / `generic`).
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
