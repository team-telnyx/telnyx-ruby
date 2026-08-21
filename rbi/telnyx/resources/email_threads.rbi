# typed: strong

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
      sig do
        params(
          thread_id: String,
          inbox_id: String,
          page_after: String,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::EmailThreadRetrieveResponse)
      end
      def retrieve(
        # Email thread UUID.
        thread_id,
        # Inbox UUID that, together with `thread_id`, identifies the thread.
        inbox_id:,
        # Opaque message cursor returned by the previous thread-detail page.
        page_after: nil,
        # Number of thread messages to return. Defaults to 25; maximum is 100.
        page_size: nil,
        request_options: {}
      )
      end

      # Lists thread summaries for the whole account, newest first, using stable cursor
      # pagination. An agent operating many inboxes gets every conversation in one call
      # instead of one call per inbox. Each thread carries its own `inbox_id` so a reply
      # can be routed back to the right inbox. Use `filter[inbox_id]` (repeatable) to
      # narrow the result to specific inboxes. Because a thread ID can be delivered to
      # multiple inboxes, each result is identified by its `(inbox_id, id)` pair.
      sig do
        params(
          filter_inbox_id: T::Array[String],
          filter_label: String,
          page_after: String,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::EmailBracketCursorPagination[
            Telnyx::EmailInboxes::InboundThread
          ]
        )
      end
      def list(
        # Restrict results to one or more inboxes. Repeat the parameter
        # (`filter[inbox_id][]=...&filter[inbox_id][]=...`) or pass a comma-separated
        # list. Omit to list every inbox in the account. Inboxes outside the account are
        # silently excluded. If the filter is present, it must contain at least one
        # non-empty UUID.
        filter_inbox_id: nil,
        # Returns only threads carrying this label. Matching is exact and case-sensitive.
        # Thread labels are independent of the labels on the thread's messages.
        filter_label: nil,
        # Opaque cursor returned by the previous page.
        page_after: nil,
        # Number of results to return. Defaults to 25; maximum is 100.
        page_size: nil,
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
