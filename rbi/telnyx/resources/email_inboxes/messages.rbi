# typed: strong

module Telnyx
  module Resources
    class EmailInboxes
      class Messages
        # Create and manage agent inboxes, retrieve inbound messages and threads, and
        # reply to or forward messages.
        sig { returns(Telnyx::Resources::EmailInboxes::Messages::Actions) }
        attr_reader :actions

        # Create and manage agent inboxes, retrieve inbound messages and threads, and
        # reply to or forward messages.
        sig { returns(Telnyx::Resources::EmailInboxes::Messages::Labels) }
        attr_reader :labels

        # Updates the explicit read state of an account-scoped inbound message. Set
        # `read_at` to `true` to mark the message read at the server's current time, to an
        # ISO 8601 timestamp to use that timestamp, or to `null` to mark the message
        # unread. Repeating the same update is idempotent.
        sig do
          params(
            message_id: String,
            inbox_id: String,
            read_at:
              T.nilable(
                T.any(
                  Telnyx::EmailInboxes::MessageUpdateParams::ReadAt::OrBoolean,
                  Time
                )
              ),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::EmailInboxes::MessageUpdateResponse)
        end
        def update(
          # Path param: Inbound email message UUID.
          message_id,
          # Path param: Email inbox UUID.
          inbox_id:,
          # Body param: Set to `true` for server time, an ISO 8601 timestamp for an explicit
          # read time, or `null` to mark unread.
          read_at:,
          request_options: {}
        )
        end

        # Lists inbound messages newest first. All access is scoped to the authenticated
        # account. `filter[search]` performs PostgreSQL full-text search over the subject,
        # plain-text body, and HTML body. Filters compose with stable cursor pagination.
        sig do
          params(
            inbox_id: String,
            filter_from: String,
            filter_label: String,
            filter_read: T::Boolean,
            filter_received_after: Time,
            filter_received_before: Time,
            filter_search: String,
            filter_subject: String,
            filter_unread: T::Boolean,
            page_after: String,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::EmailInboxes::MessageListResponse)
        end
        def list(
          # Email inbox UUID.
          inbox_id,
          # Case-insensitive literal substring of the sender address.
          filter_from: nil,
          # Returns only messages carrying this label. Matching is exact and case-sensitive.
          # Reserved `telnyx:` labels can be filtered on even though they cannot be written
          # by customers.
          filter_label: nil,
          # Whether the message has a read timestamp.
          filter_read: nil,
          # Inclusive ISO 8601 lower bound for the received timestamp.
          filter_received_after: nil,
          # Inclusive ISO 8601 upper bound for the received timestamp.
          filter_received_before: nil,
          # Full-text query over subject and body, up to 500 characters.
          filter_search: nil,
          # Case-insensitive literal substring of the subject.
          filter_subject: nil,
          # Whether the message has no read timestamp. Set to `true` to return only unread
          # messages.
          filter_unread: nil,
          # Opaque cursor returned by the previous page.
          page_after: nil,
          # Number of results to return. Defaults to 25; maximum is 100.
          page_size: nil,
          request_options: {}
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
        sig do
          params(
            message_id: String,
            inbox_id: String,
            attachments: T::Array[T::Hash[Symbol, T.anything]],
            bcc:
              T::Array[
                T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)
              ],
            cc:
              T::Array[
                T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)
              ],
            from_email: String,
            from_name: String,
            headers: T::Hash[Symbol, String],
            html: String,
            html_body: String,
            labels: T::Array[String],
            metadata: T::Hash[Symbol, T.anything],
            reply_to: String,
            subject: String,
            tags: T::Array[String],
            text: String,
            text_body: String,
            to:
              T::Array[
                T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)
              ],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::EmailInboxes::EmailDraftResponse)
        end
        def drafts(
          # Path param: Inbound message UUID to reply to.
          message_id,
          # Path param: Email inbox UUID.
          inbox_id:,
          # Body param
          attachments: nil,
          # Body param
          bcc: nil,
          # Body param
          cc: nil,
          # Body param
          from_email: nil,
          # Body param
          from_name: nil,
          # Body param
          headers: nil,
          # Body param: Alias for `html_body`, matching the send endpoint.
          html: nil,
          # Body param
          html_body: nil,
          # Body param
          labels: nil,
          # Body param
          metadata: nil,
          # Body param
          reply_to: nil,
          # Body param
          subject: nil,
          # Body param
          tags: nil,
          # Body param: Alias for `text_body`, matching the send endpoint.
          text: nil,
          # Body param
          text_body: nil,
          # Body param
          to: nil,
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
