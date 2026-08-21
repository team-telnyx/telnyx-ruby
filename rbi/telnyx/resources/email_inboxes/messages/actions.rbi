# typed: strong

module Telnyx
  module Resources
    class EmailInboxes
      class Messages
        # Create and manage agent inboxes, retrieve inbound messages and threads, and
        # reply to or forward messages.
        class Actions
          # Sends from the inbox address through the standard email send pipeline to
          # caller-supplied To, Cc, and Bcc recipients. `to` must contain at least one
          # recipient. Optional `text` and `html` are prepended to a forwarded-message block
          # containing the original metadata and available body content. The subject is
          # prefixed with `Fwd:` unless it already has that prefix.
          #
          # Threading headers are derived from the original message: `In-Reply-To` is set to
          # its RFC Message-ID, and `References` contains the original References values
          # plus that Message-ID, de-duplicated and limited to the most recent 20 values.
          sig do
            params(
              message_id: String,
              inbox_id: String,
              to:
                T.any(
                  String,
                  Telnyx::EmailInboxes::Messages::ActionForwardParams::To::InboxRecipientAddress::OrHash,
                  T::Array[
                    T.any(
                      String,
                      Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::InboxRecipientAddress::OrHash
                    )
                  ]
                ),
              bcc:
                T.any(
                  String,
                  Telnyx::EmailInboxes::Messages::InboxActionRecipientInput::InboxRecipientAddress::OrHash,
                  T::Array[
                    T.any(
                      String,
                      Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::InboxRecipientAddress::OrHash
                    )
                  ]
                ),
              cc:
                T.any(
                  String,
                  Telnyx::EmailInboxes::Messages::InboxActionRecipientInput::InboxRecipientAddress::OrHash,
                  T::Array[
                    T.any(
                      String,
                      Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::InboxRecipientAddress::OrHash
                    )
                  ]
                ),
              html: String,
              text: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::EmailInboxes::EmailMessageResponse)
          end
          def forward(
            # Path param: Inbound email message UUID.
            message_id,
            # Path param: Email inbox UUID.
            inbox_id:,
            # Body param: One recipient or a non-empty recipient array. Each recipient may be
            # an email string or an object with `email` and optional `name`.
            to:,
            # Body param: One recipient or a recipient array. Each recipient may be an email
            # string or an object with `email` and optional `name`.
            bcc: nil,
            # Body param: One recipient or a recipient array. Each recipient may be an email
            # string or an object with `email` and optional `name`.
            cc: nil,
            # Body param: Optional HTML note prepended to the generated forwarded-message
            # block. Blank values are treated as omitted.
            html: nil,
            # Body param: Optional plain-text note prepended to the generated
            # forwarded-message block. Blank values are treated as omitted.
            text: nil,
            request_options: {}
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
          sig do
            params(
              message_id: String,
              inbox_id: String,
              html: String,
              text: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::EmailInboxes::EmailMessageResponse)
          end
          def reply(
            # Path param: Inbound email message UUID.
            message_id,
            # Path param: Email inbox UUID.
            inbox_id:,
            # Body param: HTML reply body.
            html: nil,
            # Body param: Plain-text reply body.
            text: nil,
            request_options: {}
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
          sig do
            params(
              message_id: String,
              inbox_id: String,
              html: String,
              text: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::EmailInboxes::EmailMessageResponse)
          end
          def reply_all(
            # Path param: Inbound email message UUID.
            message_id,
            # Path param: Email inbox UUID.
            inbox_id:,
            # Body param: HTML reply body.
            html: nil,
            # Body param: Plain-text reply body.
            text: nil,
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
