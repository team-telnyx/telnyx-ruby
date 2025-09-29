# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Messages#send_group_mms
    class MessageSendGroupMmsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute from
      #   Phone number, in +E.164 format, used to send the message.
      #
      #   @return [String]
      required :from, String

      # @!attribute to
      #   A list of destinations. No more than 8 destinations are allowed.
      #
      #   @return [Array<String>]
      required :to, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute media_urls
      #   A list of media URLs. The total media size must be less than 1 MB.
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
      #   @return [String, nil]
      optional :text, String

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

      # @!method initialize(from:, to:, media_urls: nil, subject: nil, text: nil, use_profile_webhooks: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MessageSendGroupMmsParams} for more details.
      #
      #   @param from [String] Phone number, in +E.164 format, used to send the message.
      #
      #   @param to [Array<String>] A list of destinations. No more than 8 destinations are allowed.
      #
      #   @param media_urls [Array<String>] A list of media URLs. The total media size must be less than 1 MB.
      #
      #   @param subject [String] Subject of multimedia message
      #
      #   @param text [String] Message body (i.e., content) as a non-empty string.
      #
      #   @param use_profile_webhooks [Boolean] If the profile this number is associated with has webhooks, use them for deliver
      #
      #   @param webhook_failover_url [String] The failover URL where webhooks related to this message will be sent if sending
      #
      #   @param webhook_url [String] The URL where webhooks related to this message will be sent.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
