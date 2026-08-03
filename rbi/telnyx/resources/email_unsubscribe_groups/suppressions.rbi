# typed: strong

module Telnyx
  module Resources
    class EmailUnsubscribeGroups
      # Named groups and group-scoped suppressions.
      class Suppressions
        # Creates a suppression with `reason: unsubscribe`, `source: manual`,
        # `group_id: <this group>`. All other body fields are ignored; only `to` is read.
        # Idempotent (same dedupe key → `200`, no new event).
        sig do
          params(
            id: String,
            to: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::EmailBlockResponse)
        end
        def create(
          # Resource UUID. Malformed UUIDs are treated as not-found (not 400).
          id,
          to:,
          request_options: {}
        )
        end

        # Account + group scoped. Offset pagination only (`page[number]` default 1,
        # `page[size]` default 25, max 100). No `sort`/`filter`/ cursor — ordering fixed
        # `desc created_at, desc id`. Uses the shared `QueryParser.parse_offset/1` — a
        # malformed `page` returns `400` (code `10015`), consistent with
        # `GET /v2/email_blocks`. `meta` includes `total_pages`. Rows reuse the standard
        # suppression shape (`group_id` set to this group).
        sig do
          params(
            id: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Internal::DefaultFlatPagination[Telnyx::EmailBlock])
        end
        def list(
          # Resource UUID. Malformed UUIDs are treated as not-found (not 400).
          id,
          # Offset page number (≥1, default 1).
          page_number: nil,
          # Page size (1–100, default 25).
          page_size: nil,
          request_options: {}
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
        sig do
          params(
            email: String,
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Recipient address (normalized: trim + lower-case before matching).
          email,
          # Resource UUID. Malformed UUIDs are treated as not-found (not 400).
          id:,
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
