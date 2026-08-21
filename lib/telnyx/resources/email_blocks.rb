# frozen_string_literal: true

module Telnyx
  module Resources
    # Recipient suppression records (`/v2/email_blocks`).
    class EmailBlocks
      # Async CSV import of competitor suppression lists.
      # @return [Telnyx::Resources::EmailBlocks::Imports]
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
      #
      # @overload create(to:, domain_id: nil, expires_at: nil, from: nil, request_options: {})
      #
      # @param to [String] Recipient address (normalized: trim + lower-case).
      #
      # @param domain_id [String, nil] `null` ⇒ account scope.
      #
      # @param expires_at [Time, nil]
      #
      # @param from [String, nil] Sender address (normalized). `null` ⇒ account/domain scope.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailBlockResponse]
      #
      # @see Telnyx::Models::EmailBlockCreateParams
      def create(params)
        parsed, options = Telnyx::EmailBlockCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "email_blocks",
          body: parsed,
          model: Telnyx::EmailBlockResponse,
          options: options
        )
      end

      # Returns the account-owned suppression identified by ID. Cross-account lookups
      # and malformed IDs return `404` without exposing another account’s data.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Resource UUID. Malformed UUIDs are treated as not-found (not 400).
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailBlockResponse]
      #
      # @see Telnyx::Models::EmailBlockRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["email_blocks/%1$s", id],
          model: Telnyx::EmailBlockResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailBlockListParams} for more details.
      #
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
      #
      # @overload list(filter_created_after: nil, filter_created_before: nil, filter_domain_id: nil, filter_reason: nil, page_after: nil, page_before: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #
      # @param filter_created_after [Time] `created_at > value` (ISO 8601).
      #
      # @param filter_created_before [Time] `created_at < value` (ISO 8601).
      #
      # @param filter_domain_id [String] Exact-match filter on domain_id (UUID).
      #
      # @param filter_reason [Symbol, Telnyx::Models::EmailBlockListParams::FilterReason] Exact-match filter on reason.
      #
      # @param page_after [String] Opaque cursor (`Base.url_encode64` of `{"created_at","id"}`). Cursor mode; mutua
      #
      # @param page_before [String] Opaque cursor (see `page[after]`). Mutually exclusive with `page[after]` and `pa
      #
      # @param page_number [Integer] Offset page number (≥1, default 1).
      #
      # @param page_size [Integer] Page size (1–100, default 25).
      #
      # @param sort [Symbol, Telnyx::Models::EmailBlockListParams::Sort] Sort field. Leading `-` = desc; only `created_at` is sortable. Default `-created
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::EmailBlock>]
      #
      # @see Telnyx::Models::EmailBlockListParams
      def list(params = {})
        parsed, options = Telnyx::EmailBlockListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "email_blocks",
          query: query.transform_keys(
            filter_created_after: "filter[created_after]",
            filter_created_before: "filter[created_before]",
            filter_domain_id: "filter[domain_id]",
            filter_reason: "filter[reason]",
            page_after: "page[after]",
            page_before: "page[before]",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::EmailBlock,
          options: options
        )
      end

      # Soft-deletes (status → `removed`; tombstone retained). A `removed` audit event
      # is appended unless the block was already `removed` (idempotent — returns the
      # existing row with `200` and no new event). Mutates `updated_at`.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Resource UUID. Malformed UUIDs are treated as not-found (not 400).
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailBlockResponse]
      #
      # @see Telnyx::Models::EmailBlockDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["email_blocks/%1$s", id],
          model: Telnyx::EmailBlockResponse,
          options: params[:request_options]
        )
      end

      # Offset pagination only (`page[number]` default 1, `page[size]` default **50**,
      # max 100). No `sort`, no `filter`, no cursor — ordering is fixed
      # `desc occurred_at, desc id`. Verifies the block belongs to the account first
      # (cross-account → 404).
      #
      # @overload retrieve_events(id, page_number: nil, page_size: nil, request_options: {})
      #
      # @param id [String] Resource UUID. Malformed UUIDs are treated as not-found (not 400).
      #
      # @param page_number [Integer] Offset page number (≥1, default 1).
      #
      # @param page_size [Integer] Page size (default 50, max 100).
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::EmailBlockRetrieveEventsResponse>]
      #
      # @see Telnyx::Models::EmailBlockRetrieveEventsParams
      def retrieve_events(id, params = {})
        parsed, options = Telnyx::EmailBlockRetrieveEventsParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["email_blocks/%1$s/events", id],
          query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::EmailBlockRetrieveEventsResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailBlockRetrieveExportParams} for more details.
      #
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
      #
      # @overload retrieve_export(filter_created_after: nil, filter_created_before: nil, filter_domain_id: nil, filter_reason: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #
      # @param filter_created_after [Time] `created_at > value` (ISO 8601).
      #
      # @param filter_created_before [Time] `created_at < value` (ISO 8601).
      #
      # @param filter_domain_id [String] Exact-match filter on domain_id (UUID).
      #
      # @param filter_reason [Symbol, Telnyx::Models::EmailBlockRetrieveExportParams::FilterReason] Exact-match filter on reason.
      #
      # @param page_number [Integer] Offset page number (≥1, default 1).
      #
      # @param page_size [Integer] Page size (1–100, default 25).
      #
      # @param sort [Symbol, Telnyx::Models::EmailBlockRetrieveExportParams::Sort] Sort field. Leading `-` = desc; only `created_at` is sortable. Default `-created
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      #
      # @see Telnyx::Models::EmailBlockRetrieveExportParams
      def retrieve_export(params = {})
        parsed, options = Telnyx::EmailBlockRetrieveExportParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "email_blocks/export",
          query: query.transform_keys(
            filter_created_after: "filter[created_after]",
            filter_created_before: "filter[created_before]",
            filter_domain_id: "filter[domain_id]",
            filter_reason: "filter[reason]",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          headers: {"accept" => "text/csv"},
          model: String,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @imports = Telnyx::Resources::EmailBlocks::Imports.new(client: client)
      end
    end
  end
end
