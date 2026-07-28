# frozen_string_literal: true

module Telnyx
  module Resources
    class EmailInboxes
      class Threads
        # Create and manage agent inboxes, retrieve inbound messages and threads, and
        # reply to or forward messages.
        class Labels
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::EmailInboxes::Threads::LabelCreateParams} for more details.
          #
          # Adds one or more mutable labels to a thread, letting an agent mark a whole
          # conversation (for example `needs_review`) without labelling each message
          # individually.
          #
          # Thread labels are independent of message labels: labelling a thread does not
          # label its messages, and labelling a message does not label its thread.
          # Idempotent and case-sensitive.
          #
          # @overload create(thread_id, inbox_id:, labels:, request_options: {})
          #
          # @param thread_id [String] Path param: Thread UUID.
          #
          # @param inbox_id [String] Path param: Email inbox UUID.
          #
          # @param labels [Array<String>] Body param: One or more labels. Each label is a freeform, case-sensitive string
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::EmailInboxes::Threads::LabelCreateResponse]
          #
          # @see Telnyx::Models::EmailInboxes::Threads::LabelCreateParams
          def create(thread_id, params)
            parsed, options = Telnyx::EmailInboxes::Threads::LabelCreateParams.dump_request(params)
            inbox_id =
              parsed.delete(:inbox_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["email_inboxes/%1$s/threads/%2$s/labels", inbox_id, thread_id],
              body: parsed,
              model: Telnyx::Models::EmailInboxes::Threads::LabelCreateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllParams} for more details.
          #
          # Removes one or more labels from a thread. Idempotent — removing a label the
          # thread does not carry is a no-op and still returns 200.
          #
          # @overload delete_all(thread_id, inbox_id:, labels:, request_options: {})
          #
          # @param thread_id [String] Path param: Thread UUID.
          #
          # @param inbox_id [String] Path param: Email inbox UUID.
          #
          # @param labels [Array<String>] Body param: One or more labels. Each label is a freeform, case-sensitive string
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse]
          #
          # @see Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllParams
          def delete_all(thread_id, params)
            parsed, options = Telnyx::EmailInboxes::Threads::LabelDeleteAllParams.dump_request(params)
            inbox_id =
              parsed.delete(:inbox_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["email_inboxes/%1$s/threads/%2$s/labels", inbox_id, thread_id],
              body: parsed,
              model: Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse,
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
