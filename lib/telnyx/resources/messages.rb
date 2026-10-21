# frozen_string_literal: true

module Telnyx
  module Resources
    class Messages
      # Send RCS messages
      # @return [Telnyx::Resources::Messages::Rcs]
      attr_reader :rcs

      # Note: This API endpoint can only retrieve messages that are no older than 10
      # days since their creation. If you require messages older than this, please
      # generate an
      # [MDR report.](https://developers.telnyx.com/api-reference/mdr-usage-reports/create-mdr-usage-report)
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The id of the message
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageRetrieveResponse]
      #
      # @see Telnyx::Models::MessageRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["messages/%1$s", id],
          model: Telnyx::Models::MessageRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Cancel a scheduled message that has not yet been sent. Only messages with
      # `status=scheduled` and `send_at` more than a minute from now can be cancelled.
      #
      # @overload cancel_scheduled(id, request_options: {})
      #
      # @param id [String] The id of the message to cancel
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageCancelScheduledResponse]
      #
      # @see Telnyx::Models::MessageCancelScheduledParams
      def cancel_scheduled(id, params = {})
        @client.request(
          method: :delete,
          path: ["messages/%1$s", id],
          model: Telnyx::Models::MessageCancelScheduledResponse,
          options: params[:request_options]
        )
      end

      # Retrieve all messages in a group MMS conversation by the group message ID.
      #
      # @overload retrieve_group_messages(message_id, request_options: {})
      #
      # @param message_id [String] The group message ID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageRetrieveGroupMessagesResponse]
      #
      # @see Telnyx::Models::MessageRetrieveGroupMessagesParams
      def retrieve_group_messages(message_id, params = {})
        @client.request(
          method: :get,
          path: ["messages/group/%1$s", message_id],
          model: Telnyx::Models::MessageRetrieveGroupMessagesResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessageScheduleParams} for more details.
      #
      # Schedule a message with a Phone Number, Alphanumeric Sender ID, Short Code or
      # Number Pool.
      #
      # This endpoint allows you to schedule a message with any messaging resource.
      # Current messaging resources include: long-code, short-code, number-pool, and
      # alphanumeric-sender-id.
      #
      # @overload schedule(to:, auto_detect: nil, from: nil, media_urls: nil, messaging_profile_id: nil, send_at: nil, subject: nil, text: nil, type: nil, use_profile_webhooks: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
      #
      # @param to [String] Receiving address (+E.164 formatted phone number or short code).
      #
      # @param auto_detect [Boolean] Automatically detect if an SMS message is unusually long and exceeds a recommend
      #
      # @param from [String] Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
      #
      # @param media_urls [Array<String>] A list of media URLs. The total media size must be less than 1 MB.
      #
      # @param messaging_profile_id [String] Unique identifier for a messaging profile.
      #
      # @param send_at [Time] ISO 8601 formatted date indicating when to send the message - accurate up till a
      #
      # @param subject [String] Subject of multimedia message
      #
      # @param text [String] Message body (i.e., content) as a non-empty string.
      #
      # @param type [Symbol, Telnyx::Models::MessageScheduleParams::Type] The protocol for sending the message, either SMS or MMS.
      #
      # @param use_profile_webhooks [Boolean] If the profile this number is associated with has webhooks, use them for deliver
      #
      # @param webhook_failover_url [String] The failover URL where webhooks related to this message will be sent if sending
      #
      # @param webhook_url [String] The URL where webhooks related to this message will be sent.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageScheduleResponse]
      #
      # @see Telnyx::Models::MessageScheduleParams
      def schedule(params)
        parsed, options = Telnyx::MessageScheduleParams.dump_request(params)
        @client.request(
          method: :post,
          path: "messages/schedule",
          body: parsed,
          model: Telnyx::Models::MessageScheduleResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessageSendParams} for more details.
      #
      # Send a message with a Phone Number, Alphanumeric Sender ID, Short Code or Number
      # Pool.
      #
      # This endpoint allows you to send a message with any messaging resource. Current
      # messaging resources include: long-code, short-code, number-pool, and
      # alphanumeric-sender-id.
      #
      # @overload send_(to:, auto_detect: nil, encoding: nil, from: nil, media_urls: nil, messaging_profile_id: nil, send_at: nil, subject: nil, text: nil, type: nil, use_profile_webhooks: nil, webhook_failover_url: nil, webhook_url: nil, idempotency_key: nil, request_options: {})
      #
      # @param to [String] Body param: Receiving address (+E.164 formatted phone number or short code).
      #
      # @param auto_detect [Boolean] Body param: Automatically detect if an SMS message is unusually long and exceeds
      #
      # @param encoding [Symbol, Telnyx::Models::MessageSendParams::Encoding] Body param: Encoding to use for the message. `auto` (default) uses smart encodin
      #
      # @param from [String] Body param: Sending address (+E.164 formatted phone number, alphanumeric sender
      #
      # @param media_urls [Array<String>] Body param: A list of media URLs. The total media size must be less than 1 MB.
      #
      # @param messaging_profile_id [String] Body param: Unique identifier for a messaging profile.
      #
      # @param send_at [Time, nil] Body param: ISO 8601 formatted date indicating when to send the message - accura
      #
      # @param subject [String] Body param: Subject of multimedia message
      #
      # @param text [String] Body param: Message body (i.e., content) as a non-empty string.
      #
      # @param type [Symbol, Telnyx::Models::MessageSendParams::Type] Body param: The protocol for sending the message, either SMS or MMS.
      #
      # @param use_profile_webhooks [Boolean] Body param: If the profile this number is associated with has webhooks, use them
      #
      # @param webhook_failover_url [String] Body param: The failover URL where webhooks related to this message will be sent
      #
      # @param webhook_url [String] Body param: The URL where webhooks related to this message will be sent.
      #
      # @param idempotency_key [String] Header param: Optional opaque, unquoted key for safely retrying the same logical
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageSendResponse]
      #
      # @see Telnyx::Models::MessageSendParams
      def send_(params)
        parsed, options = Telnyx::MessageSendParams.dump_request(params)
        header_params = {idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "messages",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Telnyx::Models::MessageSendResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessageSendGroupMmsParams} for more details.
      #
      # Queues an MMS addressed to multiple recipients as a group conversation. Delivery
      # events are reported asynchronously through messaging webhooks.
      #
      # @overload send_group_mms(from:, to:, media_urls: nil, subject: nil, text: nil, use_profile_webhooks: nil, webhook_failover_url: nil, webhook_url: nil, idempotency_key: nil, request_options: {})
      #
      # @param from [String] Body param: Phone number, in +E.164 format, used to send the message.
      #
      # @param to [Array<String>] Body param: A list of destinations. No more than 8 destinations are allowed.
      #
      # @param media_urls [Array<String>] Body param: A list of media URLs. The total media size must be less than 1 MB.
      #
      # @param subject [String] Body param: Subject of multimedia message
      #
      # @param text [String] Body param: Message body (i.e., content) as a non-empty string.
      #
      # @param use_profile_webhooks [Boolean] Body param: If the profile this number is associated with has webhooks, use them
      #
      # @param webhook_failover_url [String] Body param: The failover URL where webhooks related to this message will be sent
      #
      # @param webhook_url [String] Body param: The URL where webhooks related to this message will be sent.
      #
      # @param idempotency_key [String] Header param: Optional opaque, unquoted key for safely retrying the same logical
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageSendGroupMmsResponse]
      #
      # @see Telnyx::Models::MessageSendGroupMmsParams
      def send_group_mms(params)
        parsed, options = Telnyx::MessageSendGroupMmsParams.dump_request(params)
        header_params = {idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "messages/group_mms",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Telnyx::Models::MessageSendGroupMmsResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessageSendLongCodeParams} for more details.
      #
      # Queues an outbound SMS or MMS using a long-code sender. Delivery progress and
      # final disposition are reported asynchronously through messaging webhooks.
      #
      # @overload send_long_code(from:, to:, auto_detect: nil, encoding: nil, media_urls: nil, subject: nil, text: nil, type: nil, use_profile_webhooks: nil, webhook_failover_url: nil, webhook_url: nil, idempotency_key: nil, request_options: {})
      #
      # @param from [String] Body param: Phone number, in +E.164 format, used to send the message.
      #
      # @param to [String] Body param: Receiving address (+E.164 formatted phone number or short code).
      #
      # @param auto_detect [Boolean] Body param: Automatically detect if an SMS message is unusually long and exceeds
      #
      # @param encoding [Symbol, Telnyx::Models::MessageSendLongCodeParams::Encoding] Body param: Encoding to use for the message. `auto` (default) uses smart encodin
      #
      # @param media_urls [Array<String>] Body param: A list of media URLs. The total media size must be less than 1 MB.
      #
      # @param subject [String] Body param: Subject of multimedia message
      #
      # @param text [String] Body param: Message body (i.e., content) as a non-empty string.
      #
      # @param type [Symbol, Telnyx::Models::MessageSendLongCodeParams::Type] Body param: The protocol for sending the message, either SMS or MMS.
      #
      # @param use_profile_webhooks [Boolean] Body param: If the profile this number is associated with has webhooks, use them
      #
      # @param webhook_failover_url [String] Body param: The failover URL where webhooks related to this message will be sent
      #
      # @param webhook_url [String] Body param: The URL where webhooks related to this message will be sent.
      #
      # @param idempotency_key [String] Header param: Optional opaque, unquoted key for safely retrying the same logical
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageSendLongCodeResponse]
      #
      # @see Telnyx::Models::MessageSendLongCodeParams
      def send_long_code(params)
        parsed, options = Telnyx::MessageSendLongCodeParams.dump_request(params)
        header_params = {idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "messages/long_code",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Telnyx::Models::MessageSendLongCodeResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessageSendNumberPoolParams} for more details.
      #
      # Queues an outbound message using a number pool. Telnyx selects an eligible
      # sender from the pool according to its messaging profile configuration.
      #
      # @overload send_number_pool(messaging_profile_id:, to:, auto_detect: nil, encoding: nil, media_urls: nil, subject: nil, text: nil, type: nil, use_profile_webhooks: nil, webhook_failover_url: nil, webhook_url: nil, idempotency_key: nil, request_options: {})
      #
      # @param messaging_profile_id [String] Body param: Unique identifier for a messaging profile.
      #
      # @param to [String] Body param: Receiving address (+E.164 formatted phone number or short code).
      #
      # @param auto_detect [Boolean] Body param: Automatically detect if an SMS message is unusually long and exceeds
      #
      # @param encoding [Symbol, Telnyx::Models::MessageSendNumberPoolParams::Encoding] Body param: Encoding to use for the message. `auto` (default) uses smart encodin
      #
      # @param media_urls [Array<String>] Body param: A list of media URLs. The total media size must be less than 1 MB.
      #
      # @param subject [String] Body param: Subject of multimedia message
      #
      # @param text [String] Body param: Message body (i.e., content) as a non-empty string.
      #
      # @param type [Symbol, Telnyx::Models::MessageSendNumberPoolParams::Type] Body param: The protocol for sending the message, either SMS or MMS.
      #
      # @param use_profile_webhooks [Boolean] Body param: If the profile this number is associated with has webhooks, use them
      #
      # @param webhook_failover_url [String] Body param: The failover URL where webhooks related to this message will be sent
      #
      # @param webhook_url [String] Body param: The URL where webhooks related to this message will be sent.
      #
      # @param idempotency_key [String] Header param: Optional opaque, unquoted key for safely retrying the same logical
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageSendNumberPoolResponse]
      #
      # @see Telnyx::Models::MessageSendNumberPoolParams
      def send_number_pool(params)
        parsed, options = Telnyx::MessageSendNumberPoolParams.dump_request(params)
        header_params = {idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "messages/number_pool",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Telnyx::Models::MessageSendNumberPoolResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessageSendShortCodeParams} for more details.
      #
      # Queues an outbound SMS or MMS using a short-code sender. Delivery progress and
      # final disposition are reported asynchronously through messaging webhooks.
      #
      # @overload send_short_code(from:, to:, auto_detect: nil, encoding: nil, media_urls: nil, subject: nil, text: nil, type: nil, use_profile_webhooks: nil, webhook_failover_url: nil, webhook_url: nil, idempotency_key: nil, request_options: {})
      #
      # @param from [String] Body param: Phone number, in +E.164 format, used to send the message.
      #
      # @param to [String] Body param: Receiving address (+E.164 formatted phone number or short code).
      #
      # @param auto_detect [Boolean] Body param: Automatically detect if an SMS message is unusually long and exceeds
      #
      # @param encoding [Symbol, Telnyx::Models::MessageSendShortCodeParams::Encoding] Body param: Encoding to use for the message. `auto` (default) uses smart encodin
      #
      # @param media_urls [Array<String>] Body param: A list of media URLs. The total media size must be less than 1 MB.
      #
      # @param subject [String] Body param: Subject of multimedia message
      #
      # @param text [String] Body param: Message body (i.e., content) as a non-empty string.
      #
      # @param type [Symbol, Telnyx::Models::MessageSendShortCodeParams::Type] Body param: The protocol for sending the message, either SMS or MMS.
      #
      # @param use_profile_webhooks [Boolean] Body param: If the profile this number is associated with has webhooks, use them
      #
      # @param webhook_failover_url [String] Body param: The failover URL where webhooks related to this message will be sent
      #
      # @param webhook_url [String] Body param: The URL where webhooks related to this message will be sent.
      #
      # @param idempotency_key [String] Header param: Optional opaque, unquoted key for safely retrying the same logical
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageSendShortCodeResponse]
      #
      # @see Telnyx::Models::MessageSendShortCodeParams
      def send_short_code(params)
        parsed, options = Telnyx::MessageSendShortCodeParams.dump_request(params)
        header_params = {idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "messages/short_code",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Telnyx::Models::MessageSendShortCodeResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessageSendWithAlphanumericSenderParams} for more details.
      #
      # Send an SMS message using an alphanumeric sender ID. This is SMS only.
      #
      # @overload send_with_alphanumeric_sender(from:, messaging_profile_id:, text:, to:, use_profile_webhooks: nil, webhook_failover_url: nil, webhook_url: nil, idempotency_key: nil, request_options: {})
      #
      # @param from [String] Body param: A valid alphanumeric sender ID on the user's account.
      #
      # @param messaging_profile_id [String] Body param: The messaging profile ID to use.
      #
      # @param text [String] Body param: The message body.
      #
      # @param to [String] Body param: Receiving address (+E.164 formatted phone number).
      #
      # @param use_profile_webhooks [Boolean] Body param: If true, use the messaging profile's webhook settings.
      #
      # @param webhook_failover_url [String, nil] Body param: Failover callback URL for delivery status updates.
      #
      # @param webhook_url [String, nil] Body param: Callback URL for delivery status updates.
      #
      # @param idempotency_key [String] Header param: Optional opaque, unquoted key for safely retrying the same logical
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageSendWithAlphanumericSenderResponse]
      #
      # @see Telnyx::Models::MessageSendWithAlphanumericSenderParams
      def send_with_alphanumeric_sender(params)
        parsed, options = Telnyx::MessageSendWithAlphanumericSenderParams.dump_request(params)
        header_params = {idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "messages/alphanumeric_sender_id",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Telnyx::Models::MessageSendWithAlphanumericSenderResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessageWhatsappParams} for more details.
      #
      # Sends a WhatsApp message using a Telnyx WhatsApp-enabled number. The message
      # body, interactive elements, media, location, and reaction content are specified
      # in the `whatsapp_message` field. Delivery progress and final disposition are
      # reported asynchronously through messaging webhooks.
      #
      # @overload whatsapp(from:, to:, whatsapp_message:, messaging_profile_id: nil, type: nil, webhook_url: nil, idempotency_key: nil, request_options: {})
      #
      # @param from [String] Body param: Phone number in +E.164 format associated with Whatsapp account
      #
      # @param to [String] Body param: Recipient phone number in +E.164 format, or the business-scoped user
      #
      # @param whatsapp_message [Telnyx::Models::MessageWhatsappParams::WhatsappMessage] Body param
      #
      # @param messaging_profile_id [String] Body param: Messaging profile ID - required if the 'from' number is not SMS-enab
      #
      # @param type [Symbol, Telnyx::Models::MessageWhatsappParams::Type] Body param: Message type - must be set to "WHATSAPP"
      #
      # @param webhook_url [String] Body param: The URL where webhooks related to this message will be sent.
      #
      # @param idempotency_key [String] Header param: Optional opaque, unquoted key for safely retrying the same logical
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageWhatsappResponse]
      #
      # @see Telnyx::Models::MessageWhatsappParams
      def whatsapp(params)
        parsed, options = Telnyx::MessageWhatsappParams.dump_request(params)
        header_params = {idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "messages/whatsapp",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Telnyx::Models::MessageWhatsappResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @rcs = Telnyx::Resources::Messages::Rcs.new(client: client)
      end
    end
  end
end
