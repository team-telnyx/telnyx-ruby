# frozen_string_literal: true

module Telnyx
  module Resources
    class Messages
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
      # @overload send_(to:, auto_detect: nil, from: nil, media_urls: nil, messaging_profile_id: nil, send_at: nil, subject: nil, text: nil, type: nil, use_profile_webhooks: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
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
      # @param send_at [Time, nil] ISO 8601 formatted date indicating when to send the message - accurate up till a
      #
      # @param subject [String] Subject of multimedia message
      #
      # @param text [String] Message body (i.e., content) as a non-empty string.
      #
      # @param type [Symbol, Telnyx::Models::MessageSendParams::Type] The protocol for sending the message, either SMS or MMS.
      #
      # @param use_profile_webhooks [Boolean] If the profile this number is associated with has webhooks, use them for deliver
      #
      # @param webhook_failover_url [String] The failover URL where webhooks related to this message will be sent if sending
      #
      # @param webhook_url [String] The URL where webhooks related to this message will be sent.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageSendResponse]
      #
      # @see Telnyx::Models::MessageSendParams
      def send_(params)
        parsed, options = Telnyx::MessageSendParams.dump_request(params)
        @client.request(
          method: :post,
          path: "messages",
          body: parsed,
          model: Telnyx::Models::MessageSendResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessageSendGroupMmsParams} for more details.
      #
      # Send a group MMS message
      #
      # @overload send_group_mms(from:, to:, media_urls: nil, subject: nil, text: nil, use_profile_webhooks: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
      #
      # @param from [String] Phone number, in +E.164 format, used to send the message.
      #
      # @param to [Array<String>] A list of destinations. No more than 8 destinations are allowed.
      #
      # @param media_urls [Array<String>] A list of media URLs. The total media size must be less than 1 MB.
      #
      # @param subject [String] Subject of multimedia message
      #
      # @param text [String] Message body (i.e., content) as a non-empty string.
      #
      # @param use_profile_webhooks [Boolean] If the profile this number is associated with has webhooks, use them for deliver
      #
      # @param webhook_failover_url [String] The failover URL where webhooks related to this message will be sent if sending
      #
      # @param webhook_url [String] The URL where webhooks related to this message will be sent.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageSendGroupMmsResponse]
      #
      # @see Telnyx::Models::MessageSendGroupMmsParams
      def send_group_mms(params)
        parsed, options = Telnyx::MessageSendGroupMmsParams.dump_request(params)
        @client.request(
          method: :post,
          path: "messages/group_mms",
          body: parsed,
          model: Telnyx::Models::MessageSendGroupMmsResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessageSendLongCodeParams} for more details.
      #
      # Send a long code message
      #
      # @overload send_long_code(from:, to:, auto_detect: nil, media_urls: nil, subject: nil, text: nil, type: nil, use_profile_webhooks: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
      #
      # @param from [String] Phone number, in +E.164 format, used to send the message.
      #
      # @param to [String] Receiving address (+E.164 formatted phone number or short code).
      #
      # @param auto_detect [Boolean] Automatically detect if an SMS message is unusually long and exceeds a recommend
      #
      # @param media_urls [Array<String>] A list of media URLs. The total media size must be less than 1 MB.
      #
      # @param subject [String] Subject of multimedia message
      #
      # @param text [String] Message body (i.e., content) as a non-empty string.
      #
      # @param type [Symbol, Telnyx::Models::MessageSendLongCodeParams::Type] The protocol for sending the message, either SMS or MMS.
      #
      # @param use_profile_webhooks [Boolean] If the profile this number is associated with has webhooks, use them for deliver
      #
      # @param webhook_failover_url [String] The failover URL where webhooks related to this message will be sent if sending
      #
      # @param webhook_url [String] The URL where webhooks related to this message will be sent.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageSendLongCodeResponse]
      #
      # @see Telnyx::Models::MessageSendLongCodeParams
      def send_long_code(params)
        parsed, options = Telnyx::MessageSendLongCodeParams.dump_request(params)
        @client.request(
          method: :post,
          path: "messages/long_code",
          body: parsed,
          model: Telnyx::Models::MessageSendLongCodeResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessageSendNumberPoolParams} for more details.
      #
      # Send a message using number pool
      #
      # @overload send_number_pool(messaging_profile_id:, to:, auto_detect: nil, media_urls: nil, subject: nil, text: nil, type: nil, use_profile_webhooks: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
      #
      # @param messaging_profile_id [String] Unique identifier for a messaging profile.
      #
      # @param to [String] Receiving address (+E.164 formatted phone number or short code).
      #
      # @param auto_detect [Boolean] Automatically detect if an SMS message is unusually long and exceeds a recommend
      #
      # @param media_urls [Array<String>] A list of media URLs. The total media size must be less than 1 MB.
      #
      # @param subject [String] Subject of multimedia message
      #
      # @param text [String] Message body (i.e., content) as a non-empty string.
      #
      # @param type [Symbol, Telnyx::Models::MessageSendNumberPoolParams::Type] The protocol for sending the message, either SMS or MMS.
      #
      # @param use_profile_webhooks [Boolean] If the profile this number is associated with has webhooks, use them for deliver
      #
      # @param webhook_failover_url [String] The failover URL where webhooks related to this message will be sent if sending
      #
      # @param webhook_url [String] The URL where webhooks related to this message will be sent.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageSendNumberPoolResponse]
      #
      # @see Telnyx::Models::MessageSendNumberPoolParams
      def send_number_pool(params)
        parsed, options = Telnyx::MessageSendNumberPoolParams.dump_request(params)
        @client.request(
          method: :post,
          path: "messages/number_pool",
          body: parsed,
          model: Telnyx::Models::MessageSendNumberPoolResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessageSendShortCodeParams} for more details.
      #
      # Send a short code message
      #
      # @overload send_short_code(from:, to:, auto_detect: nil, media_urls: nil, subject: nil, text: nil, type: nil, use_profile_webhooks: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
      #
      # @param from [String] Phone number, in +E.164 format, used to send the message.
      #
      # @param to [String] Receiving address (+E.164 formatted phone number or short code).
      #
      # @param auto_detect [Boolean] Automatically detect if an SMS message is unusually long and exceeds a recommend
      #
      # @param media_urls [Array<String>] A list of media URLs. The total media size must be less than 1 MB.
      #
      # @param subject [String] Subject of multimedia message
      #
      # @param text [String] Message body (i.e., content) as a non-empty string.
      #
      # @param type [Symbol, Telnyx::Models::MessageSendShortCodeParams::Type] The protocol for sending the message, either SMS or MMS.
      #
      # @param use_profile_webhooks [Boolean] If the profile this number is associated with has webhooks, use them for deliver
      #
      # @param webhook_failover_url [String] The failover URL where webhooks related to this message will be sent if sending
      #
      # @param webhook_url [String] The URL where webhooks related to this message will be sent.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageSendShortCodeResponse]
      #
      # @see Telnyx::Models::MessageSendShortCodeParams
      def send_short_code(params)
        parsed, options = Telnyx::MessageSendShortCodeParams.dump_request(params)
        @client.request(
          method: :post,
          path: "messages/short_code",
          body: parsed,
          model: Telnyx::Models::MessageSendShortCodeResponse,
          options: options
        )
      end

      # Send a Whatsapp message
      #
      # @overload send_whatsapp(from:, to:, whatsapp_message:, type: nil, webhook_url: nil, request_options: {})
      #
      # @param from [String] Phone number in +E.164 format associated with Whatsapp account
      #
      # @param to [String] Phone number in +E.164 format
      #
      # @param whatsapp_message [Telnyx::Models::MessageSendWhatsappParams::WhatsappMessage]
      #
      # @param type [Symbol, Telnyx::Models::MessageSendWhatsappParams::Type] Message type - must be set to "WHATSAPP"
      #
      # @param webhook_url [String] The URL where webhooks related to this message will be sent.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageSendWhatsappResponse]
      #
      # @see Telnyx::Models::MessageSendWhatsappParams
      def send_whatsapp(params)
        parsed, options = Telnyx::MessageSendWhatsappParams.dump_request(params)
        @client.request(
          method: :post,
          path: "messages/whatsapp",
          body: parsed,
          model: Telnyx::Models::MessageSendWhatsappResponse,
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
