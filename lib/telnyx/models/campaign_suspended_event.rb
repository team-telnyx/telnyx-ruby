# frozen_string_literal: true

module Telnyx
  module Models
    class CampaignSuspendedEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute campaign_id
      #   The ID of the campaign.
      #
      #   @return [String, nil]
      optional :campaign_id, String, api_name: :campaignId

      # @!attribute description
      #   Description of the event.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute status
      #   The status of the campaign.
      #
      #   @return [Symbol, Telnyx::Models::CampaignSuspendedEvent::Status, nil]
      optional :status, enum: -> { Telnyx::CampaignSuspendedEvent::Status }

      # @!attribute type
      #
      #   @return [Symbol, Telnyx::Models::CampaignSuspendedEvent::Type, nil]
      optional :type, enum: -> { Telnyx::CampaignSuspendedEvent::Type }

      # @!method initialize(campaign_id: nil, description: nil, status: nil, type: nil)
      #   @param campaign_id [String] The ID of the campaign.
      #
      #   @param description [String] Description of the event.
      #
      #   @param status [Symbol, Telnyx::Models::CampaignSuspendedEvent::Status] The status of the campaign.
      #
      #   @param type [Symbol, Telnyx::Models::CampaignSuspendedEvent::Type]

      # The status of the campaign.
      #
      # @see Telnyx::Models::CampaignSuspendedEvent#status
      module Status
        extend Telnyx::Internal::Type::Enum

        DORMANT = :DORMANT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::CampaignSuspendedEvent#type
      module Type
        extend Telnyx::Internal::Type::Enum

        TELNYX_EVENT = :TELNYX_EVENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
