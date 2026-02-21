# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Messages#send_with_alphanumeric_sender
    class MessageSendWithAlphanumericSenderParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute from
      #   A valid alphanumeric sender ID on the user's account.
      #
      #   @return [String]
      required :from, String

      # @!attribute messaging_profile_id
      #   The messaging profile ID to use.
      #
      #   @return [String]
      required :messaging_profile_id, String

      # @!attribute text
      #   The message body.
      #
      #   @return [String]
      required :text, String

      # @!attribute to
      #   Receiving address (+E.164 formatted phone number).
      #
      #   @return [String]
      required :to, String

      # @!attribute use_profile_webhooks
      #   If true, use the messaging profile's webhook settings.
      #
      #   @return [Boolean, nil]
      optional :use_profile_webhooks, Telnyx::Internal::Type::Boolean

      # @!attribute webhook_failover_url
      #   Failover callback URL for delivery status updates.
      #
      #   @return [String, nil]
      optional :webhook_failover_url, String, nil?: true

      # @!attribute webhook_url
      #   Callback URL for delivery status updates.
      #
      #   @return [String, nil]
      optional :webhook_url, String, nil?: true

      # @!method initialize(from:, messaging_profile_id:, text:, to:, use_profile_webhooks: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
      #   @param from [String] A valid alphanumeric sender ID on the user's account.
      #
      #   @param messaging_profile_id [String] The messaging profile ID to use.
      #
      #   @param text [String] The message body.
      #
      #   @param to [String] Receiving address (+E.164 formatted phone number).
      #
      #   @param use_profile_webhooks [Boolean] If true, use the messaging profile's webhook settings.
      #
      #   @param webhook_failover_url [String, nil] Failover callback URL for delivery status updates.
      #
      #   @param webhook_url [String, nil] Callback URL for delivery status updates.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
