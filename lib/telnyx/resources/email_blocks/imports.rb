# frozen_string_literal: true

module Telnyx
  module Resources
    class EmailBlocks
      # Async CSV import of competitor suppression lists.
      class Imports
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::EmailBlocks::ImportCreateParams} for more details.
        #
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
        #
        # @overload create(file:, block_ttl_days: nil, request_options: {})
        #
        # @param file [Pathname, StringIO, IO, String, Telnyx::FilePart] The CSV file (Plug.Upload). Missing/non-upload → 400.
        #
        # @param block_ttl_days [Integer] TTL for imported `manual_block` rows; other reasons get `expires_at: null`. Inva
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailBlocks::EmailBlockImportResponse]
        #
        # @see Telnyx::Models::EmailBlocks::ImportCreateParams
        def create(params)
          parsed, options = Telnyx::EmailBlocks::ImportCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "email_blocks/import",
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: Telnyx::EmailBlocks::EmailBlockImportResponse,
            options: options
          )
        end

        # Account-scoped fetch (cross-account → 404; malformed UUID → 404). Nullable
        # fields are omitted until terminal: `provider`/`completed_at` when nil;
        # `processed_rows`/`created_count`/`existing_count`/ `skipped_count`/`error_count`
        # only when `status == completed`; `errors` only when non-empty; `failure_reason`
        # only on terminal failure.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Resource UUID. Malformed UUIDs are treated as not-found (not 400).
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailBlocks::EmailBlockImportResponse]
        #
        # @see Telnyx::Models::EmailBlocks::ImportRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["email_blocks/import/%1$s", id],
            model: Telnyx::EmailBlocks::EmailBlockImportResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
