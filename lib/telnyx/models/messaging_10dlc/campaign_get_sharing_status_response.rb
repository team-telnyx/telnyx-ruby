# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # @see Telnyx::Resources::Messaging10dlc::Campaign#get_sharing_status
      class CampaignGetSharingStatusResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute shared_by_me
        #
        #   @return [Telnyx::Models::Messaging10dlc::CampaignSharingStatus, nil]
        optional :shared_by_me, -> { Telnyx::Messaging10dlc::CampaignSharingStatus }, api_name: :sharedByMe

        # @!attribute shared_with_me
        #
        #   @return [Telnyx::Models::Messaging10dlc::CampaignSharingStatus, nil]
        optional :shared_with_me,
                 -> {
                   Telnyx::Messaging10dlc::CampaignSharingStatus
                 },
                 api_name: :sharedWithMe

        # @!method initialize(shared_by_me: nil, shared_with_me: nil)
        #   @param shared_by_me [Telnyx::Models::Messaging10dlc::CampaignSharingStatus]
        #   @param shared_with_me [Telnyx::Models::Messaging10dlc::CampaignSharingStatus]
      end
    end
  end
end
