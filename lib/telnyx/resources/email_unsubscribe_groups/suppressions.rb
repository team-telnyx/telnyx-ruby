# frozen_string_literal: true

module Telnyx
  module Resources
    class EmailUnsubscribeGroups
      # Named groups and group-scoped suppressions.
      class Suppressions
        # Creates a suppression with `reason: unsubscribe`, `source: manual`,
        # `group_id: <this group>`. All other body fields are ignored; only `to` is read.
        # Idempotent (same dedupe key → `200`, no new event).
        #
        # @overload create(id, to:, request_options: {})
        #
        # @param id [String] Resource UUID. Malformed UUIDs are treated as not-found (not 400).
        #
        # @param to [String]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailBlockResponse]
        #
        # @see Telnyx::Models::EmailUnsubscribeGroups::SuppressionCreateParams
        def create(id, params)
          parsed, options = Telnyx::EmailUnsubscribeGroups::SuppressionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["email_unsubscribe_groups/%1$s/suppressions", id],
            body: parsed,
            model: Telnyx::EmailBlockResponse,
            options: options
          )
        end

        # Account + group scoped. Offset pagination only (`page[number]` default 1,
        # `page[size]` default 25, max 100). No `sort`/`filter`/ cursor — ordering fixed
        # `desc created_at, desc id`. Uses the shared `QueryParser.parse_offset/1` — a
        # malformed `page` returns `400` (code `10015`), consistent with
        # `GET /v2/email_blocks`. `meta` includes `total_pages`. Rows reuse the standard
        # suppression shape (`group_id` set to this group).
        #
        # @overload list(id, page_number: nil, page_size: nil, request_options: {})
        #
        # @param id [String] Resource UUID. Malformed UUIDs are treated as not-found (not 400).
        #
        # @param page_number [Integer] Offset page number (≥1, default 1).
        #
        # @param page_size [Integer] Page size (1–100, default 25).
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::EmailBlock>]
        #
        # @see Telnyx::Models::EmailUnsubscribeGroups::SuppressionListParams
        def list(id, params = {})
          parsed, options = Telnyx::EmailUnsubscribeGroups::SuppressionListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["email_unsubscribe_groups/%1$s/suppressions", id],
            query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::EmailBlock,
            options: options
          )
        end

        # Soft-deletes all active blocks for (account, group, normalized email) — one
        # `removed` audit event per block (`actor: manual`). The `email` path segment is
        # normalized (trim + lower-case) before matching. Idempotent on already-removed
        # rows (returns `404` since they're no longer `active`).
        #
        # Two distinct `404` cases: a missing/cross-account **group** returns
        # `10001 "The requested unsubscribe group was not found"`; a group that exists but
        # has **no active suppression** for that email returns
        # `10001 "The requested group suppression was not found"`.
        #
        # @overload delete(email, id:, request_options: {})
        #
        # @param email [String] Recipient address (normalized: trim + lower-case before matching).
        #
        # @param id [String] Resource UUID. Malformed UUIDs are treated as not-found (not 400).
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::EmailUnsubscribeGroups::SuppressionDeleteParams
        def delete(email, params)
          parsed, options = Telnyx::EmailUnsubscribeGroups::SuppressionDeleteParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["email_unsubscribe_groups/%1$s/suppressions/%2$s", id, email],
            model: NilClass,
            options: options
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
