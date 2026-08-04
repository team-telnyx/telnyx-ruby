# typed: strong

module Telnyx
  module Resources
    class EmailInboxes
      class Messages
        # Create and manage agent inboxes, retrieve inbound messages and threads, and
        # reply to or forward messages.
        class Labels
          # Adds one or more mutable labels to a message. Labels carry agent workflow state
          # such as `spam`, `needs_review`, or `processed`.
          #
          # Labels are **not** the same as the send-time `tags` on outbound messages: `tags`
          # are immutable and propagate to Email Detail Records and Mission Control for
          # billing attribution, while labels are mailbox state that never reaches the
          # reporting contract.
          #
          # The operation is an idempotent set union — adding a label the message already
          # carries is a no-op and still returns 200. Labels are case-sensitive, and message
          # labels are independent of thread labels.
          sig do
            params(
              message_id: String,
              inbox_id: String,
              labels: T::Array[String],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::EmailInboxes::Messages::LabelCreateResponse
            )
          end
          def create(
            # Path param: Inbound message UUID.
            message_id,
            # Path param: Email inbox UUID.
            inbox_id:,
            # Body param: One or more labels. Each label is a freeform, case-sensitive string
            # of at most 255 characters; a message or thread may carry at most 50 labels. The
            # `telnyx:` prefix is a reserved system namespace and is rejected on customer
            # writes.
            labels:,
            request_options: {}
          )
          end

          # Removes one or more labels from a message. Idempotent — removing a label the
          # message does not carry is a no-op and still returns 200. Removal is
          # case-sensitive.
          sig do
            params(
              message_id: String,
              inbox_id: String,
              labels: T::Array[String],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::EmailInboxes::Messages::LabelDeleteAllResponse
            )
          end
          def delete_all(
            # Path param: Inbound message UUID.
            message_id,
            # Path param: Email inbox UUID.
            inbox_id:,
            # Body param: One or more labels. Each label is a freeform, case-sensitive string
            # of at most 255 characters; a message or thread may carry at most 50 labels. The
            # `telnyx:` prefix is a reserved system namespace and is rejected on customer
            # writes.
            labels:,
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
end
