# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # @see Telnyx::Resources::Messaging10dlc::Campaign#accept_sharing
      class CampaignAcceptSharingParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute campaign_id
        #   TCR's ID for the campaign to import
        #
        #   @return [String]
        required :campaign_id, String

        # @!method initialize(campaign_id:, request_options: {})
        #   @param campaign_id [String] TCR's ID for the campaign to import
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
