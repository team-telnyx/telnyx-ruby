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
        # Body param: Custom metadata key/value pairs. Stored on the message, returned on
        # message responses, and propagated to Email Detail Records. Usable in
        # `filter[metadata]` when listing messages.
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
        # Body param: Validates and accepts the message without injecting it into the MTA
        # or outbound Kafka path. Nothing is delivered: sandbox records are non-billable,
        # consume no daily-send-limit quota, and feed no delivery-reputation signals.
        #
        # The reserved sandbox test-recipient domain is `test.telnyx.com`. In sandbox
        # mode, these addresses produce deterministic recipient-scoped lifecycle events:
        #
        # - `delivered@test.telnyx.com`: queued -> sending -> sent -> delivered
        # - `hard-bounce@test.telnyx.com`: queued -> sending -> sent -> bounced
        #   (permanent)
        # - `soft-bounce@test.telnyx.com`: queued -> sending -> sent -> bounced
        #   (transient)
        # - `complaint@test.telnyx.com`: queued -> sending -> sent -> complained
        # - `suppressed@test.telnyx.com`: queued -> suppressed
        # - `invalid@test.telnyx.com`: queued -> sending -> failed (invalid recipient)
        # - `dkim-fail@test.telnyx.com`: queued -> sending -> failed (DKIM unavailable)
        # - `rate-limit@test.telnyx.com`: queued -> sending -> failed (rate limit
        #   exceeded)
        #
        # Matching is case-insensitive for both the local part and the domain and requires
        # the exact domain `test.telnyx.com` — subdomains and other domains do not match.
        # Mixed sandbox sends simulate only reserved test recipients; other recipients
        # retain ordinary sandbox behavior (accepted, no delivery attempted). Hard-bounce
        # and complaint outcomes also use the normal automatic-suppression pipeline.
        # Non-sandbox sends to these addresses use the normal delivery path.
        sandbox_mode: nil,
        # Body param: Future ISO 8601 delivery time. Invalid or non-future timestamps are
        # rejected. Single sends return HTTP 422; in batch sends the invalid item is
        # reported in the 207 per-item errors while other items continue. `send_at`
        # remains a deprecated request alias. A non-null `scheduled_at` takes precedence
        # over `send_at`; when `scheduled_at` is omitted or null, `send_at` is used.
        scheduled_at: nil,
        # Body param: Deprecated alias for `scheduled_at`.
        send_at: nil,
        # Body param: Required unless `template_id` is supplied. When using a template,
        # the template's subject is rendered; if the template has no subject or renders
        # empty, the request returns 400.
        subject: nil,
        # Body param: Tags for categorization and filtering. Stored on the message,
        # returned on message responses, and propagated to Email Detail Records. Usable in
        # `filter[tags]` when listing messages.
        tags: nil,
        # Body param
        template_id: nil,
        # Body param: Variables for Liquid template rendering. Non-object values may cause
        # a 422 validation error on message creation, but are silently treated as an empty
        # object for template rendering. When the template enables `strict_variables`, a
        # missing required variable fails the request with 422 (single send) or a per-item
        # `unprocessable_entity` error (batch) naming the variable; no message is
        # persisted for the failed item.
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
        ).returns(Telnyx::EmailMessageDetailResponse)
      end
      def retrieve(
        # Email message UUID.
        id,
        request_options: {}
      )
      end

      # Lists messages sorted newest first by `created_at desc, id desc`. Tags and
      # metadata filters compose with cursor pagination. The legacy `/v2/emails` GET
      # route is a backward-compatible alias for this operation.
      sig do
        params(
          filter_metadata: String,
          filter_tags: String,
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
        # Metadata containment filter, supplied as a JSON object or comma-separated
        # `key=value` pairs. All supplied key/value pairs must be contained in the message
        # metadata. An empty value or empty JSON object omits the filter. Malformed
        # values, valid non-object JSON, pairs without `=`, empty keys, and
        # non-string/nested query shapes return HTTP 400.
        filter_metadata: nil,
        # Comma-separated tags. Each segment is trimmed, and messages having at least one
        # supplied tag are returned; matching is exact and case-sensitive after trimming.
        # Because commas delimit values and surrounding whitespace is removed, this filter
        # cannot represent stored tags containing literal commas or leading/trailing
        # whitespace. An empty value omits the filter. Empty segments and
        # non-string/nested query shapes return HTTP 400.
        filter_tags: nil,
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

      # Creates up to 1,000 email messages in a single request. Request-wide admission
      # checks run first and can reject the whole batch before message creation. After
      # those checks pass, each message is validated and sent independently; item-level
      # failures do not affect other messages, and the processed batch returns 207
      # Multi-Status. Per-message failures include validation errors; when a template
      # has `strict_variables` enabled, a missing required variable produces a per-item
      # `unprocessable_entity` error naming that variable while the other messages
      # continue.
      sig do
        params(
          messages: T::Array[Telnyx::EmailMessageBatchParams::Message::OrHash],
          sandbox_mode: T::Boolean,
          idempotency_key: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::EmailMessageBatchResponse)
      end
      def batch(
        # Body param: Array of email messages to send. Up to 1,000 messages per batch
        # request. Each message is validated and sent independently; per-message failures
        # do not affect other messages in the batch.
        messages:,
        # Body param: Applies sandbox mode to all messages in the batch and overrides any
        # per-message `sandbox_mode` value — each message's effective `sandbox_mode` is
        # exactly this envelope value. Reserved recipients at `test.telnyx.com` produce
        # the deterministic event chains documented on CreateEmailRequest.sandbox_mode; no
        # batch item is injected into the MTA or outbound Kafka path. Sandbox batch items
        # are non-billable, consume no daily-send-limit quota, and feed no
        # delivery-reputation signals.
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
      #
      # For compatibility, each event carries the legacy customer-visible `event_type`
      # (`email.`-prefixed), the additive `canonical_event_type` (`email.`-prefixed),
      # and the deprecated `type` duplicate — whose value keeps the exact legacy format:
      # the bare stored event name, never `email.`-prefixed. Gateway rejections render
      # `email.failed` + canonical `email.gw_reject`; MTA expirations render
      # `email.bounced` + canonical `email.expired`; every unchanged outcome carries
      # identical `event_type` and `canonical_event_type` values (and `type` keeps the
      # stored name).
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

      # Moves an existing scheduled email to a new future send time. Only the delivery
      # time (`scheduled_at`) changes; the message ID, content, recipients, tags, and
      # metadata remain unchanged. Returns `409 Conflict` if the message is no longer
      # scheduled or its scheduled-send worker has already started processing it. This
      # route emits no dedicated `rescheduled` event.
      sig do
        params(
          email_id: String,
          scheduled_at: Time,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailMessageDetailResponse)
      end
      def update_schedule(
        # Email message UUID.
        email_id,
        # New ISO 8601 delivery time. Must be strictly in the future.
        scheduled_at:,
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
