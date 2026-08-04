# typed: strong

module Telnyx
  module Resources
    class EmailInboxes
      class Threads
        # Create and manage agent inboxes, retrieve inbound messages and threads, and
        # reply to or forward messages.
        class Labels
          # Adds one or more mutable labels to a thread, letting an agent mark a whole
          # conversation (for example `needs_review`) without labelling each message
          # individually.
          #
          # Thread labels are independent of message labels: labelling a thread does not
          # label its messages, and labelling a message does not label its thread.
          # Idempotent and case-sensitive.
          sig do
            params(
              thread_id: String,
              inbox_id: String,
              labels: T::Array[String],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::EmailInboxes::Threads::LabelCreateResponse
            )
          end
          def create(
            # Path param: Thread UUID.
            thread_id,
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

          # Removes one or more labels from a thread. Idempotent — removing a label the
          # thread does not carry is a no-op and still returns 200.
          sig do
            params(
              thread_id: String,
              inbox_id: String,
              labels: T::Array[String],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse
            )
          end
          def delete_all(
            # Path param: Thread UUID.
            thread_id,
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
