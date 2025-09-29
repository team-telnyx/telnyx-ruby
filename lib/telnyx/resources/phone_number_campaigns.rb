# frozen_string_literal: true

module Telnyx
  module Resources
    class PhoneNumberCampaigns
      # Create New Phone Number Campaign
      #
      # @overload create(campaign_id:, phone_number:, request_options: {})
      #
      # @param campaign_id [String] The ID of the campaign you want to link to the specified phone number.
      #
      # @param phone_number [String] The phone number you want to link to a specified campaign.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PhoneNumberCampaign]
      #
      # @see Telnyx::Models::PhoneNumberCampaignCreateParams
      def create(params)
        parsed, options = Telnyx::PhoneNumberCampaignCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "phone_number_campaigns",
          body: parsed,
          model: Telnyx::PhoneNumberCampaign,
          options: options
        )
      end

      # Retrieve an individual phone number/campaign assignment by `phoneNumber`.
      #
      # @overload retrieve(phone_number, request_options: {})
      #
      # @param phone_number [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PhoneNumberCampaign]
      #
      # @see Telnyx::Models::PhoneNumberCampaignRetrieveParams
      def retrieve(phone_number, params = {})
        @client.request(
          method: :get,
          path: ["phone_number_campaigns/%1$s", phone_number],
          model: Telnyx::PhoneNumberCampaign,
          options: params[:request_options]
        )
      end

      # Create New Phone Number Campaign
      #
      # @overload update(path_phone_number, campaign_id:, body_phone_number:, request_options: {})
      #
      # @param path_phone_number [String]
      #
      # @param campaign_id [String] The ID of the campaign you want to link to the specified phone number.
      #
      # @param body_phone_number [String] The phone number you want to link to a specified campaign.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PhoneNumberCampaign]
      #
      # @see Telnyx::Models::PhoneNumberCampaignUpdateParams
      def update(path_phone_number, params)
        parsed, options = Telnyx::PhoneNumberCampaignUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["phone_number_campaigns/%1$s", path_phone_number],
          body: parsed,
          model: Telnyx::PhoneNumberCampaign,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PhoneNumberCampaignListParams} for more details.
      #
      # Retrieve All Phone Number Campaigns
      #
      # @overload list(filter: nil, page: nil, records_per_page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::PhoneNumberCampaignListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[telnyx_camp
      #
      # @param page [Integer]
      #
      # @param records_per_page [Integer]
      #
      # @param sort [Symbol, Telnyx::Models::PhoneNumberCampaignListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PhoneNumberCampaignListResponse]
      #
      # @see Telnyx::Models::PhoneNumberCampaignListParams
      def list(params = {})
        parsed, options = Telnyx::PhoneNumberCampaignListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "phone_number_campaigns",
          query: parsed.transform_keys(records_per_page: "recordsPerPage"),
          model: Telnyx::Models::PhoneNumberCampaignListResponse,
          options: options
        )
      end

      # This endpoint allows you to remove a campaign assignment from the supplied
      # `phoneNumber`.
      #
      # @overload delete(phone_number, request_options: {})
      #
      # @param phone_number [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PhoneNumberCampaign]
      #
      # @see Telnyx::Models::PhoneNumberCampaignDeleteParams
      def delete(phone_number, params = {})
        @client.request(
          method: :delete,
          path: ["phone_number_campaigns/%1$s", phone_number],
          model: Telnyx::PhoneNumberCampaign,
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
