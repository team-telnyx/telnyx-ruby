# typed: strong

module Telnyx
  module Resources
    class EmailInboxes
      # Create, list, retrieve, update, delete, and send unsent draft messages belonging
      # to an agent inbox.
      class Drafts
        # Creates an unsent draft in the inbox. Every field is optional — a draft is a
        # work-in-progress and may be saved incomplete. Send-time requirements (sender,
        # subject, at least one recipient) are enforced when the draft is sent, not when
        # it is created.
        #
        # Drafts are unbillable and emit no Email Detail Records until they are sent.
        sig do
          params(
            inbox_id: String,
            attachments: T::Array[T.anything],
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
            metadata: T.anything,
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
        def create(
          # Email inbox UUID.
          inbox_id,
          attachments: nil,
          bcc: nil,
          cc: nil,
          from_email: nil,
          from_name: nil,
          headers: nil,
          # Alias for `html_body`, matching the send endpoint.
          html: nil,
          html_body: nil,
          labels: nil,
          metadata: nil,
          reply_to: nil,
          subject: nil,
          tags: nil,
          # Alias for `text_body`, matching the send endpoint.
          text: nil,
          text_body: nil,
          to: nil,
          request_options: {}
        )
        end

        # Returns a single draft. Drafts that have been sent remain retrievable, so the
        # exact content that was sent stays auditable.
        sig do
          params(
            draft_id: String,
            inbox_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::EmailInboxes::EmailDraftResponse)
        end
        def retrieve(
          # Email draft UUID.
          draft_id,
          # Email inbox UUID.
          inbox_id:,
          request_options: {}
        )
        end

        # Identical to `PUT`; both apply a partial update to the supplied fields.
        sig do
          params(
            draft_id: String,
            inbox_id: String,
            attachments: T::Array[T.anything],
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
            metadata: T.anything,
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
        def update(
          # Path param: Email draft UUID.
          draft_id,
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

        # Lists drafts newest first using stable cursor pagination. All access is scoped
        # to the authenticated account and the given inbox.
        sig do
          params(
            inbox_id: String,
            filter_status:
              Telnyx::EmailInboxes::DraftListParams::FilterStatus::OrSymbol,
            page_after: String,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::EmailInboxes::DraftListResponse)
        end
        def list(
          # Email inbox UUID.
          inbox_id,
          # Restrict results to drafts in this state.
          filter_status: nil,
          # Opaque cursor returned by the previous page.
          page_after: nil,
          # Number of results to return. Defaults to 25; maximum is 100.
          page_size: nil,
          request_options: {}
        )
        end

        # Permanently deletes an unsent draft. Drafts that are being sent or have been
        # sent cannot be deleted; sent drafts are retained for audit.
        sig do
          params(
            draft_id: String,
            inbox_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Email draft UUID.
          draft_id,
          # Email inbox UUID.
          inbox_id:,
          request_options: {}
        )
        end

        # Sends the draft through the standard send pipeline — the same domain resolution,
        # suppression, reputation, daily-quota, persistence and Detail Record behaviour as
        # `POST /v2/email_messages`. The response body is the created email message.
        #
        # If the draft has no explicit `from_email`, the inbox address is used.
        #
        # The draft is marked `sent` only after the send is accepted; a send rejected for
        # suppression, quota or reputation leaves the draft editable so it can be fixed
        # and retried. A draft that is already `sent` returns 422 rather than sending
        # twice.
        sig do
          params(
            draft_id: String,
            inbox_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::EmailInboxes::EmailMessageResponse)
        end
        def send_(
          # Email draft UUID.
          draft_id,
          # Email inbox UUID.
          inbox_id:,
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
