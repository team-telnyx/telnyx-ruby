# frozen_string_literal: true

module Telnyx
  module Resources
    class Campaign
      # @return [Telnyx::Resources::Campaign::Usecase]
      attr_reader :usecase

      # @return [Telnyx::Resources::Campaign::Osr]
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
      # @see Telnyx::Models::CampaignRetrieveParams
      def retrieve(campaign_id, params = {})
        @client.request(
          method: :get,
          path: ["campaign/%1$s", campaign_id],
          model: Telnyx::TelnyxCampaignCsp,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CampaignUpdateParams} for more details.
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
      # @see Telnyx::Models::CampaignUpdateParams
      def update(campaign_id, params = {})
        parsed, options = Telnyx::CampaignUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["campaign/%1$s", campaign_id],
          body: parsed,
          model: Telnyx::TelnyxCampaignCsp,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CampaignListParams} for more details.
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
      # @param sort [Symbol, Telnyx::Models::CampaignListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::PerPagePaginationV2<Telnyx::Models::CampaignListResponse>]
      #
      # @see Telnyx::Models::CampaignListParams
      def list(params)
        parsed, options = Telnyx::CampaignListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "campaign",
          query: parsed.transform_keys(brand_id: "brandId", records_per_page: "recordsPerPage"),
          page: Telnyx::Internal::PerPagePaginationV2,
          model: Telnyx::Models::CampaignListResponse,
          options: options
        )
      end

      # Manually accept a campaign shared with Telnyx
      #
      # @overload accept_sharing(campaign_id, request_options: {})
      #
      # @param campaign_id [String] TCR's ID for the campaign to import
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Hash{Symbol=>Object}]
      #
      # @see Telnyx::Models::CampaignAcceptSharingParams
      def accept_sharing(campaign_id, params = {})
        @client.request(
          method: :post,
          path: ["campaign/acceptSharing/%1$s", campaign_id],
          model: Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
          options: params[:request_options]
        )
      end

      # Terminate a campaign. Note that once deactivated, a campaign cannot be restored.
      #
      # @overload deactivate(campaign_id, request_options: {})
      #
      # @param campaign_id [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CampaignDeactivateResponse]
      #
      # @see Telnyx::Models::CampaignDeactivateParams
      def deactivate(campaign_id, params = {})
        @client.request(
          method: :delete,
          path: ["campaign/%1$s", campaign_id],
          model: Telnyx::Models::CampaignDeactivateResponse,
          options: params[:request_options]
        )
      end

      # Get the campaign metadata for each MNO it was submitted to.
      #
      # @overload get_mno_metadata(campaign_id, request_options: {})
      #
      # @param campaign_id [String] ID of the campaign in question
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CampaignGetMnoMetadataResponse]
      #
      # @see Telnyx::Models::CampaignGetMnoMetadataParams
      def get_mno_metadata(campaign_id, params = {})
        @client.request(
          method: :get,
          path: ["campaign/%1$s/mnoMetadata", campaign_id],
          model: Telnyx::Models::CampaignGetMnoMetadataResponse,
          options: params[:request_options]
        )
      end

      # Retrieve campaign's operation status at MNO level.
      #
      # @overload get_operation_status(campaign_id, request_options: {})
      #
      # @param campaign_id [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Hash{Symbol=>Object}]
      #
      # @see Telnyx::Models::CampaignGetOperationStatusParams
      def get_operation_status(campaign_id, params = {})
        @client.request(
          method: :get,
          path: ["campaign/%1$s/operationStatus", campaign_id],
          model: Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
          options: params[:request_options]
        )
      end

      # Get Sharing Status
      #
      # @overload get_sharing_status(campaign_id, request_options: {})
      #
      # @param campaign_id [String] ID of the campaign in question
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CampaignGetSharingStatusResponse]
      #
      # @see Telnyx::Models::CampaignGetSharingStatusParams
      def get_sharing_status(campaign_id, params = {})
        @client.request(
          method: :get,
          path: ["campaign/%1$s/sharing", campaign_id],
          model: Telnyx::Models::CampaignGetSharingStatusResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CampaignSubmitAppealParams} for more details.
      #
      # Submits an appeal for rejected native campaigns in TELNYX_FAILED or MNO_REJECTED
      # status. The appeal is recorded for manual compliance team review and the
      # campaign status is reset to TCR_ACCEPTED. Note: Appeal forwarding is handled
      # manually to allow proper review before incurring upstream charges.
      #
      # @overload submit_appeal(campaign_id, appeal_reason:, request_options: {})
      #
      # @param campaign_id [String] The Telnyx campaign identifier
      #
      # @param appeal_reason [String] Detailed explanation of why the campaign should be reconsidered and what changes
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CampaignSubmitAppealResponse]
      #
      # @see Telnyx::Models::CampaignSubmitAppealParams
      def submit_appeal(campaign_id, params)
        parsed, options = Telnyx::CampaignSubmitAppealParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["campaign/%1$s/appeal", campaign_id],
          body: parsed,
          model: Telnyx::Models::CampaignSubmitAppealResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @usecase = Telnyx::Resources::Campaign::Usecase.new(client: client)
        @osr = Telnyx::Resources::Campaign::Osr.new(client: client)
      end
    end
  end
end
