# frozen_string_literal: true

module Telnyx
  module Resources
    class EmailInboxes
      class Messages
        # Create and manage agent inboxes, retrieve inbound messages and threads, and
        # reply to or forward messages.
        class Labels
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::EmailInboxes::Messages::LabelCreateParams} for more details.
          #
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
          #
          # @overload create(message_id, inbox_id:, labels:, request_options: {})
          #
          # @param message_id [String] Path param: Inbound message UUID.
          #
          # @param inbox_id [String] Path param: Email inbox UUID.
          #
          # @param labels [Array<String>] Body param: One or more labels. Each label is a freeform, case-sensitive string
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::EmailInboxes::Messages::LabelCreateResponse]
          #
          # @see Telnyx::Models::EmailInboxes::Messages::LabelCreateParams
          def create(message_id, params)
            parsed, options = Telnyx::EmailInboxes::Messages::LabelCreateParams.dump_request(params)
            inbox_id =
              parsed.delete(:inbox_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["email_inboxes/%1$s/messages/%2$s/labels", inbox_id, message_id],
              body: parsed,
              model: Telnyx::Models::EmailInboxes::Messages::LabelCreateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::EmailInboxes::Messages::LabelDeleteAllParams} for more details.
          #
          # Removes one or more labels from a message. Idempotent — removing a label the
          # message does not carry is a no-op and still returns 200. Removal is
          # case-sensitive.
          #
          # @overload delete_all(message_id, inbox_id:, labels:, request_options: {})
          #
          # @param message_id [String] Path param: Inbound message UUID.
          #
          # @param inbox_id [String] Path param: Email inbox UUID.
          #
          # @param labels [Array<String>] Body param: One or more labels. Each label is a freeform, case-sensitive string
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::EmailInboxes::Messages::LabelDeleteAllResponse]
          #
          # @see Telnyx::Models::EmailInboxes::Messages::LabelDeleteAllParams
          def delete_all(message_id, params)
            parsed, options = Telnyx::EmailInboxes::Messages::LabelDeleteAllParams.dump_request(params)
            inbox_id =
              parsed.delete(:inbox_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["email_inboxes/%1$s/messages/%2$s/labels", inbox_id, message_id],
              body: parsed,
              model: Telnyx::Models::EmailInboxes::Messages::LabelDeleteAllResponse,
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
  end
end
