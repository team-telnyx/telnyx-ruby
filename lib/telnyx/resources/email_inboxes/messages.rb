# frozen_string_literal: true

module Telnyx
  module Resources
    class EmailInboxes
      class Messages
        # Create and manage agent inboxes, retrieve inbound messages and threads, and
        # reply to or forward messages.
        # @return [Telnyx::Resources::EmailInboxes::Messages::Actions]
        attr_reader :actions

        # Create and manage agent inboxes, retrieve inbound messages and threads, and
        # reply to or forward messages.
        # @return [Telnyx::Resources::EmailInboxes::Messages::Labels]
        attr_reader :labels

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::EmailInboxes::MessageUpdateParams} for more details.
        #
        # Updates the explicit read state of an account-scoped inbound message. Set
        # `read_at` to `true` to mark the message read at the server's current time, to an
        # ISO 8601 timestamp to use that timestamp, or to `null` to mark the message
        # unread. Repeating the same update is idempotent.
        #
        # @overload update(message_id, inbox_id:, read_at:, request_options: {})
        #
        # @param message_id [String] Path param: Inbound email message UUID.
        #
        # @param inbox_id [String] Path param: Email inbox UUID.
        #
        # @param read_at [Boolean, Time, Telnyx::Models::EmailInboxes::MessageUpdateParams::ReadAt, nil] Body param: Set to `true` for server time, an ISO 8601 timestamp for an explicit
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailInboxes::MessageUpdateResponse]
        #
        # @see Telnyx::Models::EmailInboxes::MessageUpdateParams
        def update(message_id, params)
          parsed, options = Telnyx::EmailInboxes::MessageUpdateParams.dump_request(params)
          inbox_id =
            parsed.delete(:inbox_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["email_inboxes/%1$s/messages/%2$s", inbox_id, message_id],
            body: parsed,
            model: Telnyx::Models::EmailInboxes::MessageUpdateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::EmailInboxes::MessageListParams} for more details.
        #
        # Lists inbound messages newest first. All access is scoped to the authenticated
        # account. `filter[search]` performs PostgreSQL full-text search over the subject,
        # plain-text body, and HTML body. Filters compose with stable cursor pagination.
        #
        # @overload list(inbox_id, filter_from: nil, filter_label: nil, filter_read: nil, filter_received_after: nil, filter_received_before: nil, filter_search: nil, filter_subject: nil, filter_unread: nil, page_after: nil, page_size: nil, request_options: {})
        #
        # @param inbox_id [String] Email inbox UUID.
        #
        # @param filter_from [String] Case-insensitive literal substring of the sender address.
        #
        # @param filter_label [String] Returns only messages carrying this label. Matching is exact and case-sensitive.
        #
        # @param filter_read [Boolean] Whether the message has a read timestamp.
        #
        # @param filter_received_after [Time] Inclusive ISO 8601 lower bound for the received timestamp.
        #
        # @param filter_received_before [Time] Inclusive ISO 8601 upper bound for the received timestamp.
        #
        # @param filter_search [String] Full-text query over subject and body, up to 500 characters.
        #
        # @param filter_subject [String] Case-insensitive literal substring of the subject.
        #
        # @param filter_unread [Boolean] Whether the message has no read timestamp. Set to `true` to return only unread m
        #
        # @param page_after [String] Opaque cursor returned by the previous page.
        #
        # @param page_size [Integer] Number of results to return. Defaults to 25; maximum is 100.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailInboxes::MessageListResponse]
        #
        # @see Telnyx::Models::EmailInboxes::MessageListParams
        def list(inbox_id, params = {})
          parsed, options = Telnyx::EmailInboxes::MessageListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["email_inboxes/%1$s/messages", inbox_id],
            query: query.transform_keys(
              filter_from: "filter[from]",
              filter_label: "filter[label]",
              filter_read: "filter[read]",
              filter_received_after: "filter[received_after]",
              filter_received_before: "filter[received_before]",
              filter_search: "filter[search]",
              filter_subject: "filter[subject]",
              filter_unread: "filter[unread]",
              page_after: "page[after]",
              page_size: "page[size]"
            ),
            model: Telnyx::Models::EmailInboxes::MessageListResponse,
            options: options
          )
        end

        # Creates an unsent reply draft for an inbound message. Unlike the
        # `/actions/reply` endpoint, which sends immediately, this stores a draft that can
        # be reviewed and edited before sending.
        #
        # `reply_to_message_id` and `thread_id` are inherited from the parent message and
        # cannot be set by the caller. The recipient, `Re:` subject and
        # `In-Reply-To`/`References` headers are pre-filled from the parent using the same
        # rules as a live reply, so sending the draft threads identically. Supplying `to`
        # or `subject` explicitly overrides the pre-filled value.
        #
        # @overload drafts(message_id, inbox_id:, attachments: nil, bcc: nil, cc: nil, from_email: nil, from_name: nil, headers: nil, html: nil, html_body: nil, labels: nil, metadata: nil, reply_to: nil, subject: nil, tags: nil, text: nil, text_body: nil, to: nil, request_options: {})
        #
        # @param message_id [String] Path param: Inbound message UUID to reply to.
        #
        # @param inbox_id [String] Path param: Email inbox UUID.
        #
        # @param attachments [Array<Hash{Symbol=>Object}>] Body param
        #
        # @param bcc [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>] Body param
        #
        # @param cc [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>] Body param
        #
        # @param from_email [String] Body param
        #
        # @param from_name [String] Body param
        #
        # @param headers [Hash{Symbol=>String}] Body param
        #
        # @param html [String] Body param: Alias for `html_body`, matching the send endpoint.
        #
        # @param html_body [String] Body param
        #
        # @param labels [Array<String>] Body param
        #
        # @param metadata [Hash{Symbol=>Object}] Body param
        #
        # @param reply_to [String] Body param
        #
        # @param subject [String] Body param
        #
        # @param tags [Array<String>] Body param
        #
        # @param text [String] Body param: Alias for `text_body`, matching the send endpoint.
        #
        # @param text_body [String] Body param
        #
        # @param to [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>] Body param
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailInboxes::EmailDraftResponse]
        #
        # @see Telnyx::Models::EmailInboxes::MessageDraftsParams
        def drafts(message_id, params)
          parsed, options = Telnyx::EmailInboxes::MessageDraftsParams.dump_request(params)
          inbox_id =
            parsed.delete(:inbox_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["email_inboxes/%1$s/messages/%2$s/drafts", inbox_id, message_id],
            body: parsed,
            model: Telnyx::EmailInboxes::EmailDraftResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @actions = Telnyx::Resources::EmailInboxes::Messages::Actions.new(client: client)
          @labels = Telnyx::Resources::EmailInboxes::Messages::Labels.new(client: client)
        end
      end
    end
  end
end
