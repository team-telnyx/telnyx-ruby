# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # @see Telnyx::Resources::Messaging10dlc::Campaign#get_sharing_status
      class CampaignGetSharingStatusParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute campaign_id
        #   ID of the campaign in question
        #
        #   @return [String]
        required :campaign_id, String

        # @!method initialize(campaign_id:, request_options: {})
        #   @param campaign_id [String] ID of the campaign in question
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
