# typed: strong

module Telnyx
  module Resources
    class EmailInboxes
      # Create and manage agent inboxes, retrieve inbound messages and threads, and
      # reply to or forward messages.
      class Filters
        # Adds entries to either the allowlist or blocklist. The operation is an
        # idempotent set union: entries already present remain unchanged.
        sig do
          params(
            inbox_id: String,
            entries: T::Array[String],
            type:
              Telnyx::EmailInboxes::MutateInboxFiltersRequest::Type::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::EmailInboxes::FilterCreateResponse)
        end
        def create(
          # Email inbox UUID.
          inbox_id,
          entries:,
          # The list to change.
          type:,
          request_options: {}
        )
        end

        # Returns the inbox's sender allowlist and blocklist. Entries are normalized to
        # lowercase. A blocklist match takes precedence over an allowlist match; when both
        # lists are empty, all senders are accepted.
        sig do
          params(
            inbox_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::EmailInboxes::FilterListResponse)
        end
        def list(
          # Email inbox UUID.
          inbox_id,
          request_options: {}
        )
        end

        # Removes entries from either the allowlist or blocklist. The operation is
        # idempotent: removing an entry that is not present still returns the current
        # filter lists.
        sig do
          params(
            inbox_id: String,
            entries: T::Array[String],
            type:
              Telnyx::EmailInboxes::MutateInboxFiltersRequest::Type::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::EmailInboxes::FilterDeleteAllResponse)
        end
        def delete_all(
          # Email inbox UUID.
          inbox_id,
          entries:,
          # The list to change.
          type:,
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
