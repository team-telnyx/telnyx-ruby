# frozen_string_literal: true

module Telnyx
  module Resources
    class Number10dlc
      class PartnerCampaigns
        # Retrieve campaign details by `campaignId`.
        #
        # @overload retrieve(campaign_id, request_options: {})
        #
        # @param campaign_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::TelnyxDownstreamCampaign]
        #
        # @see Telnyx::Models::Number10dlc::PartnerCampaignRetrieveParams
        def retrieve(campaign_id, params = {})
          @client.request(
            method: :get,
            path: ["10dlc/partner_campaigns/%1$s", campaign_id],
            model: Telnyx::TelnyxDownstreamCampaign,
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
        # @return [Telnyx::Models::TelnyxDownstreamCampaign]
        #
        # @see Telnyx::Models::Number10dlc::PartnerCampaignUpdateParams
        def update(campaign_id, params = {})
          parsed, options = Telnyx::Number10dlc::PartnerCampaignUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["10dlc/partner_campaigns/%1$s", campaign_id],
            body: parsed,
            model: Telnyx::TelnyxDownstreamCampaign,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Number10dlc::PartnerCampaignListParams} for more details.
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
        # @param sort [Symbol, Telnyx::Models::Number10dlc::PartnerCampaignListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Number10dlc::PartnerCampaignListResponse]
        #
        # @see Telnyx::Models::Number10dlc::PartnerCampaignListParams
        def list(params = {})
          parsed, options = Telnyx::Number10dlc::PartnerCampaignListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "10dlc/partner_campaigns",
            query: parsed.transform_keys(records_per_page: "recordsPerPage"),
            model: Telnyx::Models::Number10dlc::PartnerCampaignListResponse,
            options: options
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
