# frozen_string_literal: true

module Telnyx
  module Resources
    # Create and manage agent inboxes, retrieve inbound messages and threads, and
    # reply to or forward messages.
    class EmailInboxes
      # Create, list, retrieve, update, delete, and send unsent draft messages belonging
      # to an agent inbox.
      # @return [Telnyx::Resources::EmailInboxes::Drafts]
      attr_reader :drafts

      # Create and manage agent inboxes, retrieve inbound messages and threads, and
      # reply to or forward messages.
      # @return [Telnyx::Resources::EmailInboxes::Filters]
      attr_reader :filters

      # @return [Telnyx::Resources::EmailInboxes::Messages]
      attr_reader :messages

      # Create and manage agent inboxes, retrieve inbound messages and threads, and
      # reply to or forward messages.
      # @return [Telnyx::Resources::EmailInboxes::Threads]
      attr_reader :threads

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailInboxCreateParams} for more details.
      #
      # Creates an inbox on an inbound-enabled domain. When `domain_id` is omitted,
      # Telnyx allocates the account's shared inbound subdomain so the inbox is
      # immediately usable without customer DNS setup. When `username` is omitted, a
      # unique username is generated.
      #
      # @overload create(domain_id: nil, username: nil, request_options: {})
      #
      # @param domain_id [String] Account-owned, inbound-enabled domain UUID. The account's shared inbound subdoma
      #
      # @param username [String] Inbox local part. Trimmed and lowercased before validation; the normalized value
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailInboxResponse]
      #
      # @see Telnyx::Models::EmailInboxCreateParams
      def create(params = {})
        parsed, options = Telnyx::EmailInboxCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "email_inboxes",
          body: parsed,
          model: Telnyx::EmailInboxResponse,
          options: options
        )
      end

      # Returns an account-scoped, non-deleted inbox. Missing and foreign inboxes are
      # indistinguishable.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Email inbox UUID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailInboxResponse]
      #
      # @see Telnyx::Models::EmailInboxRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["email_inboxes/%1$s", id],
          model: Telnyx::EmailInboxResponse,
          options: params[:request_options]
        )
      end

      # Lists the account's non-deleted inboxes newest first using stable cursor
      # pagination.
      #
      # @overload list(page_cursor: nil, page_size: nil, request_options: {})
      #
      # @param page_cursor [String] Opaque cursor returned by the previous inbox page.
      #
      # @param page_size [Integer] Number of results to return. Defaults to 20; maximum is 250.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailInboxListResponse]
      #
      # @see Telnyx::Models::EmailInboxListParams
      def list(params = {})
        parsed, options = Telnyx::EmailInboxListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "email_inboxes",
          query: query,
          model: Telnyx::Models::EmailInboxListResponse,
          options: options
        )
      end

      # Soft-deletes an account-scoped inbox. Its address remains reserved and the inbox
      # is no longer returned by list or get operations.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Email inbox UUID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::EmailInboxDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["email_inboxes/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @drafts = Telnyx::Resources::EmailInboxes::Drafts.new(client: client)
        @filters = Telnyx::Resources::EmailInboxes::Filters.new(client: client)
        @messages = Telnyx::Resources::EmailInboxes::Messages.new(client: client)
        @threads = Telnyx::Resources::EmailInboxes::Threads.new(client: client)
      end
    end
  end
end
