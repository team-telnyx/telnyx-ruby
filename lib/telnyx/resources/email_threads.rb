# frozen_string_literal: true

module Telnyx
  module Resources
    # Account-wide conversation threads across every inbox, for agents operating many
    # inboxes at once.
    class EmailThreads
      # Returns a thread and a bounded page of its inbound and outbound messages,
      # interleaved in chronological order. The `inbox_id` returned by the list endpoint
      # is required because a thread ID can occur in multiple inboxes. Only messages
      # matching that `(inbox_id, thread_id)` pair are returned. Threads outside the
      # account return an opaque 404.
      #
      # @overload retrieve(thread_id, inbox_id:, page_after: nil, page_size: nil, request_options: {})
      #
      # @param thread_id [String] Email thread UUID.
      #
      # @param inbox_id [String] Inbox UUID that, together with `thread_id`, identifies the thread.
      #
      # @param page_after [String] Opaque message cursor returned by the previous thread-detail page.
      #
      # @param page_size [Integer] Number of thread messages to return. Defaults to 25; maximum is 100.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailThreadRetrieveResponse]
      #
      # @see Telnyx::Models::EmailThreadRetrieveParams
      def retrieve(thread_id, params)
        parsed, options = Telnyx::EmailThreadRetrieveParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["email_threads/%1$s", thread_id],
          query: query.transform_keys(page_after: "page[after]", page_size: "page[size]"),
          model: Telnyx::Models::EmailThreadRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailThreadListParams} for more details.
      #
      # Lists thread summaries for the whole account, newest first, using stable cursor
      # pagination. An agent operating many inboxes gets every conversation in one call
      # instead of one call per inbox. Each thread carries its own `inbox_id` so a reply
      # can be routed back to the right inbox. Use `filter[inbox_id]` (repeatable) to
      # narrow the result to specific inboxes. Because a thread ID can be delivered to
      # multiple inboxes, each result is identified by its `(inbox_id, id)` pair.
      #
      # @overload list(filter_inbox_id: nil, filter_label: nil, page_after: nil, page_size: nil, request_options: {})
      #
      # @param filter_inbox_id [Array<String>] Restrict results to one or more inboxes. Repeat the parameter
      #
      # @param filter_label [String] Returns only threads carrying this label. Matching is exact and case-sensitive.
      #
      # @param page_after [String] Opaque cursor returned by the previous page.
      #
      # @param page_size [Integer] Number of results to return. Defaults to 25; maximum is 100.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailInboxes::InboundThreadListResponse]
      #
      # @see Telnyx::Models::EmailThreadListParams
      def list(params = {})
        parsed, options = Telnyx::EmailThreadListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "email_threads",
          query: query.transform_keys(
            filter_inbox_id: "filter[inbox_id]",
            filter_label: "filter[label]",
            page_after: "page[after]",
            page_size: "page[size]"
          ),
          model: Telnyx::EmailInboxes::InboundThreadListResponse,
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
