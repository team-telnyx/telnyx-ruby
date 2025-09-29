# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Campaign#get_sharing_status
    class CampaignGetSharingStatusResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute shared_by_me
      #
      #   @return [Telnyx::Models::CampaignSharingStatus, nil]
      optional :shared_by_me, -> { Telnyx::CampaignSharingStatus }, api_name: :sharedByMe

      # @!attribute shared_with_me
      #
      #   @return [Telnyx::Models::CampaignSharingStatus, nil]
      optional :shared_with_me, -> { Telnyx::CampaignSharingStatus }, api_name: :sharedWithMe

      # @!method initialize(shared_by_me: nil, shared_with_me: nil)
      #   @param shared_by_me [Telnyx::Models::CampaignSharingStatus]
      #   @param shared_with_me [Telnyx::Models::CampaignSharingStatus]
    end
  end
end
