# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # @see Telnyx::Resources::Messaging10dlc::Campaign#update
      class CampaignUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute auto_renewal
        #   Help message of the campaign.
        #
        #   @return [Boolean, nil]
        optional :auto_renewal, Telnyx::Internal::Type::Boolean, api_name: :autoRenewal

        # @!attribute help_message
        #   Help message of the campaign.
        #
        #   @return [String, nil]
        optional :help_message, String, api_name: :helpMessage

        # @!attribute message_flow
        #   Message flow description.
        #
        #   @return [String, nil]
        optional :message_flow, String, api_name: :messageFlow

        # @!attribute reseller_id
        #   Alphanumeric identifier of the reseller that you want to associate with this
        #   campaign.
        #
        #   @return [String, nil]
        optional :reseller_id, String, api_name: :resellerId

        # @!attribute sample1
        #   Message sample. Some campaign tiers require 1 or more message samples.
        #
        #   @return [String, nil]
        optional :sample1, String

        # @!attribute sample2
        #   Message sample. Some campaign tiers require 2 or more message samples.
        #
        #   @return [String, nil]
        optional :sample2, String

        # @!attribute sample3
        #   Message sample. Some campaign tiers require 3 or more message samples.
        #
        #   @return [String, nil]
        optional :sample3, String

        # @!attribute sample4
        #   Message sample. Some campaign tiers require 4 or more message samples.
        #
        #   @return [String, nil]
        optional :sample4, String

        # @!attribute sample5
        #   Message sample. Some campaign tiers require 5 or more message samples.
        #
        #   @return [String, nil]
        optional :sample5, String

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

        # @!method initialize(auto_renewal: nil, help_message: nil, message_flow: nil, reseller_id: nil, sample1: nil, sample2: nil, sample3: nil, sample4: nil, sample5: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Messaging10dlc::CampaignUpdateParams} for more details.
        #
        #   @param auto_renewal [Boolean] Help message of the campaign.
        #
        #   @param help_message [String] Help message of the campaign.
        #
        #   @param message_flow [String] Message flow description.
        #
        #   @param reseller_id [String] Alphanumeric identifier of the reseller that you want to associate with this cam
        #
        #   @param sample1 [String] Message sample. Some campaign tiers require 1 or more message samples.
        #
        #   @param sample2 [String] Message sample. Some campaign tiers require 2 or more message samples.
        #
        #   @param sample3 [String] Message sample. Some campaign tiers require 3 or more message samples.
        #
        #   @param sample4 [String] Message sample. Some campaign tiers require 4 or more message samples.
        #
        #   @param sample5 [String] Message sample. Some campaign tiers require 5 or more message samples.
        #
        #   @param webhook_failover_url [String] Webhook failover to which campaign status updates are sent.
        #
        #   @param webhook_url [String] Webhook to which campaign status updates are sent.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
