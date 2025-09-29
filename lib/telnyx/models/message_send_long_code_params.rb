# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Messages#send_long_code
    class MessageSendLongCodeParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute from
      #   Phone number, in +E.164 format, used to send the message.
      #
      #   @return [String]
      required :from, String

      # @!attribute to
      #   Receiving address (+E.164 formatted phone number or short code).
      #
      #   @return [String]
      required :to, String

      # @!attribute auto_detect
      #   Automatically detect if an SMS message is unusually long and exceeds a
      #   recommended limit of message parts.
      #
      #   @return [Boolean, nil]
      optional :auto_detect, Telnyx::Internal::Type::Boolean

      # @!attribute media_urls
      #   A list of media URLs. The total media size must be less than 1 MB.
      #
      #   **Required for MMS**
      #
      #   @return [Array<String>, nil]
      optional :media_urls, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute subject
      #   Subject of multimedia message
      #
      #   @return [String, nil]
      optional :subject, String

      # @!attribute text
      #   Message body (i.e., content) as a non-empty string.
      #
      #   **Required for SMS**
      #
      #   @return [String, nil]
      optional :text, String

      # @!attribute type
      #   The protocol for sending the message, either SMS or MMS.
      #
      #   @return [Symbol, Telnyx::Models::MessageSendLongCodeParams::Type, nil]
      optional :type, enum: -> { Telnyx::MessageSendLongCodeParams::Type }

      # @!attribute use_profile_webhooks
      #   If the profile this number is associated with has webhooks, use them for
      #   delivery notifications. If webhooks are also specified on the message itself,
      #   they will be attempted first, then those on the profile.
      #
      #   @return [Boolean, nil]
      optional :use_profile_webhooks, Telnyx::Internal::Type::Boolean

      # @!attribute webhook_failover_url
      #   The failover URL where webhooks related to this message will be sent if sending
      #   to the primary URL fails.
      #
      #   @return [String, nil]
      optional :webhook_failover_url, String

      # @!attribute webhook_url
      #   The URL where webhooks related to this message will be sent.
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!method initialize(from:, to:, auto_detect: nil, media_urls: nil, subject: nil, text: nil, type: nil, use_profile_webhooks: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MessageSendLongCodeParams} for more details.
      #
      #   @param from [String] Phone number, in +E.164 format, used to send the message.
      #
      #   @param to [String] Receiving address (+E.164 formatted phone number or short code).
      #
      #   @param auto_detect [Boolean] Automatically detect if an SMS message is unusually long and exceeds a recommend
      #
      #   @param media_urls [Array<String>] A list of media URLs. The total media size must be less than 1 MB.
      #
      #   @param subject [String] Subject of multimedia message
      #
      #   @param text [String] Message body (i.e., content) as a non-empty string.
      #
      #   @param type [Symbol, Telnyx::Models::MessageSendLongCodeParams::Type] The protocol for sending the message, either SMS or MMS.
      #
      #   @param use_profile_webhooks [Boolean] If the profile this number is associated with has webhooks, use them for deliver
      #
      #   @param webhook_failover_url [String] The failover URL where webhooks related to this message will be sent if sending
      #
      #   @param webhook_url [String] The URL where webhooks related to this message will be sent.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # The protocol for sending the message, either SMS or MMS.
      module Type
        extend Telnyx::Internal::Type::Enum

        SMS = :SMS
        MMS = :MMS

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
