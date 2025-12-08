# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PhoneNumberAssignmentByProfile#assign
    class PhoneNumberAssignmentByProfileAssignResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute messaging_profile_id
      #   The ID of the messaging profile that you want to link to the specified campaign.
      #
      #   @return [String]
      required :messaging_profile_id, String, api_name: :messagingProfileId

      # @!attribute task_id
      #   The ID of the task associated with assigning a messaging profile to a campaign.
      #
      #   @return [String]
      required :task_id, String, api_name: :taskId

      # @!attribute campaign_id
      #   The ID of the campaign you want to link to the specified messaging profile. If
      #   you supply this ID in the request, do not also include a tcrCampaignId.
      #
      #   @return [String, nil]
      optional :campaign_id, String, api_name: :campaignId

      # @!attribute tcr_campaign_id
      #   The TCR ID of the shared campaign you want to link to the specified messaging
      #   profile (for campaigns not created using Telnyx 10DLC services only). If you
      #   supply this ID in the request, do not also include a campaignId.
      #
      #   @return [String, nil]
      optional :tcr_campaign_id, String, api_name: :tcrCampaignId

      # @!method initialize(messaging_profile_id:, task_id:, campaign_id: nil, tcr_campaign_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PhoneNumberAssignmentByProfileAssignResponse} for more details.
      #
      #   @param messaging_profile_id [String] The ID of the messaging profile that you want to link to the specified campaign.
      #
      #   @param task_id [String] The ID of the task associated with assigning a messaging profile to a campaign.
      #
      #   @param campaign_id [String] The ID of the campaign you want to link to the specified messaging profile. If y
      #
      #   @param tcr_campaign_id [String] The TCR ID of the shared campaign you want to link to the specified messaging pr
    end
  end
end
