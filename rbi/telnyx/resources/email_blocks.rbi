# typed: strong

module Telnyx
  module Resources
    # Recipient suppression records (`/v2/email_blocks`).
    class EmailBlocks
      # Async CSV import of competitor suppression lists.
      sig { returns(Telnyx::Resources::EmailBlocks::Imports) }
      attr_reader :imports

      # Creates a suppression with `reason: manual_block` and `source: manual`.
      # Caller-supplied `reason` / `source` are **ignored**; `scope` is **derived**
      # server-side from `domain_id` / `from` and is never trusted. Idempotent: if a
      # matching row already exists (NULL-safe dedupe key: account_id, scope, to,
      # reason, domain_id, from), returns the existing record with `200` (no new audit
      # event).
      #
      # `bounce_category`, `dsn_code`, `meta`, and `group_id` are **not accepted** on
      # the public surface. Use the unsubscribe-group suppression endpoint or the
      # internal create surface for those.
      sig do
        params(
          to: String,
          domain_id: T.nilable(String),
          expires_at: T.nilable(Time),
          from: T.nilable(String),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailBlockResponse)
      end
      def create(
        # Recipient address (normalized: trim + lower-case).
        to:,
        # `null` ⇒ account scope.
        domain_id: nil,
        expires_at: nil,
        # Sender address (normalized). `null` ⇒ account/domain scope.
        from: nil,
        request_options: {}
      )
      end

      # Returns the account-owned suppression identified by ID. Cross-account lookups
      # and malformed IDs return `404` without exposing another account’s data.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailBlockResponse)
      end
      def retrieve(
        # Resource UUID. Malformed UUIDs are treated as not-found (not 400).
        id,
        request_options: {}
      )
      end

      # Account-scoped list. Two mutually exclusive pagination modes:
      #
      # - **Offset**: `page[number]` (default 1) + `page[size]` (default 25, max 100).
      #   `meta` contains `total_pages`.
      # - **Cursor**: `page[after]` and/or `page[before]` (opaque `Base.url_encode64` of
      #   `{"created_at","id"}`). Cannot combine with `page[number]`; `after`+`before`
      #   together is an error. `meta` contains `next_cursor` / `previous_cursor`
      #   (omitted when their flag is false).
      #
      # Sort defaults to `-created_at` (desc); only `created_at` is sortable. A `--`
      # prefix is an error. `nil`/empty filter values are silently dropped.
      sig do
        params(
          filter_created_after: Time,
          filter_created_before: Time,
          filter_domain_id: String,
          filter_reason: Telnyx::EmailBlockListParams::FilterReason::OrSymbol,
          page_after: String,
          page_before: String,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::EmailBlockListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultFlatPagination[Telnyx::EmailBlock])
      end
      def list(
        # `created_at > value` (ISO 8601).
        filter_created_after: nil,
        # `created_at < value` (ISO 8601).
        filter_created_before: nil,
        # Exact-match filter on domain_id (UUID).
        filter_domain_id: nil,
        # Exact-match filter on reason.
        filter_reason: nil,
        # Opaque cursor (`Base.url_encode64` of `{"created_at","id"}`). Cursor mode;
        # mutually exclusive with `page[number]` and `page[before]`.
        page_after: nil,
        # Opaque cursor (see `page[after]`). Mutually exclusive with `page[after]` and
        # `page[number]`.
        page_before: nil,
        # Offset page number (≥1, default 1).
        page_number: nil,
        # Page size (1–100, default 25).
        page_size: nil,
        # Sort field. Leading `-` = desc; only `created_at` is sortable. Default
        # `-created_at`. `--` is an error.
        sort: nil,
        request_options: {}
      )
      end

      # Soft-deletes (status → `removed`; tombstone retained). A `removed` audit event
      # is appended unless the block was already `removed` (idempotent — returns the
      # existing row with `200` and no new event). Mutates `updated_at`.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailBlockResponse)
      end
      def delete(
        # Resource UUID. Malformed UUIDs are treated as not-found (not 400).
        id,
        request_options: {}
      )
      end

      # Offset pagination only (`page[number]` default 1, `page[size]` default **50**,
      # max 100). No `sort`, no `filter`, no cursor — ordering is fixed
      # `desc occurred_at, desc id`. Verifies the block belongs to the account first
      # (cross-account → 404).
      sig do
        params(
          id: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::EmailBlockRetrieveEventsResponse
          ]
        )
      end
      def retrieve_events(
        # Resource UUID. Malformed UUIDs are treated as not-found (not 400).
        id,
        # Offset page number (≥1, default 1).
        page_number: nil,
        # Page size (default 50, max 100).
        page_size: nil,
        request_options: {}
      )
      end

      # Streams the account's suppressions as a chunked CSV (server-side cursor; never
      # materialized). Content-type `text/csv`, header
      # `Content-Disposition: attachment; filename="email_blocks_export.csv"`.
      #
      # Filters (`filter[reason]`, `filter[domain_id]`, `filter[created_after]`,
      # `filter[created_before]`) are the only params that affect output. `sort` and
      # `page[*]` are **parsed** (bad values still produce `400`) but **ignored** — rows
      # stream `ORDER BY created_at ASC, id ASC` with no pagination.
      #
      # CSV columns:
      # `id,to,from,reason,source,scope,status,domain_id, created_at,updated_at,expires_at,group_id`.
      # The CSV carries the `group_id` column so group-scoped suppressions' group link
      # survives the export (empty for account-scope rows).
      sig do
        params(
          filter_created_after: Time,
          filter_created_before: Time,
          filter_domain_id: String,
          filter_reason:
            Telnyx::EmailBlockRetrieveExportParams::FilterReason::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::EmailBlockRetrieveExportParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(String)
      end
      def retrieve_export(
        # `created_at > value` (ISO 8601).
        filter_created_after: nil,
        # `created_at < value` (ISO 8601).
        filter_created_before: nil,
        # Exact-match filter on domain_id (UUID).
        filter_domain_id: nil,
        # Exact-match filter on reason.
        filter_reason: nil,
        # Offset page number (≥1, default 1).
        page_number: nil,
        # Page size (1–100, default 25).
        page_size: nil,
        # Sort field. Leading `-` = desc; only `created_at` is sortable. Default
        # `-created_at`. `--` is an error.
        sort: nil,
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
