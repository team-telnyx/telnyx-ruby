# frozen_string_literal: true

module Telnyx
  module Resources
    class EmailInboxes
      class Messages
        # Create and manage agent inboxes, retrieve inbound messages and threads, and
        # reply to or forward messages.
        class Actions
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::EmailInboxes::Messages::ActionForwardParams} for more details.
          #
          # Sends from the inbox address through the standard email send pipeline to
          # caller-supplied To, Cc, and Bcc recipients. `to` must contain at least one
          # recipient. Optional `text` and `html` are prepended to a forwarded-message block
          # containing the original metadata and available body content. The subject is
          # prefixed with `Fwd:` unless it already has that prefix.
          #
          # Threading headers are derived from the original message: `In-Reply-To` is set to
          # its RFC Message-ID, and `References` contains the original References values
          # plus that Message-ID, de-duplicated and limited to the most recent 20 values.
          #
          # @overload forward(message_id, inbox_id:, to:, bcc: nil, cc: nil, html: nil, text: nil, request_options: {})
          #
          # @param message_id [String] Path param: Inbound email message UUID.
          #
          # @param inbox_id [String] Path param: Email inbox UUID.
          #
          # @param to [String, Telnyx::Models::EmailInboxes::Messages::ActionForwardParams::To::InboxRecipientAddress, Array<String, Telnyx::Models::EmailInboxes::Messages::InboxActionEmailAddressInput::InboxRecipientAddress>] Body param: One recipient or a non-empty recipient array. Each recipient may be
          #
          # @param bcc [String, Telnyx::Models::EmailInboxes::Messages::InboxActionRecipientInput::InboxRecipientAddress, Array<String, Telnyx::Models::EmailInboxes::Messages::InboxActionEmailAddressInput::InboxRecipientAddress>] Body param: One recipient or a recipient array. Each recipient may be an email s
          #
          # @param cc [String, Telnyx::Models::EmailInboxes::Messages::InboxActionRecipientInput::InboxRecipientAddress, Array<String, Telnyx::Models::EmailInboxes::Messages::InboxActionEmailAddressInput::InboxRecipientAddress>] Body param: One recipient or a recipient array. Each recipient may be an email s
          #
          # @param html [String] Body param: Optional HTML note prepended to the generated forwarded-message bloc
          #
          # @param text [String] Body param: Optional plain-text note prepended to the generated forwarded-messag
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::EmailInboxes::EmailMessageResponse]
          #
          # @see Telnyx::Models::EmailInboxes::Messages::ActionForwardParams
          def forward(message_id, params)
            parsed, options = Telnyx::EmailInboxes::Messages::ActionForwardParams.dump_request(params)
            inbox_id =
              parsed.delete(:inbox_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["email_inboxes/%1$s/messages/%2$s/actions/forward", inbox_id, message_id],
              body: parsed,
              model: Telnyx::EmailInboxes::EmailMessageResponse,
              options: options
            )
          end

          # Sends from the inbox address through the standard email send pipeline. The
          # recipient is the original `Reply-To`, falling back to `From`; original Cc
          # recipients are not included. The subject is prefixed with `Re:` unless it
          # already has that prefix.
          #
          # Threading headers are derived from the original message: `In-Reply-To` is set to
          # its RFC Message-ID, and `References` contains the original References values
          # plus that Message-ID, de-duplicated and limited to the most recent 20 values.
          #
          # @overload reply(message_id, inbox_id:, html: nil, text: nil, request_options: {})
          #
          # @param message_id [String] Path param: Inbound email message UUID.
          #
          # @param inbox_id [String] Path param: Email inbox UUID.
          #
          # @param html [String] Body param: HTML reply body.
          #
          # @param text [String] Body param: Plain-text reply body.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::EmailInboxes::EmailMessageResponse]
          #
          # @see Telnyx::Models::EmailInboxes::Messages::ActionReplyParams
          def reply(message_id, params)
            parsed, options = Telnyx::EmailInboxes::Messages::ActionReplyParams.dump_request(params)
            inbox_id =
              parsed.delete(:inbox_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["email_inboxes/%1$s/messages/%2$s/actions/reply", inbox_id, message_id],
              body: parsed,
              model: Telnyx::EmailInboxes::EmailMessageResponse,
              options: options
            )
          end

          # Sends from the inbox address through the standard email send pipeline. The To
          # list starts with the original `Reply-To` (or `From`) and includes original To
          # recipients; the Cc list includes original Cc recipients. The inbox address is
          # excluded, and recipients are de-duplicated case-insensitively across To and Cc.
          # Bcc is always empty. The subject is prefixed with `Re:` unless it already has
          # that prefix.
          #
          # Threading headers are derived from the original message: `In-Reply-To` is set to
          # its RFC Message-ID, and `References` contains the original References values
          # plus that Message-ID, de-duplicated and limited to the most recent 20 values.
          #
          # @overload reply_all(message_id, inbox_id:, html: nil, text: nil, request_options: {})
          #
          # @param message_id [String] Path param: Inbound email message UUID.
          #
          # @param inbox_id [String] Path param: Email inbox UUID.
          #
          # @param html [String] Body param: HTML reply body.
          #
          # @param text [String] Body param: Plain-text reply body.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::EmailInboxes::EmailMessageResponse]
          #
          # @see Telnyx::Models::EmailInboxes::Messages::ActionReplyAllParams
          def reply_all(message_id, params)
            parsed, options = Telnyx::EmailInboxes::Messages::ActionReplyAllParams.dump_request(params)
            inbox_id =
              parsed.delete(:inbox_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["email_inboxes/%1$s/messages/%2$s/actions/reply_all", inbox_id, message_id],
              body: parsed,
              model: Telnyx::EmailInboxes::EmailMessageResponse,
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
