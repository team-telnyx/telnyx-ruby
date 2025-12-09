# typed: strong

module Telnyx
  module Resources
    class Number10dlc
      class PhoneNumberAssignmentByProfile
        # This endpoint allows you to link all phone numbers associated with a Messaging
        # Profile to a campaign. **Please note:** if you want to assign phone numbers to a
        # campaign that you did not create with Telnyx 10DLC services, this endpoint
        # allows that provided that you've shared the campaign with Telnyx. In this case,
        # only provide the parameter, `tcrCampaignId`, and not `campaignId`. In all other
        # cases (where the campaign you're assigning was created with Telnyx 10DLC
        # services), only provide `campaignId`, not `tcrCampaignId`.
        sig do
          params(
            messaging_profile_id: String,
            campaign_id: String,
            tcr_campaign_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileAssignResponse
          )
        end
        def assign(
          # The ID of the messaging profile that you want to link to the specified campaign.
          messaging_profile_id:,
          # The ID of the campaign you want to link to the specified messaging profile. If
          # you supply this ID in the request, do not also include a tcrCampaignId.
          campaign_id: nil,
          # The TCR ID of the shared campaign you want to link to the specified messaging
          # profile (for campaigns not created using Telnyx 10DLC services only). If you
          # supply this ID in the request, do not also include a campaignId.
          tcr_campaign_id: nil,
          request_options: {}
        )
        end

        # Check the status of the individual phone number/campaign assignments associated
        # with the supplied `taskId`.
        sig do
          params(
            task_id: String,
            page: Integer,
            records_per_page: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileGetPhoneNumberStatusResponse
          )
        end
        def get_phone_number_status(
          task_id,
          page: nil,
          records_per_page: nil,
          request_options: {}
        )
        end

        # Check the status of the task associated with assigning all phone numbers on a
        # messaging profile to a campaign by `taskId`.
        sig do
          params(
            task_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileGetTaskStatusResponse
          )
        end
        def get_task_status(task_id, request_options: {})
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
