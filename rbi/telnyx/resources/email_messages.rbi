# typed: strong

module Telnyx
  module Resources
    # Send and manage email messages. Legacy `/v2/emails` routes are aliases for these
    # endpoints.
    class EmailMessages
      # Send and manage email messages. Legacy `/v2/emails` routes are aliases for these
      # endpoints.
      sig { returns(Telnyx::Resources::EmailMessages::Recipients) }
      attr_reader :recipients

      # Queues, schedules, or sandbox-sends an email message. The legacy `/v2/emails`
      # POST route is a backward-compatible alias for this operation.
      #
      # `subject` is required unless `template_id` is supplied. When using
      # `template_id`, do not also provide `subject`, `html_body`, or `text_body`; the
      # template is rendered with `template_variables`.
      #
      # Note: template lookup failures (not found, wrong account) return 400, not 404.
      sig do
        params(
          from: T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash),
          to:
            T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)],
          attachments: T::Array[Telnyx::AttachmentRequest::OrHash],
          bcc:
            T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)],
          cc:
            T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)],
          forward_of_message_id: T.nilable(String),
          from_name: String,
          group_id: T.nilable(String),
          headers: T::Hash[Symbol, String],
          html_body: String,
          ignore_suppression: T::Boolean,
          in_reply_to_message_id: T.nilable(String),
          inline_css: T::Boolean,
          metadata: T::Hash[Symbol, T.anything],
          reply_to: T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash),
          reply_to_all: T.nilable(T::Boolean),
          sandbox_mode: T::Boolean,
          scheduled_at: T.nilable(Time),
          send_at: Time,
          subject: String,
          tags: T::Array[String],
          template_id: String,
          template_variables: T::Hash[Symbol, T.anything],
          text_body: String,
          tracking_settings: Telnyx::TrackingSettings::OrHash,
          idempotency_key: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailInboxes::EmailMessageResponse)
      end
      def create(
        # Body param
        from:,
        # Body param
        to:,
        # Body param
        attachments: nil,
        # Body param
        bcc: nil,
        # Body param
        cc: nil,
        # Body param: Telnyx message UUID of the message this send forwards. Forwarded
        # messages start a NEW thread per RFC 5322 — NO `In-Reply-To` or `References`
        # headers are set on the outbound MIME. The id is recorded in the message's
        # metadata for EDR provenance only.
        #
        # The id is validated as a UUID but is NOT looked up against the message store —
        # existence is the caller's responsibility (the forward is pure metadata; it does
        # not affect delivery). Cannot be combined with `in_reply_to_message_id` (422).
        forward_of_message_id: nil,
        # Body param: Optional display name for string `from`; overrides `from.name` when
        # provided.
        from_name: nil,
        # Body param: Optional unsubscribe-group UUID used for group-scoped suppression
        # checks and unsubscribe handling.
        group_id: nil,
        # Body param: Custom email headers. Write-only; not returned in responses.
        headers: nil,
        # Body param: HTML email body. Returned only by `GET /email_messages/{id}`;
        # omitted from create and list responses.
        html_body: nil,
        # Body param: When true, allows delivery to recipients whose suppressions
        # explicitly permit an override. Hard bounces, spam complaints, and
        # invalid-address suppressions cannot be overridden. Requires the `email:override`
        # API scope.
        ignore_suppression: nil,
        # Body param: Telnyx message UUID of the message this send replies to. When
        # provided, the API sets RFC 5322 `In-Reply-To` and `References` headers on the
        # outbound MIME so the recipient's mailbox (Gmail/Outlook) threads it correctly.
        # The parent is looked up under the caller's account scope; a UUID belonging to
        # another account yields a non-enumerating 404.
        #
        # Wire-only (Phase 1): the API sets the headers and does NOT resolve or mutate
        # `thread_id` on the server side. Messages sent without this parameter are
        # standalone (no threading headers injected).
        #
        # Cannot be combined with `forward_of_message_id` (422).
        in_reply_to_message_id: nil,
        # Body param
        inline_css: nil,
        # Body param: Custom metadata. Write-only; not returned in responses.
        metadata: nil,
        # Body param: Reply-to address. If provided as an object with a name, only the
        # email is stored; the name is ignored.
        reply_to: nil,
        # Body param: Indicates a reply-all intent. In Phase 1 (wire-only) this does not
        # change the threading headers — recipient selection is customer- controlled
        # (`to`/`cc`), and a thread is not defined by its audience. When the referenced
        # message has no thread context, reply-all degrades to a plain reply (parent ID
        # only in `References`). The resolution engine (separate work) will expand the
        # ancestor chain at a later phase with no API change.
        #
        # Only meaningful alongside `in_reply_to_message_id`.
        reply_to_all: nil,
        # Body param
        sandbox_mode: nil,
        # Body param: Future ISO 8601 time to schedule sending. Invalid or past timestamps
        # are silently ignored and the email is sent immediately. The legacy alias
        # `send_at` is still accepted for backward compatibility; when both are provided,
        # `scheduled_at` wins.
        scheduled_at: nil,
        # Body param: Deprecated alias for `scheduled_at`.
        send_at: nil,
        # Body param: Required unless `template_id` is supplied. When using a template,
        # the template's subject is rendered; if the template has no subject or renders
        # empty, the request returns 400.
        subject: nil,
        # Body param: Tags for categorization and reporting. Stored on the message and
        # propagated to Email Detail Records. Not returned in API responses.
        tags: nil,
        # Body param
        template_id: nil,
        # Body param: Variables for Liquid template rendering. Non-object values may cause
        # a 422 validation error on message creation, but are silently treated as an empty
        # object for template rendering.
        template_variables: nil,
        # Body param: Plain text email body. Returned only by `GET /email_messages/{id}`;
        # omitted from create and list responses.
        text_body: nil,
        # Body param: Per-send open and click tracking overrides. Omitted properties
        # inherit the sender domain's tracking settings.
        tracking_settings: nil,
        # Header param: Optional opaque, unquoted key for safely retrying the same logical
        # request. Keys must contain 1 to 255 letters, numbers, hyphens, or underscores.
        # Generate a unique UUID v4 for each operation and reuse it only when retrying
        # that operation with the same request. Invalid headers—including duplicate,
        # empty, malformed, or overlong values—return 400 with error code 10015. A request
        # already in progress with the same key returns 409; reusing the key with a
        # different request returns 422. Only successful responses are replayed, for up to
        # 24 hours. Do not include sensitive data in the key.
        idempotency_key: nil,
        request_options: {}
      )
      end

      # The legacy `/v2/emails/{id}` GET route is a backward-compatible alias for this
      # operation.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::EmailMessageRetrieveResponse)
      end
      def retrieve(
        # Email message UUID.
        id,
        request_options: {}
      )
      end

      # Lists messages sorted newest first by `created_at desc, id desc`. No filters
      # other than cursor pagination are implemented. The legacy `/v2/emails` GET route
      # is a backward-compatible alias for this operation.
      sig do
        params(
          page_cursor: String,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::EmailCursorPagination[
            Telnyx::EmailInboxes::EmailMessage
          ]
        )
      end
      def list(
        # Opaque URL-safe Base64 cursor returned by a previous list response.
        page_cursor: nil,
        # Number of results to return. Defaults to 25; maximum is 100. Invalid values are
        # clamped to the valid range.
        page_size: nil,
        request_options: {}
      )
      end

      # Permanently deletes an account-scoped email message, its events, its durable
      # recipients, and unshared attachment objects. Returns 404 when the message does
      # not exist in the authenticated account. The legacy `/v2/emails/{id}` DELETE
      # route is a backward-compatible alias.
      sig do
        params(id: String, request_options: Telnyx::RequestOptions::OrHash).void
      end
      def delete(
        # Email message UUID.
        id,
        request_options: {}
      )
      end

      # Creates up to 50 email messages in a single request.
      sig do
        params(
          messages: T::Array[Telnyx::EmailMessageBatchParams::Message::OrHash],
          sandbox_mode: T::Boolean,
          idempotency_key: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::EmailMessageBatchResponse)
      end
      def batch(
        # Body param
        messages:,
        # Body param: Applies sandbox mode to all messages in the batch. Overrides any
        # per-message sandbox_mode in the messages array.
        sandbox_mode: nil,
        # Header param: Optional opaque, unquoted key for safely retrying the same logical
        # request. Keys must contain 1 to 255 letters, numbers, hyphens, or underscores.
        # Generate a unique UUID v4 for each operation and reuse it only when retrying
        # that operation with the same request. Invalid headers—including duplicate,
        # empty, malformed, or overlong values—return 400 with error code 10015. A request
        # already in progress with the same key returns 409; reusing the key with a
        # different request returns 422. Only successful responses are replayed, for up to
        # 24 hours. Do not include sensitive data in the key.
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Permanently deletes every email in the authenticated account sent from or to the
      # supplied address, including retained events whose parent message has expired.
      # Events and durable recipients are deleted immediately with each message. The
      # operation never searches or reports matches in another account. The legacy
      # `/v2/emails` DELETE route is a backward-compatible alias.
      sig do
        params(
          address: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def delete_all(
        # Sender or recipient address to delete. Matching is trimmed and case-insensitive.
        address:,
        request_options: {}
      )
      end

      # Cancels a scheduled email and returns it with status `cancelled`. The legacy
      # `/v2/emails/{id}/schedule` DELETE route is an alias.
      sig do
        params(
          email_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailInboxes::EmailMessageResponse)
      end
      def delete_schedule(
        # Email message UUID.
        email_id,
        request_options: {}
      )
      end

      # Lists events for a single message sorted oldest first by
      # `occurred_at asc, id asc`. The legacy `/v2/emails/{id}/events` GET route is a
      # backward-compatible alias.
      sig do
        params(
          email_id: String,
          page_cursor: String,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::EmailCursorPagination[Telnyx::MessageEvent])
      end
      def retrieve_events(
        # Email message UUID.
        email_id,
        # Opaque URL-safe Base64 cursor returned by a previous list response.
        page_cursor: nil,
        # Number of results to return. Defaults to 25; maximum is 100. Invalid values are
        # clamped to the valid range.
        page_size: nil,
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
