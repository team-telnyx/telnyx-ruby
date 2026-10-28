# frozen_string_literal: true

module Telnyx
  module Models
    class Mm7Metadata < Telnyx::Internal::Type::BaseModel
      # @!attribute mm7_failover_webhook_url
      #   Failover webhook URL to receive inbound MM7 traffic
      #
      #   @return [String, nil]
      optional :mm7_failover_webhook_url, String

      # @!attribute mm7_webhook_url
      #   Webhook URL to receive inbound MM7 traffic
      #
      #   @return [String, nil]
      optional :mm7_webhook_url, String

      # @!method initialize(mm7_failover_webhook_url: nil, mm7_webhook_url: nil)
      #   MM7 settings for inbound messages
      #
      #   @param mm7_failover_webhook_url [String] Failover webhook URL to receive inbound MM7 traffic
      #
      #   @param mm7_webhook_url [String] Webhook URL to receive inbound MM7 traffic
    end
  end
end
