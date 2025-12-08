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

      # @!attribute description
      #   Description of the event.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute is_t_mobile_registered
      #   Indicates whether the campaign is registered with T-Mobile.
      #
      #   @return [Boolean, nil]
      optional :is_t_mobile_registered, Telnyx::Internal::Type::Boolean, api_name: :isTMobileRegistered

      # @!attribute status
      #   The status of the campaign.
      #
      #   @return [Symbol, Telnyx::Models::CampaignStatusUpdateWebhookEvent::Status, nil]
      optional :status, enum: -> { Telnyx::CampaignStatusUpdateWebhookEvent::Status }

      # @!attribute type
      #
      #   @return [Symbol, Telnyx::Models::CampaignStatusUpdateWebhookEvent::Type, nil]
      optional :type, enum: -> { Telnyx::CampaignStatusUpdateWebhookEvent::Type }

      # @!method initialize(brand_id: nil, campaign_id: nil, create_date: nil, csp_id: nil, description: nil, is_t_mobile_registered: nil, status: nil, type: nil)
      #   @param brand_id [String] Brand ID associated with the campaign.
      #
      #   @param campaign_id [String] The ID of the campaign.
      #
      #   @param create_date [String] Unix timestamp when campaign was created.
      #
      #   @param csp_id [String] Alphanumeric identifier of the CSP associated with this campaign.
      #
      #   @param description [String] Description of the event.
      #
      #   @param is_t_mobile_registered [Boolean] Indicates whether the campaign is registered with T-Mobile.
      #
      #   @param status [Symbol, Telnyx::Models::CampaignStatusUpdateWebhookEvent::Status] The status of the campaign.
      #
      #   @param type [Symbol, Telnyx::Models::CampaignStatusUpdateWebhookEvent::Type]

      # The status of the campaign.
      #
      # @see Telnyx::Models::CampaignStatusUpdateWebhookEvent#status
      module Status
        extend Telnyx::Internal::Type::Enum

        ACCEPTED = :ACCEPTED
        REJECTED = :REJECTED
        DORMANT = :DORMANT
        SUCCESS = :success
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::CampaignStatusUpdateWebhookEvent#type
      module Type
        extend Telnyx::Internal::Type::Enum

        TELNYX_EVENT = :TELNYX_EVENT
        REGISTRATION = :REGISTRATION
        MNO_REVIEW = :MNO_REVIEW
        TELNYX_REVIEW = :TELNYX_REVIEW
        NUMBER_POOL_PROVISIONED = :NUMBER_POOL_PROVISIONED
        NUMBER_POOL_DEPROVISIONED = :NUMBER_POOL_DEPROVISIONED
        TCR_EVENT = :TCR_EVENT
        VERIFIED = :VERIFIED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
