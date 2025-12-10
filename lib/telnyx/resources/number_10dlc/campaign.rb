# frozen_string_literal: true

module Telnyx
  module Resources
    class Number10dlc
      class Campaign
        # @return [Telnyx::Resources::Number10dlc::Campaign::Usecase]
        attr_reader :usecase

        # @return [Telnyx::Resources::Number10dlc::Campaign::Osr]
        attr_reader :osr

        # Retrieve campaign details by `campaignId`.
        #
        # @overload retrieve(campaign_id, request_options: {})
        #
        # @param campaign_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::TelnyxCampaignCsp]
        #
        # @see Telnyx::Models::Number10dlc::CampaignRetrieveParams
        def retrieve(campaign_id, params = {})
          @client.request(
            method: :get,
            path: ["10dlc/campaign/%1$s", campaign_id],
            model: Telnyx::TelnyxCampaignCsp,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Number10dlc::CampaignUpdateParams} for more details.
        #
        # Update a campaign's properties by `campaignId`. **Please note:** only sample
        # messages are editable.
        #
        # @overload update(campaign_id, auto_renewal: nil, help_message: nil, message_flow: nil, reseller_id: nil, sample1: nil, sample2: nil, sample3: nil, sample4: nil, sample5: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
        #
        # @param campaign_id [String]
        #
        # @param auto_renewal [Boolean] Help message of the campaign.
        #
        # @param help_message [String] Help message of the campaign.
        #
        # @param message_flow [String] Message flow description.
        #
        # @param reseller_id [String] Alphanumeric identifier of the reseller that you want to associate with this cam
        #
        # @param sample1 [String] Message sample. Some campaign tiers require 1 or more message samples.
        #
        # @param sample2 [String] Message sample. Some campaign tiers require 2 or more message samples.
        #
        # @param sample3 [String] Message sample. Some campaign tiers require 3 or more message samples.
        #
        # @param sample4 [String] Message sample. Some campaign tiers require 4 or more message samples.
        #
        # @param sample5 [String] Message sample. Some campaign tiers require 5 or more message samples.
        #
        # @param webhook_failover_url [String] Webhook failover to which campaign status updates are sent.
        #
        # @param webhook_url [String] Webhook to which campaign status updates are sent.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::TelnyxCampaignCsp]
        #
        # @see Telnyx::Models::Number10dlc::CampaignUpdateParams
        def update(campaign_id, params = {})
          parsed, options = Telnyx::Number10dlc::CampaignUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["10dlc/campaign/%1$s", campaign_id],
            body: parsed,
            model: Telnyx::TelnyxCampaignCsp,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Number10dlc::CampaignListParams} for more details.
        #
        # Retrieve a list of campaigns associated with a supplied `brandId`.
        #
        # @overload list(brand_id:, page: nil, records_per_page: nil, sort: nil, request_options: {})
        #
        # @param brand_id [String]
        #
        # @param page [Integer] The 1-indexed page number to get. The default value is `1`.
        #
        # @param records_per_page [Integer] The amount of records per page, limited to between 1 and 500 inclusive. The defa
        #
        # @param sort [Symbol, Telnyx::Models::Number10dlc::CampaignListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Number10dlc::CampaignListResponse]
        #
        # @see Telnyx::Models::Number10dlc::CampaignListParams
        def list(params)
          parsed, options = Telnyx::Number10dlc::CampaignListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "10dlc/campaign",
            query: parsed.transform_keys(brand_id: "brandId", records_per_page: "recordsPerPage"),
            model: Telnyx::Models::Number10dlc::CampaignListResponse,
            options: options
          )
        end

        # Terminate a campaign. Note that once deactivated, a campaign cannot be restored.
        #
        # @overload delete(campaign_id, request_options: {})
        #
        # @param campaign_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Number10dlc::CampaignDeleteResponse]
        #
        # @see Telnyx::Models::Number10dlc::CampaignDeleteParams
        def delete(campaign_id, params = {})
          @client.request(
            method: :delete,
            path: ["10dlc/campaign/%1$s", campaign_id],
            model: Telnyx::Models::Number10dlc::CampaignDeleteResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Number10dlc::CampaignAppealParams} for more details.
        #
        # Submits an appeal for rejected native campaigns in TELNYX_FAILED or MNO_REJECTED
        # status. The appeal is recorded for manual compliance team review and the
        # campaign status is reset to TCR_ACCEPTED. Note: Appeal forwarding is handled
        # manually to allow proper review before incurring upstream charges.
        #
        # @overload appeal(campaign_id, appeal_reason:, request_options: {})
        #
        # @param campaign_id [String] The Telnyx campaign identifier
        #
        # @param appeal_reason [String] Detailed explanation of why the campaign should be reconsidered and what changes
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Number10dlc::CampaignAppealResponse]
        #
        # @see Telnyx::Models::Number10dlc::CampaignAppealParams
        def appeal(campaign_id, params)
          parsed, options = Telnyx::Number10dlc::CampaignAppealParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["10dlc/campaign/%1$s/appeal", campaign_id],
            body: parsed,
            model: Telnyx::Models::Number10dlc::CampaignAppealResponse,
            options: options
          )
        end

        # Get the campaign metadata for each MNO it was submitted to.
        #
        # @overload retrieve_mno_metadata(campaign_id, request_options: {})
        #
        # @param campaign_id [String] ID of the campaign in question
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Number10dlc::CampaignRetrieveMnoMetadataResponse]
        #
        # @see Telnyx::Models::Number10dlc::CampaignRetrieveMnoMetadataParams
        def retrieve_mno_metadata(campaign_id, params = {})
          @client.request(
            method: :get,
            path: ["10dlc/campaign/%1$s/mnoMetadata", campaign_id],
            model: Telnyx::Models::Number10dlc::CampaignRetrieveMnoMetadataResponse,
            options: params[:request_options]
          )
        end

        # Retrieve campaign's operation status at MNO level.
        #
        # @overload retrieve_operation_status(campaign_id, request_options: {})
        #
        # @param campaign_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Hash{Symbol=>Object}]
        #
        # @see Telnyx::Models::Number10dlc::CampaignRetrieveOperationStatusParams
        def retrieve_operation_status(campaign_id, params = {})
          @client.request(
            method: :get,
            path: ["10dlc/campaign/%1$s/operationStatus", campaign_id],
            model: Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
            options: params[:request_options]
          )
        end

        # Get Sharing Status
        #
        # @overload retrieve_sharing(campaign_id, request_options: {})
        #
        # @param campaign_id [String] ID of the campaign in question
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Number10dlc::CampaignRetrieveSharingResponse]
        #
        # @see Telnyx::Models::Number10dlc::CampaignRetrieveSharingParams
        def retrieve_sharing(campaign_id, params = {})
          @client.request(
            method: :get,
            path: ["10dlc/campaign/%1$s/sharing", campaign_id],
            model: Telnyx::Models::Number10dlc::CampaignRetrieveSharingResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @usecase = Telnyx::Resources::Number10dlc::Campaign::Usecase.new(client: client)
          @osr = Telnyx::Resources::Number10dlc::Campaign::Osr.new(client: client)
        end
      end
    end
  end
end
