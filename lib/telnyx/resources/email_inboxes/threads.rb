# frozen_string_literal: true

module Telnyx
  module Resources
    class EmailInboxes
      # Create and manage agent inboxes, retrieve inbound messages and threads, and
      # reply to or forward messages.
      class Threads
        # Create and manage agent inboxes, retrieve inbound messages and threads, and
        # reply to or forward messages.
        # @return [Telnyx::Resources::EmailInboxes::Threads::Labels]
        attr_reader :labels

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::EmailInboxes::ThreadRetrieveParams} for more details.
        #
        # Returns a bounded page of inbound and outbound thread messages interleaved in
        # chronological order using stable cursor pagination.
        #
        # @overload retrieve(thread_id, inbox_id:, page_after: nil, page_size: nil, request_options: {})
        #
        # @param thread_id [String] Path param: Email thread UUID.
        #
        # @param inbox_id [String] Path param: Email inbox UUID.
        #
        # @param page_after [String] Query param: Opaque message cursor returned by the previous thread-detail page.
        #
        # @param page_size [Integer] Query param: Number of thread messages to return. Defaults to 25; maximum is 100
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailInboxes::ThreadRetrieveResponse]
        #
        # @see Telnyx::Models::EmailInboxes::ThreadRetrieveParams
        def retrieve(thread_id, params)
          parsed, options = Telnyx::EmailInboxes::ThreadRetrieveParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          inbox_id =
            parsed.delete(:inbox_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["email_inboxes/%1$s/threads/%2$s", inbox_id, thread_id],
            query: query.transform_keys(page_after: "page[after]", page_size: "page[size]"),
            model: Telnyx::Models::EmailInboxes::ThreadRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::EmailInboxes::ThreadListParams} for more details.
        #
        # Lists thread summaries newest first using stable cursor pagination.
        #
        # @overload list(inbox_id, filter_label: nil, page_after: nil, page_size: nil, request_options: {})
        #
        # @param inbox_id [String] Email inbox UUID.
        #
        # @param filter_label [String] Returns only threads carrying this label. Thread labels are independent of the l
        #
        # @param page_after [String] Opaque cursor returned by the previous page.
        #
        # @param page_size [Integer] Number of results to return. Defaults to 25; maximum is 100.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::EmailBracketCursorPagination<Telnyx::Models::EmailInboxes::InboundThread>]
        #
        # @see Telnyx::Models::EmailInboxes::ThreadListParams
        def list(inbox_id, params = {})
          parsed, options = Telnyx::EmailInboxes::ThreadListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["email_inboxes/%1$s/threads", inbox_id],
            query: query.transform_keys(
              filter_label: "filter[label]",
              page_after: "page[after]",
              page_size: "page[size]"
            ),
            page: Telnyx::Internal::EmailBracketCursorPagination,
            model: Telnyx::EmailInboxes::InboundThread,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @labels = Telnyx::Resources::EmailInboxes::Threads::Labels.new(client: client)
        end
      end
    end
  end
end
