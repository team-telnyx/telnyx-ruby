# frozen_string_literal: true

module Telnyx
  module Models
    class CampaignStatusUpdateWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute brand_id
      #   Brand ID associated with the campaign.
      #
      #   @return [String, nil]
      optional :brand_id, String, api_name: :brandId

      # @!attribute campaign_id
      #   The ID of the campaign.
      #
      #   @return [String, nil]
      optional :campaign_id, String, api_name: :campaignId

      # @!attribute create_date
      #   Unix timestamp when campaign was created.
      #
      #   @return [String, nil]
      optional :create_date, String, api_name: :createDate

      # @!attribute csp_id
      #   Alphanumeric identifier of the CSP associated with this campaign.
      #
      #   @return [String, nil]
      optional :csp_id, String, api_name: :cspId

      # @!attribute is_t_mobile_registered
      #   Indicates whether the campaign is registered with T-Mobile.
      #
      #   @return [Boolean, nil]
      optional :is_t_mobile_registered, Telnyx::Internal::Type::Boolean, api_name: :isTMobileRegistered

      # @!method initialize(brand_id: nil, campaign_id: nil, create_date: nil, csp_id: nil, is_t_mobile_registered: nil)
      #   @param brand_id [String] Brand ID associated with the campaign.
      #
      #   @param campaign_id [String] The ID of the campaign.
      #
      #   @param create_date [String] Unix timestamp when campaign was created.
      #
      #   @param csp_id [String] Alphanumeric identifier of the CSP associated with this campaign.
      #
      #   @param is_t_mobile_registered [Boolean] Indicates whether the campaign is registered with T-Mobile.
    end
  end
end
