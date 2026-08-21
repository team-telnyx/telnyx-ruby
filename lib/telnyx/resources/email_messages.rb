# frozen_string_literal: true

module Telnyx
  module Resources
    # Send and manage email messages. Legacy `/v2/emails` routes are aliases for these
    # endpoints.
    class EmailMessages
      # Send and manage email messages. Legacy `/v2/emails` routes are aliases for these
      # endpoints.
      # @return [Telnyx::Resources::EmailMessages::Recipients]
      attr_reader :recipients

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailMessageCreateParams} for more details.
      #
      # Queues, schedules, or sandbox-sends an email message. The legacy `/v2/emails`
      # POST route is a backward-compatible alias for this operation.
      #
      # `subject` is required unless `template_id` is supplied. When using
      # `template_id`, do not also provide `subject`, `html_body`, or `text_body`; the
      # template is rendered with `template_variables`.
      #
      # Note: template lookup failures (not found, wrong account) return 400, not 404.
      #
      # @overload create(from:, to:, attachments: nil, bcc: nil, cc: nil, forward_of_message_id: nil, from_name: nil, group_id: nil, headers: nil, html_body: nil, ignore_suppression: nil, in_reply_to_message_id: nil, inline_css: nil, metadata: nil, reply_to: nil, reply_to_all: nil, sandbox_mode: nil, scheduled_at: nil, send_at: nil, subject: nil, tags: nil, template_id: nil, template_variables: nil, text_body: nil, tracking_settings: nil, idempotency_key: nil, request_options: {})
      #
      # @param from [String, Telnyx::Models::EmailInboxes::EmailAddress] Body param
      #
      # @param to [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>] Body param
      #
      # @param attachments [Array<Telnyx::Models::AttachmentRequest>] Body param
      #
      # @param bcc [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>] Body param
      #
      # @param cc [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>] Body param
      #
      # @param forward_of_message_id [String, nil] Body param: Telnyx message UUID of the message this send forwards. Forwarded
      #
      # @param from_name [String] Body param: Optional display name for string `from`; overrides `from.name` when
      #
      # @param group_id [String, nil] Body param: Optional unsubscribe-group UUID used for group-scoped suppression ch
      #
      # @param headers [Hash{Symbol=>String}] Body param: Custom email headers. Write-only; not returned in responses.
      #
      # @param html_body [String] Body param: HTML email body. Returned only by `GET /email_messages/{id}`; omitte
      #
      # @param ignore_suppression [Boolean] Body param: When true, allows delivery to recipients whose suppressions explicit
      #
      # @param in_reply_to_message_id [String, nil] Body param: Telnyx message UUID of the message this send replies to. When provid
      #
      # @param inline_css [Boolean] Body param
      #
      # @param metadata [Hash{Symbol=>Object}] Body param: Custom metadata. Write-only; not returned in responses.
      #
      # @param reply_to [String, Telnyx::Models::EmailInboxes::EmailAddress] Body param: Reply-to address. If provided as an object with a name, only the ema
      #
      # @param reply_to_all [Boolean, nil] Body param: Indicates a reply-all intent. In Phase 1 (wire-only) this does not
      #
      # @param sandbox_mode [Boolean] Body param
      #
      # @param scheduled_at [Time, nil] Body param: Future ISO 8601 time to schedule sending. Invalid or past timestamps
      #
      # @param send_at [Time] Body param: Deprecated alias for `scheduled_at`.
      #
      # @param subject [String] Body param: Required unless `template_id` is supplied. When using a template, th
      #
      # @param tags [Array<String>] Body param: Tags for categorization and reporting. Stored on the message and pro
      #
      # @param template_id [String] Body param
      #
      # @param template_variables [Hash{Symbol=>Object}] Body param: Variables for Liquid template rendering. Non-object values may cause
      #
      # @param text_body [String] Body param: Plain text email body. Returned only by `GET /email_messages/{id}`;
      #
      # @param tracking_settings [Telnyx::Models::TrackingSettings] Body param: Per-send open and click tracking overrides. Omitted properties inher
      #
      # @param idempotency_key [String] Header param: Optional opaque, unquoted key for safely retrying the same logical
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailInboxes::EmailMessageResponse]
      #
      # @see Telnyx::Models::EmailMessageCreateParams
      def create(params)
        parsed, options = Telnyx::EmailMessageCreateParams.dump_request(params)
        header_params = {idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "email_messages",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Telnyx::EmailInboxes::EmailMessageResponse,
          options: options
        )
      end

      # The legacy `/v2/emails/{id}` GET route is a backward-compatible alias for this
      # operation.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Email message UUID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailMessageRetrieveResponse]
      #
      # @see Telnyx::Models::EmailMessageRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["email_messages/%1$s", id],
          model: Telnyx::Models::EmailMessageRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailMessageListParams} for more details.
      #
      # Lists messages sorted newest first by `created_at desc, id desc`. No filters
      # other than cursor pagination are implemented. The legacy `/v2/emails` GET route
      # is a backward-compatible alias for this operation.
      #
      # @overload list(page_cursor: nil, page_size: nil, request_options: {})
      #
      # @param page_cursor [String] Opaque URL-safe Base64 cursor returned by a previous list response.
      #
      # @param page_size [Integer] Number of results to return. Defaults to 25; maximum is 100. Invalid values are
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::EmailCursorPagination<Telnyx::Models::EmailInboxes::EmailMessage>]
      #
      # @see Telnyx::Models::EmailMessageListParams
      def list(params = {})
        parsed, options = Telnyx::EmailMessageListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "email_messages",
          query: query,
          page: Telnyx::Internal::EmailCursorPagination,
          model: Telnyx::EmailInboxes::EmailMessage,
          options: options
        )
      end

      # Permanently deletes an account-scoped email message, its events, its durable
      # recipients, and unshared attachment objects. Returns 404 when the message does
      # not exist in the authenticated account. The legacy `/v2/emails/{id}` DELETE
      # route is a backward-compatible alias.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Email message UUID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::EmailMessageDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["email_messages/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailMessageBatchParams} for more details.
      #
      # Creates up to 50 email messages in a single request.
      #
      # @overload batch(messages:, sandbox_mode: nil, idempotency_key: nil, request_options: {})
      #
      # @param messages [Array<Telnyx::Models::EmailMessageBatchParams::Message>] Body param
      #
      # @param sandbox_mode [Boolean] Body param: Applies sandbox mode to all messages in the batch. Overrides any per
      #
      # @param idempotency_key [String] Header param: Optional opaque, unquoted key for safely retrying the same logical
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailMessageBatchResponse]
      #
      # @see Telnyx::Models::EmailMessageBatchParams
      def batch(params)
        parsed, options = Telnyx::EmailMessageBatchParams.dump_request(params)
        header_params = {idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "email_messages/batch",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Telnyx::Models::EmailMessageBatchResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailMessageDeleteAllParams} for more details.
      #
      # Permanently deletes every email in the authenticated account sent from or to the
      # supplied address, including retained events whose parent message has expired.
      # Events and durable recipients are deleted immediately with each message. The
      # operation never searches or reports matches in another account. The legacy
      # `/v2/emails` DELETE route is a backward-compatible alias.
      #
      # @overload delete_all(address:, request_options: {})
      #
      # @param address [String] Sender or recipient address to delete. Matching is trimmed and case-insensitive.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::EmailMessageDeleteAllParams
      def delete_all(params)
        parsed, options = Telnyx::EmailMessageDeleteAllParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :delete,
          path: "email_messages",
          query: query,
          model: NilClass,
          options: options
        )
      end

      # Cancels a scheduled email and returns it with status `cancelled`. The legacy
      # `/v2/emails/{id}/schedule` DELETE route is an alias.
      #
      # @overload delete_schedule(email_id, request_options: {})
      #
      # @param email_id [String] Email message UUID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailInboxes::EmailMessageResponse]
      #
      # @see Telnyx::Models::EmailMessageDeleteScheduleParams
      def delete_schedule(email_id, params = {})
        @client.request(
          method: :delete,
          path: ["email_messages/%1$s/schedule", email_id],
          model: Telnyx::EmailInboxes::EmailMessageResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailMessageRetrieveEventsParams} for more details.
      #
      # Lists events for a single message sorted oldest first by
      # `occurred_at asc, id asc`. The legacy `/v2/emails/{id}/events` GET route is a
      # backward-compatible alias.
      #
      # @overload retrieve_events(email_id, page_cursor: nil, page_size: nil, request_options: {})
      #
      # @param email_id [String] Email message UUID.
      #
      # @param page_cursor [String] Opaque URL-safe Base64 cursor returned by a previous list response.
      #
      # @param page_size [Integer] Number of results to return. Defaults to 25; maximum is 100. Invalid values are
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::EmailCursorPagination<Telnyx::Models::MessageEvent>]
      #
      # @see Telnyx::Models::EmailMessageRetrieveEventsParams
      def retrieve_events(email_id, params = {})
        parsed, options = Telnyx::EmailMessageRetrieveEventsParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["email_messages/%1$s/events", email_id],
          query: query,
          page: Telnyx::Internal::EmailCursorPagination,
          model: Telnyx::MessageEvent,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @recipients = Telnyx::Resources::EmailMessages::Recipients.new(client: client)
      end
    end
  end
end
