# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Messages#send_
    class MessageSendParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

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

      # @!attribute from
      #   Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
      #   code).
      #
      #   **Required if sending with a phone number, short code, or alphanumeric sender
      #   ID.**
      #
      #   @return [String, nil]
      optional :from, String

      # @!attribute media_urls
      #   A list of media URLs. The total media size must be less than 1 MB.
      #
      #   **Required for MMS**
      #
      #   @return [Array<String>, nil]
      optional :media_urls, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute messaging_profile_id
      #   Unique identifier for a messaging profile.
      #
      #   **Required if sending via number pool or with an alphanumeric sender ID.**
      #
      #   @return [String, nil]
      optional :messaging_profile_id, String

      # @!attribute send_at
      #   ISO 8601 formatted date indicating when to send the message - accurate up till a
      #   minute.
      #
      #   @return [Time, nil]
      optional :send_at, Time, nil?: true

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
      #   @return [Symbol, Telnyx::Models::MessageSendParams::Type, nil]
      optional :type, enum: -> { Telnyx::MessageSendParams::Type }

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

      # @!method initialize(to:, auto_detect: nil, from: nil, media_urls: nil, messaging_profile_id: nil, send_at: nil, subject: nil, text: nil, type: nil, use_profile_webhooks: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MessageSendParams} for more details.
      #
      #   @param to [String] Receiving address (+E.164 formatted phone number or short code).
      #
      #   @param auto_detect [Boolean] Automatically detect if an SMS message is unusually long and exceeds a recommend
      #
      #   @param from [String] Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
      #
      #   @param media_urls [Array<String>] A list of media URLs. The total media size must be less than 1 MB.
      #
      #   @param messaging_profile_id [String] Unique identifier for a messaging profile.
      #
      #   @param send_at [Time, nil] ISO 8601 formatted date indicating when to send the message - accurate up till a
      #
      #   @param subject [String] Subject of multimedia message
      #
      #   @param text [String] Message body (i.e., content) as a non-empty string.
      #
      #   @param type [Symbol, Telnyx::Models::MessageSendParams::Type] The protocol for sending the message, either SMS or MMS.
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
