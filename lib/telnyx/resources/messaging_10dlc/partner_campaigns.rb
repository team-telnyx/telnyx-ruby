# frozen_string_literal: true

module Telnyx
  module Resources
    class Messaging10dlc
      class PartnerCampaigns
        # Retrieve campaign details by `campaignId`.
        #
        # @overload retrieve(campaign_id, request_options: {})
        #
        # @param campaign_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Messaging10dlc::TelnyxDownstreamCampaign]
        #
        # @see Telnyx::Models::Messaging10dlc::PartnerCampaignRetrieveParams
        def retrieve(campaign_id, params = {})
          @client.request(
            method: :get,
            path: ["10dlc/partner_campaigns/%1$s", campaign_id],
            model: Telnyx::Messaging10dlc::TelnyxDownstreamCampaign,
            options: params[:request_options]
          )
        end

        # Update campaign details by `campaignId`. **Please note:** Only webhook urls are
        # editable.
        #
        # @overload update(campaign_id, webhook_failover_url: nil, webhook_url: nil, request_options: {})
        #
        # @param campaign_id [String]
        #
        # @param webhook_failover_url [String] Webhook failover to which campaign status updates are sent.
        #
        # @param webhook_url [String] Webhook to which campaign status updates are sent.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Messaging10dlc::TelnyxDownstreamCampaign]
        #
        # @see Telnyx::Models::Messaging10dlc::PartnerCampaignUpdateParams
        def update(campaign_id, params = {})
          parsed, options = Telnyx::Messaging10dlc::PartnerCampaignUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["10dlc/partner_campaigns/%1$s", campaign_id],
            body: parsed,
            model: Telnyx::Messaging10dlc::TelnyxDownstreamCampaign,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Messaging10dlc::PartnerCampaignListParams} for more details.
        #
        # Retrieve all partner campaigns you have shared to Telnyx in a paginated fashion.
        #
        # This endpoint is currently limited to only returning shared campaigns that
        # Telnyx has accepted. In other words, shared but pending campaigns are currently
        # omitted from the response from this endpoint.
        #
        # @overload list(page: nil, records_per_page: nil, sort: nil, request_options: {})
        #
        # @param page [Integer] The 1-indexed page number to get. The default value is `1`.
        #
        # @param records_per_page [Integer] The amount of records per page, limited to between 1 and 500 inclusive. The defa
        #
        # @param sort [Symbol, Telnyx::Models::Messaging10dlc::PartnerCampaignListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::PerPagePaginationV2<Telnyx::Models::Messaging10dlc::TelnyxDownstreamCampaign>]
        #
        # @see Telnyx::Models::Messaging10dlc::PartnerCampaignListParams
        def list(params = {})
          parsed, options = Telnyx::Messaging10dlc::PartnerCampaignListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "10dlc/partner_campaigns",
            query: parsed.transform_keys(records_per_page: "recordsPerPage"),
            page: Telnyx::Internal::PerPagePaginationV2,
            model: Telnyx::Messaging10dlc::TelnyxDownstreamCampaign,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Messaging10dlc::PartnerCampaignListSharedByMeParams} for more
        # details.
        #
        # Get all partner campaigns you have shared to Telnyx in a paginated fashion
        #
        # This endpoint is currently limited to only returning shared campaigns that
        # Telnyx has accepted. In other words, shared but pending campaigns are currently
        # omitted from the response from this endpoint.
        #
        # @overload list_shared_by_me(page: nil, records_per_page: nil, request_options: {})
        #
        # @param page [Integer] The 1-indexed page number to get. The default value is `1`.
        #
        # @param records_per_page [Integer] The amount of records per page, limited to between 1 and 500 inclusive. The defa
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::PerPagePaginationV2<Telnyx::Models::Messaging10dlc::PartnerCampaignListSharedByMeResponse>]
        #
        # @see Telnyx::Models::Messaging10dlc::PartnerCampaignListSharedByMeParams
        def list_shared_by_me(params = {})
          parsed, options = Telnyx::Messaging10dlc::PartnerCampaignListSharedByMeParams.dump_request(params)
          @client.request(
            method: :get,
            path: "10dlc/partnerCampaign/sharedByMe",
            query: parsed.transform_keys(records_per_page: "recordsPerPage"),
            page: Telnyx::Internal::PerPagePaginationV2,
            model: Telnyx::Models::Messaging10dlc::PartnerCampaignListSharedByMeResponse,
            options: options
          )
        end

        # Get Sharing Status
        #
        # @overload retrieve_sharing_status(campaign_id, request_options: {})
        #
        # @param campaign_id [String] ID of the campaign in question
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Hash{Symbol=>Telnyx::Models::Messaging10dlc::CampaignSharingStatus}]
        #
        # @see Telnyx::Models::Messaging10dlc::PartnerCampaignRetrieveSharingStatusParams
        def retrieve_sharing_status(campaign_id, params = {})
          @client.request(
            method: :get,
            path: ["10dlc/partnerCampaign/%1$s/sharing", campaign_id],
            model: Telnyx::Internal::Type::HashOf[Telnyx::Messaging10dlc::CampaignSharingStatus],
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
