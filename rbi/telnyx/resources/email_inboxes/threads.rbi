# typed: strong

module Telnyx
  module Resources
    class EmailInboxes
      # Create and manage agent inboxes, retrieve inbound messages and threads, and
      # reply to or forward messages.
      class Threads
        # Create and manage agent inboxes, retrieve inbound messages and threads, and
        # reply to or forward messages.
        sig { returns(Telnyx::Resources::EmailInboxes::Threads::Labels) }
        attr_reader :labels

        # Returns a bounded page of inbound and outbound thread messages interleaved in
        # chronological order using stable cursor pagination.
        sig do
          params(
            thread_id: String,
            inbox_id: String,
            page_after: String,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::EmailInboxes::ThreadRetrieveResponse)
        end
        def retrieve(
          # Path param: Email thread UUID.
          thread_id,
          # Path param: Email inbox UUID.
          inbox_id:,
          # Query param: Opaque message cursor returned by the previous thread-detail page.
          page_after: nil,
          # Query param: Number of thread messages to return. Defaults to 25; maximum
          # is 100.
          page_size: nil,
          request_options: {}
        )
        end

        # Lists thread summaries newest first using stable cursor pagination.
        sig do
          params(
            inbox_id: String,
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
          # Email inbox UUID.
          inbox_id,
          # Returns only threads carrying this label. Thread labels are independent of the
          # labels on the thread's messages.
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
end
