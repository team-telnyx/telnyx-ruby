# frozen_string_literal: true

module Telnyx
  module Resources
    # Named groups and group-scoped suppressions.
    class EmailUnsubscribeGroups
      # Named groups and group-scoped suppressions.
      # @return [Telnyx::Resources::EmailUnsubscribeGroups::Suppressions]
      attr_reader :suppressions

      # Creates an account-owned unsubscribe group for associating email categories with
      # separate recipient suppression lists.
      #
      # @overload create(name:, description: nil, request_options: {})
      #
      # @param name [String]
      # @param description [String, nil]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::UnsubscribeGroupResponse]
      #
      # @see Telnyx::Models::EmailUnsubscribeGroupCreateParams
      def create(params)
        parsed, options = Telnyx::EmailUnsubscribeGroupCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "email_unsubscribe_groups",
          body: parsed,
          model: Telnyx::UnsubscribeGroupResponse,
          options: options
        )
      end

      # Returns the account-owned unsubscribe group identified by ID.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Resource UUID. Malformed UUIDs are treated as not-found (not 400).
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::UnsubscribeGroupResponse]
      #
      # @see Telnyx::Models::EmailUnsubscribeGroupRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["email_unsubscribe_groups/%1$s", id],
          model: Telnyx::UnsubscribeGroupResponse,
          options: params[:request_options]
        )
      end

      # Partial update (only `name` / `description`). `PUT` is not routed.
      #
      # @overload update(id, description: nil, name: nil, request_options: {})
      #
      # @param id [String] Resource UUID. Malformed UUIDs are treated as not-found (not 400).
      #
      # @param description [String, nil]
      #
      # @param name [String]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::UnsubscribeGroupResponse]
      #
      # @see Telnyx::Models::EmailUnsubscribeGroupUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::EmailUnsubscribeGroupUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["email_unsubscribe_groups/%1$s", id],
          body: parsed,
          model: Telnyx::UnsubscribeGroupResponse,
          options: options
        )
      end

      # Offset pagination only (`page[number]` default 1, `page[size]` default 25, max
      # 100). No `sort`/`filter`/cursor — ordering fixed `desc created_at, desc id`.
      # Uses the shared `QueryParser.parse_offset/1` — a malformed `page` (e.g. flat
      # `?page=1` instead of `?page[number]=1`) returns `400` (code `10015`), consistent
      # with `GET /v2/email_blocks`. `meta` includes `total_pages`.
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer] Offset page number (≥1, default 1).
      #
      # @param page_size [Integer] Page size (1–100, default 25).
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::UnsubscribeGroup>]
      #
      # @see Telnyx::Models::EmailUnsubscribeGroupListParams
      def list(params = {})
        parsed, options = Telnyx::EmailUnsubscribeGroupListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "email_unsubscribe_groups",
          query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::UnsubscribeGroup,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailUnsubscribeGroupDeleteParams} for more details.
      #
      # If the group has 0 active suppressions, hard-deletes the row. With `force=true`,
      # soft-deletes all active suppressions first (status → `removed`, `group_id`
      # cleared, `removed` audit event per block) in a single transaction, then
      # hard-deletes the group. Without `force` and active suppressions present → `409`.
      # Audit trail is preserved. `force` only accepts the string `"true"` or boolean
      # `true`; all other values are false.
      #
      # @overload delete(id, force: nil, request_options: {})
      #
      # @param id [String] Resource UUID. Malformed UUIDs are treated as not-found (not 400).
      #
      # @param force [Symbol, Boolean, Telnyx::Models::EmailUnsubscribeGroupDeleteParams::Force] Force-delete a group with active suppressions. Only `"true"` (string) or `true`
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::EmailUnsubscribeGroupDeleteParams
      def delete(id, params = {})
        parsed, options = Telnyx::EmailUnsubscribeGroupDeleteParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :delete,
          path: ["email_unsubscribe_groups/%1$s", id],
          query: query,
          model: NilClass,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @suppressions = Telnyx::Resources::EmailUnsubscribeGroups::Suppressions.new(client: client)
      end
    end
  end
end
