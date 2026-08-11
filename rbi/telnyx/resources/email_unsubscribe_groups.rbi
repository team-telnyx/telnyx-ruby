# typed: strong

module Telnyx
  module Resources
    # Named groups and group-scoped suppressions.
    class EmailUnsubscribeGroups
      # Named groups and group-scoped suppressions.
      sig { returns(Telnyx::Resources::EmailUnsubscribeGroups::Suppressions) }
      attr_reader :suppressions

      # Creates an account-owned unsubscribe group for associating email categories with
      # separate recipient suppression lists.
      sig do
        params(
          name: String,
          description: T.nilable(String),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::UnsubscribeGroupResponse)
      end
      def create(name:, description: nil, request_options: {})
      end

      # Returns the account-owned unsubscribe group identified by ID.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::UnsubscribeGroupResponse)
      end
      def retrieve(
        # Resource UUID. Malformed UUIDs are treated as not-found (not 400).
        id,
        request_options: {}
      )
      end

      # Partial update (only `name` / `description`). `PUT` is not routed.
      sig do
        params(
          id: String,
          description: T.nilable(String),
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::UnsubscribeGroupResponse)
      end
      def update(
        # Resource UUID. Malformed UUIDs are treated as not-found (not 400).
        id,
        description: nil,
        name: nil,
        request_options: {}
      )
      end

      # Offset pagination only (`page[number]` default 1, `page[size]` default 25, max
      # 100). No `sort`/`filter`/cursor — ordering fixed `desc created_at, desc id`.
      # Uses the shared `QueryParser.parse_offset/1` — a malformed `page` (e.g. flat
      # `?page=1` instead of `?page[number]=1`) returns `400` (code `10015`), consistent
      # with `GET /v2/email_blocks`. `meta` includes `total_pages`.
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::UnsubscribeGroup]
        )
      end
      def list(
        # Offset page number (≥1, default 1).
        page_number: nil,
        # Page size (1–100, default 25).
        page_size: nil,
        request_options: {}
      )
      end

      # If the group has 0 active suppressions, hard-deletes the row. With `force=true`,
      # soft-deletes all active suppressions first (status → `removed`, `group_id`
      # cleared, `removed` audit event per block) in a single transaction, then
      # hard-deletes the group. Without `force` and active suppressions present → `409`.
      # Audit trail is preserved. `force` only accepts the string `"true"` or boolean
      # `true`; all other values are false.
      sig do
        params(
          id: String,
          force:
            T.any(
              Telnyx::EmailUnsubscribeGroupDeleteParams::Force::OrSymbol,
              T::Boolean
            ),
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Resource UUID. Malformed UUIDs are treated as not-found (not 400).
        id,
        # Force-delete a group with active suppressions. Only `"true"` (string) or `true`
        # (bool) are truthy; all other values are false.
        force: nil,
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
