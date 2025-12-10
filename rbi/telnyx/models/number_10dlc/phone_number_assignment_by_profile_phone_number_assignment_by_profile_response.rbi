# typed: strong

module Telnyx
  module Models
    module Number10dlc
      class PhoneNumberAssignmentByProfilePhoneNumberAssignmentByProfileResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfilePhoneNumberAssignmentByProfileResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # The ID of the messaging profile that you want to link to the specified campaign.
        sig { returns(String) }
        attr_accessor :messaging_profile_id

        # The ID of the task associated with assigning a messaging profile to a campaign.
        sig { returns(String) }
        attr_accessor :task_id

        # The ID of the campaign you want to link to the specified messaging profile. If
        # you supply this ID in the request, do not also include a tcrCampaignId.
        sig { returns(T.nilable(String)) }
        attr_reader :campaign_id

        sig { params(campaign_id: String).void }
        attr_writer :campaign_id

        # The TCR ID of the shared campaign you want to link to the specified messaging
        # profile (for campaigns not created using Telnyx 10DLC services only). If you
        # supply this ID in the request, do not also include a campaignId.
        sig { returns(T.nilable(String)) }
        attr_reader :tcr_campaign_id

        sig { params(tcr_campaign_id: String).void }
        attr_writer :tcr_campaign_id

        sig do
          params(
            messaging_profile_id: String,
            task_id: String,
            campaign_id: String,
            tcr_campaign_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the messaging profile that you want to link to the specified campaign.
          messaging_profile_id:,
          # The ID of the task associated with assigning a messaging profile to a campaign.
          task_id:,
          # The ID of the campaign you want to link to the specified messaging profile. If
          # you supply this ID in the request, do not also include a tcrCampaignId.
          campaign_id: nil,
          # The TCR ID of the shared campaign you want to link to the specified messaging
          # profile (for campaigns not created using Telnyx 10DLC services only). If you
          # supply this ID in the request, do not also include a campaignId.
          tcr_campaign_id: nil
        )
        end

        sig do
          override.returns(
            {
              messaging_profile_id: String,
              task_id: String,
              campaign_id: String,
              tcr_campaign_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
