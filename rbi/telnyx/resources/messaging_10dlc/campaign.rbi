# typed: strong

module Telnyx
  module Resources
    class Messaging10dlc
      class Campaign
        sig { returns(Telnyx::Resources::Messaging10dlc::Campaign::Usecase) }
        attr_reader :usecase

        sig { returns(Telnyx::Resources::Messaging10dlc::Campaign::Osr) }
        attr_reader :osr

        # Retrieve campaign details by `campaignId`.
        sig do
          params(
            campaign_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Messaging10dlc::TelnyxCampaignCsp)
        end
        def retrieve(campaign_id, request_options: {})
        end

        # Update a campaign's properties by `campaignId`. **Please note:** only sample
        # messages are editable.
        sig do
          params(
            campaign_id: String,
            auto_renewal: T::Boolean,
            help_message: String,
            message_flow: String,
            reseller_id: String,
            sample1: String,
            sample2: String,
            sample3: String,
            sample4: String,
            sample5: String,
            webhook_failover_url: String,
            webhook_url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Messaging10dlc::TelnyxCampaignCsp)
        end
        def update(
          campaign_id,
          # Help message of the campaign.
          auto_renewal: nil,
          # Help message of the campaign.
          help_message: nil,
          # Message flow description.
          message_flow: nil,
          # Alphanumeric identifier of the reseller that you want to associate with this
          # campaign.
          reseller_id: nil,
          # Message sample. Some campaign tiers require 1 or more message samples.
          sample1: nil,
          # Message sample. Some campaign tiers require 2 or more message samples.
          sample2: nil,
          # Message sample. Some campaign tiers require 3 or more message samples.
          sample3: nil,
          # Message sample. Some campaign tiers require 4 or more message samples.
          sample4: nil,
          # Message sample. Some campaign tiers require 5 or more message samples.
          sample5: nil,
          # Webhook failover to which campaign status updates are sent.
          webhook_failover_url: nil,
          # Webhook to which campaign status updates are sent.
          webhook_url: nil,
          request_options: {}
        )
        end

        # Retrieve a list of campaigns associated with a supplied `brandId`.
        sig do
          params(
            brand_id: String,
            page: Integer,
            records_per_page: Integer,
            sort: Telnyx::Messaging10dlc::CampaignListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::PerPagePaginationV2[
              Telnyx::Models::Messaging10dlc::CampaignListResponse
            ]
          )
        end
        def list(
          brand_id:,
          # The 1-indexed page number to get. The default value is `1`.
          page: nil,
          # The amount of records per page, limited to between 1 and 500 inclusive. The
          # default value is `10`.
          records_per_page: nil,
          # Specifies the sort order for results. If not given, results are sorted by
          # createdAt in descending order.
          sort: nil,
          request_options: {}
        )
        end

        # Manually accept a campaign shared with Telnyx
        sig do
          params(
            campaign_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T::Hash[Symbol, T.anything])
        end
        def accept_sharing(
          # TCR's ID for the campaign to import
          campaign_id,
          request_options: {}
        )
        end

        # Terminate a campaign. Note that once deactivated, a campaign cannot be restored.
        sig do
          params(
            campaign_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Messaging10dlc::CampaignDeactivateResponse)
        end
        def deactivate(campaign_id, request_options: {})
        end

        # Get the campaign metadata for each MNO it was submitted to.
        sig do
          params(
            campaign_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::Messaging10dlc::CampaignGetMnoMetadataResponse
          )
        end
        def get_mno_metadata(
          # ID of the campaign in question
          campaign_id,
          request_options: {}
        )
        end

        # Retrieve campaign's operation status at MNO level.
        sig do
          params(
            campaign_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T::Hash[Symbol, T.anything])
        end
        def get_operation_status(campaign_id, request_options: {})
        end

        # Get Sharing Status
        sig do
          params(
            campaign_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::Messaging10dlc::CampaignGetSharingStatusResponse
          )
        end
        def get_sharing_status(
          # ID of the campaign in question
          campaign_id,
          request_options: {}
        )
        end

        # Submits an appeal for rejected native campaigns in TELNYX_FAILED or MNO_REJECTED
        # status. The appeal is recorded for manual compliance team review and the
        # campaign status is reset to TCR_ACCEPTED. Note: Appeal forwarding is handled
        # manually to allow proper review before incurring upstream charges.
        sig do
          params(
            campaign_id: String,
            appeal_reason: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::Messaging10dlc::CampaignSubmitAppealResponse
          )
        end
        def submit_appeal(
          # The Telnyx campaign identifier
          campaign_id,
          # Detailed explanation of why the campaign should be reconsidered and what changes
          # have been made to address the rejection reason.
          appeal_reason:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
