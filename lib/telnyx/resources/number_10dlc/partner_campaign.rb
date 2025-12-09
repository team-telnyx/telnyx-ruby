# frozen_string_literal: true

module Telnyx
  module Resources
    class Number10dlc
      class PartnerCampaign
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Number10dlc::PartnerCampaignGetSharedByMeParams} for more
        # details.
        #
        # Get all partner campaigns you have shared to Telnyx in a paginated fashion
        #
        # This endpoint is currently limited to only returning shared campaigns that
        # Telnyx has accepted. In other words, shared but pending campaigns are currently
        # omitted from the response from this endpoint.
        #
        # @overload get_shared_by_me(page: nil, records_per_page: nil, request_options: {})
        #
        # @param page [Integer] The 1-indexed page number to get. The default value is `1`.
        #
        # @param records_per_page [Integer] The amount of records per page, limited to between 1 and 500 inclusive. The defa
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Number10dlc::PartnerCampaignGetSharedByMeResponse]
        #
        # @see Telnyx::Models::Number10dlc::PartnerCampaignGetSharedByMeParams
        def get_shared_by_me(params = {})
          parsed, options = Telnyx::Number10dlc::PartnerCampaignGetSharedByMeParams.dump_request(params)
          @client.request(
            method: :get,
            path: "10dlc/partnerCampaign/sharedByMe",
            query: parsed.transform_keys(records_per_page: "recordsPerPage"),
            model: Telnyx::Models::Number10dlc::PartnerCampaignGetSharedByMeResponse,
            options: options
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
        # @return [Hash{Symbol=>Telnyx::Models::CampaignSharingStatus}]
        #
        # @see Telnyx::Models::Number10dlc::PartnerCampaignGetSharingStatusParams
        def get_sharing_status(campaign_id, params = {})
          @client.request(
            method: :get,
            path: ["10dlc/partnerCampaign/%1$s/sharing", campaign_id],
            model: Telnyx::Internal::Type::HashOf[Telnyx::CampaignSharingStatus],
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
