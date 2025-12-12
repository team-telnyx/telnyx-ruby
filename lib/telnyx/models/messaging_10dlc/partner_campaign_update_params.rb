# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # @see Telnyx::Resources::Messaging10dlc::PartnerCampaigns#update
      class PartnerCampaignUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute webhook_failover_url
        #   Webhook failover to which campaign status updates are sent.
        #
        #   @return [String, nil]
        optional :webhook_failover_url, String, api_name: :webhookFailoverURL

        # @!attribute webhook_url
        #   Webhook to which campaign status updates are sent.
        #
        #   @return [String, nil]
        optional :webhook_url, String, api_name: :webhookURL

        # @!method initialize(webhook_failover_url: nil, webhook_url: nil, request_options: {})
        #   @param webhook_failover_url [String] Webhook failover to which campaign status updates are sent.
        #
        #   @param webhook_url [String] Webhook to which campaign status updates are sent.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
