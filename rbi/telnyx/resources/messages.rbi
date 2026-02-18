# typed: strong

module Telnyx
  module Resources
    class Messages
      sig { returns(Telnyx::Resources::Messages::Rcs) }
      attr_reader :rcs

      # Note: This API endpoint can only retrieve messages that are no older than 10
      # days since their creation. If you require messages older than this, please
      # generate an
      # [MDR report.](https://developers.telnyx.com/api-reference/mdr-usage-reports/create-mdr-usage-report)
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessageRetrieveResponse)
      end
      def retrieve(
        # The id of the message
        id,
        request_options: {}
      )
      end

      # Cancel a scheduled message that has not yet been sent. Only messages with
      # `status=scheduled` and `send_at` more than a minute from now can be cancelled.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessageCancelScheduledResponse)
      end
      def cancel_scheduled(
        # The id of the message to cancel
        id,
        request_options: {}
      )
      end

      # Schedule a message with a Phone Number, Alphanumeric Sender ID, Short Code or
      # Number Pool.
      #
      # This endpoint allows you to schedule a message with any messaging resource.
      # Current messaging resources include: long-code, short-code, number-pool, and
      # alphanumeric-sender-id.
      sig do
        params(
          to: String,
          auto_detect: T::Boolean,
          from: String,
          media_urls: T::Array[String],
          messaging_profile_id: String,
          send_at: Time,
          subject: String,
          text: String,
          type: Telnyx::MessageScheduleParams::Type::OrSymbol,
          use_profile_webhooks: T::Boolean,
          webhook_failover_url: String,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessageScheduleResponse)
      end
      def schedule(
        # Receiving address (+E.164 formatted phone number or short code).
        to:,
        # Automatically detect if an SMS message is unusually long and exceeds a
        # recommended limit of message parts.
        auto_detect: nil,
        # Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
        # code).
        #
        # **Required if sending with a phone number, short code, or alphanumeric sender
        # ID.**
        from: nil,
        # A list of media URLs. The total media size must be less than 1 MB.
        #
        # **Required for MMS**
        media_urls: nil,
        # Unique identifier for a messaging profile.
        #
        # **Required if sending via number pool or with an alphanumeric sender ID.**
        messaging_profile_id: nil,
        # ISO 8601 formatted date indicating when to send the message - accurate up till a
        # minute.
        send_at: nil,
        # Subject of multimedia message
        subject: nil,
        # Message body (i.e., content) as a non-empty string.
        #
        # **Required for SMS**
        text: nil,
        # The protocol for sending the message, either SMS or MMS.
        type: nil,
        # If the profile this number is associated with has webhooks, use them for
        # delivery notifications. If webhooks are also specified on the message itself,
        # they will be attempted first, then those on the profile.
        use_profile_webhooks: nil,
        # The failover URL where webhooks related to this message will be sent if sending
        # to the primary URL fails.
        webhook_failover_url: nil,
        # The URL where webhooks related to this message will be sent.
        webhook_url: nil,
        request_options: {}
      )
      end

      # Send a message with a Phone Number, Alphanumeric Sender ID, Short Code or Number
      # Pool.
      #
      # This endpoint allows you to send a message with any messaging resource. Current
      # messaging resources include: long-code, short-code, number-pool, and
      # alphanumeric-sender-id.
      sig do
        params(
          to: String,
          auto_detect: T::Boolean,
          encoding: Telnyx::MessageSendParams::Encoding::OrSymbol,
          from: String,
          media_urls: T::Array[String],
          messaging_profile_id: String,
          send_at: T.nilable(Time),
          subject: String,
          text: String,
          type: Telnyx::MessageSendParams::Type::OrSymbol,
          use_profile_webhooks: T::Boolean,
          webhook_failover_url: String,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessageSendResponse)
      end
      def send_(
        # Receiving address (+E.164 formatted phone number or short code).
        to:,
        # Automatically detect if an SMS message is unusually long and exceeds a
        # recommended limit of message parts.
        auto_detect: nil,
        # Encoding to use for the message. `auto` (default) uses smart encoding to
        # automatically select the most efficient encoding. `gsm7` forces GSM-7 encoding
        # (returns 400 if message contains characters that cannot be encoded). `ucs2`
        # forces UCS-2 encoding and disables smart encoding. When set, this overrides the
        # messaging profile's `smart_encoding` setting.
        encoding: nil,
        # Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
        # code).
        #
        # **Required if sending with a phone number, short code, or alphanumeric sender
        # ID.**
        from: nil,
        # A list of media URLs. The total media size must be less than 1 MB.
        #
        # **Required for MMS**
        media_urls: nil,
        # Unique identifier for a messaging profile.
        #
        # **Required if sending via number pool or with an alphanumeric sender ID.**
        messaging_profile_id: nil,
        # ISO 8601 formatted date indicating when to send the message - accurate up till a
        # minute.
        send_at: nil,
        # Subject of multimedia message
        subject: nil,
        # Message body (i.e., content) as a non-empty string.
        #
        # **Required for SMS**
        text: nil,
        # The protocol for sending the message, either SMS or MMS.
        type: nil,
        # If the profile this number is associated with has webhooks, use them for
        # delivery notifications. If webhooks are also specified on the message itself,
        # they will be attempted first, then those on the profile.
        use_profile_webhooks: nil,
        # The failover URL where webhooks related to this message will be sent if sending
        # to the primary URL fails.
        webhook_failover_url: nil,
        # The URL where webhooks related to this message will be sent.
        webhook_url: nil,
        request_options: {}
      )
      end

      # Send a group MMS message
      sig do
        params(
          from: String,
          to: T::Array[String],
          media_urls: T::Array[String],
          subject: String,
          text: String,
          use_profile_webhooks: T::Boolean,
          webhook_failover_url: String,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessageSendGroupMmsResponse)
      end
      def send_group_mms(
        # Phone number, in +E.164 format, used to send the message.
        from:,
        # A list of destinations. No more than 8 destinations are allowed.
        to:,
        # A list of media URLs. The total media size must be less than 1 MB.
        media_urls: nil,
        # Subject of multimedia message
        subject: nil,
        # Message body (i.e., content) as a non-empty string.
        text: nil,
        # If the profile this number is associated with has webhooks, use them for
        # delivery notifications. If webhooks are also specified on the message itself,
        # they will be attempted first, then those on the profile.
        use_profile_webhooks: nil,
        # The failover URL where webhooks related to this message will be sent if sending
        # to the primary URL fails.
        webhook_failover_url: nil,
        # The URL where webhooks related to this message will be sent.
        webhook_url: nil,
        request_options: {}
      )
      end

      # Send a long code message
      sig do
        params(
          from: String,
          to: String,
          auto_detect: T::Boolean,
          encoding: Telnyx::MessageSendLongCodeParams::Encoding::OrSymbol,
          media_urls: T::Array[String],
          subject: String,
          text: String,
          type: Telnyx::MessageSendLongCodeParams::Type::OrSymbol,
          use_profile_webhooks: T::Boolean,
          webhook_failover_url: String,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessageSendLongCodeResponse)
      end
      def send_long_code(
        # Phone number, in +E.164 format, used to send the message.
        from:,
        # Receiving address (+E.164 formatted phone number or short code).
        to:,
        # Automatically detect if an SMS message is unusually long and exceeds a
        # recommended limit of message parts.
        auto_detect: nil,
        # Encoding to use for the message. `auto` (default) uses smart encoding to
        # automatically select the most efficient encoding. `gsm7` forces GSM-7 encoding
        # (returns 400 if message contains characters that cannot be encoded). `ucs2`
        # forces UCS-2 encoding and disables smart encoding. When set, this overrides the
        # messaging profile's `smart_encoding` setting.
        encoding: nil,
        # A list of media URLs. The total media size must be less than 1 MB.
        #
        # **Required for MMS**
        media_urls: nil,
        # Subject of multimedia message
        subject: nil,
        # Message body (i.e., content) as a non-empty string.
        #
        # **Required for SMS**
        text: nil,
        # The protocol for sending the message, either SMS or MMS.
        type: nil,
        # If the profile this number is associated with has webhooks, use them for
        # delivery notifications. If webhooks are also specified on the message itself,
        # they will be attempted first, then those on the profile.
        use_profile_webhooks: nil,
        # The failover URL where webhooks related to this message will be sent if sending
        # to the primary URL fails.
        webhook_failover_url: nil,
        # The URL where webhooks related to this message will be sent.
        webhook_url: nil,
        request_options: {}
      )
      end

      # Send a message using number pool
      sig do
        params(
          messaging_profile_id: String,
          to: String,
          auto_detect: T::Boolean,
          encoding: Telnyx::MessageSendNumberPoolParams::Encoding::OrSymbol,
          media_urls: T::Array[String],
          subject: String,
          text: String,
          type: Telnyx::MessageSendNumberPoolParams::Type::OrSymbol,
          use_profile_webhooks: T::Boolean,
          webhook_failover_url: String,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessageSendNumberPoolResponse)
      end
      def send_number_pool(
        # Unique identifier for a messaging profile.
        messaging_profile_id:,
        # Receiving address (+E.164 formatted phone number or short code).
        to:,
        # Automatically detect if an SMS message is unusually long and exceeds a
        # recommended limit of message parts.
        auto_detect: nil,
        # Encoding to use for the message. `auto` (default) uses smart encoding to
        # automatically select the most efficient encoding. `gsm7` forces GSM-7 encoding
        # (returns 400 if message contains characters that cannot be encoded). `ucs2`
        # forces UCS-2 encoding and disables smart encoding. When set, this overrides the
        # messaging profile's `smart_encoding` setting.
        encoding: nil,
        # A list of media URLs. The total media size must be less than 1 MB.
        #
        # **Required for MMS**
        media_urls: nil,
        # Subject of multimedia message
        subject: nil,
        # Message body (i.e., content) as a non-empty string.
        #
        # **Required for SMS**
        text: nil,
        # The protocol for sending the message, either SMS or MMS.
        type: nil,
        # If the profile this number is associated with has webhooks, use them for
        # delivery notifications. If webhooks are also specified on the message itself,
        # they will be attempted first, then those on the profile.
        use_profile_webhooks: nil,
        # The failover URL where webhooks related to this message will be sent if sending
        # to the primary URL fails.
        webhook_failover_url: nil,
        # The URL where webhooks related to this message will be sent.
        webhook_url: nil,
        request_options: {}
      )
      end

      # Send a short code message
      sig do
        params(
          from: String,
          to: String,
          auto_detect: T::Boolean,
          encoding: Telnyx::MessageSendShortCodeParams::Encoding::OrSymbol,
          media_urls: T::Array[String],
          subject: String,
          text: String,
          type: Telnyx::MessageSendShortCodeParams::Type::OrSymbol,
          use_profile_webhooks: T::Boolean,
          webhook_failover_url: String,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessageSendShortCodeResponse)
      end
      def send_short_code(
        # Phone number, in +E.164 format, used to send the message.
        from:,
        # Receiving address (+E.164 formatted phone number or short code).
        to:,
        # Automatically detect if an SMS message is unusually long and exceeds a
        # recommended limit of message parts.
        auto_detect: nil,
        # Encoding to use for the message. `auto` (default) uses smart encoding to
        # automatically select the most efficient encoding. `gsm7` forces GSM-7 encoding
        # (returns 400 if message contains characters that cannot be encoded). `ucs2`
        # forces UCS-2 encoding and disables smart encoding. When set, this overrides the
        # messaging profile's `smart_encoding` setting.
        encoding: nil,
        # A list of media URLs. The total media size must be less than 1 MB.
        #
        # **Required for MMS**
        media_urls: nil,
        # Subject of multimedia message
        subject: nil,
        # Message body (i.e., content) as a non-empty string.
        #
        # **Required for SMS**
        text: nil,
        # The protocol for sending the message, either SMS or MMS.
        type: nil,
        # If the profile this number is associated with has webhooks, use them for
        # delivery notifications. If webhooks are also specified on the message itself,
        # they will be attempted first, then those on the profile.
        use_profile_webhooks: nil,
        # The failover URL where webhooks related to this message will be sent if sending
        # to the primary URL fails.
        webhook_failover_url: nil,
        # The URL where webhooks related to this message will be sent.
        webhook_url: nil,
        request_options: {}
      )
      end

      # Send a Whatsapp message
      sig do
        params(
          from: String,
          to: String,
          whatsapp_message:
            Telnyx::MessageSendWhatsappParams::WhatsappMessage::OrHash,
          type: Telnyx::MessageSendWhatsappParams::Type::OrSymbol,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessageSendWhatsappResponse)
      end
      def send_whatsapp(
        # Phone number in +E.164 format associated with Whatsapp account
        from:,
        # Phone number in +E.164 format
        to:,
        whatsapp_message:,
        # Message type - must be set to "WHATSAPP"
        type: nil,
        # The URL where webhooks related to this message will be sent.
        webhook_url: nil,
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
