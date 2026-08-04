# typed: strong

module Telnyx
  module Resources
    # Create and manage agent inboxes, retrieve inbound messages and threads, and
    # reply to or forward messages.
    class EmailInboxes
      # Create, list, retrieve, update, delete, and send unsent draft messages belonging
      # to an agent inbox.
      sig { returns(Telnyx::Resources::EmailInboxes::Drafts) }
      attr_reader :drafts

      # Create and manage agent inboxes, retrieve inbound messages and threads, and
      # reply to or forward messages.
      sig { returns(Telnyx::Resources::EmailInboxes::Filters) }
      attr_reader :filters

      sig { returns(Telnyx::Resources::EmailInboxes::Messages) }
      attr_reader :messages

      # Create and manage agent inboxes, retrieve inbound messages and threads, and
      # reply to or forward messages.
      sig { returns(Telnyx::Resources::EmailInboxes::Threads) }
      attr_reader :threads

      # Creates an inbox on an inbound-enabled domain. When `domain_id` is omitted,
      # Telnyx allocates the account's shared inbound subdomain so the inbox is
      # immediately usable without customer DNS setup. When `username` is omitted, a
      # unique username is generated.
      sig do
        params(
          domain_id: String,
          username: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailInboxResponse)
      end
      def create(
        # Account-owned, inbound-enabled domain UUID. The account's shared inbound
        # subdomain is allocated when omitted.
        domain_id: nil,
        # Inbox local part. Trimmed and lowercased before validation; the normalized value
        # must be 1-64 characters, start and end with a letter or digit, and contain only
        # letters, digits, dots, hyphens, and underscores. Generated when omitted.
        username: nil,
        request_options: {}
      )
      end

      # Returns an account-scoped, non-deleted inbox. Missing and foreign inboxes are
      # indistinguishable.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailInboxResponse)
      end
      def retrieve(
        # Email inbox UUID.
        id,
        request_options: {}
      )
      end

      # Lists the account's non-deleted inboxes newest first using stable cursor
      # pagination.
      sig do
        params(
          page_cursor: String,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::EmailInboxListResponse)
      end
      def list(
        # Opaque cursor returned by the previous inbox page.
        page_cursor: nil,
        # Number of results to return. Defaults to 20; maximum is 250.
        page_size: nil,
        request_options: {}
      )
      end

      # Soft-deletes an account-scoped inbox. Its address remains reserved and the inbox
      # is no longer returned by list or get operations.
      sig do
        params(id: String, request_options: Telnyx::RequestOptions::OrHash).void
      end
      def delete(
        # Email inbox UUID.
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
