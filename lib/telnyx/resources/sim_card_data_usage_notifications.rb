# frozen_string_literal: true

module Telnyx
  module Resources
    class SimCardDataUsageNotifications
      # Creates a new SIM card data usage notification.
      #
      # @overload create(sim_card_id:, threshold:, request_options: {})
      #
      # @param sim_card_id [String] The identification UUID of the related SIM card resource.
      #
      # @param threshold [Telnyx::Models::SimCardDataUsageNotificationCreateParams::Threshold] Data usage threshold that will trigger the notification.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardDataUsageNotificationCreateResponse]
      #
      # @see Telnyx::Models::SimCardDataUsageNotificationCreateParams
      def create(params)
        parsed, options = Telnyx::SimCardDataUsageNotificationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "sim_card_data_usage_notifications",
          body: parsed,
          model: Telnyx::Models::SimCardDataUsageNotificationCreateResponse,
          options: options
        )
      end

      # Get a single SIM Card Data Usage Notification.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardDataUsageNotificationRetrieveResponse]
      #
      # @see Telnyx::Models::SimCardDataUsageNotificationRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["sim_card_data_usage_notifications/%1$s", id],
          model: Telnyx::Models::SimCardDataUsageNotificationRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Updates information for a SIM Card Data Usage Notification.
      #
      # @overload update(id, sim_card_id: nil, threshold: nil, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param sim_card_id [String] The identification UUID of the related SIM card resource.
      #
      # @param threshold [Telnyx::Models::SimCardDataUsageNotification::Threshold] Data usage threshold that will trigger the notification.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardDataUsageNotificationUpdateResponse]
      #
      # @see Telnyx::Models::SimCardDataUsageNotificationUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::SimCardDataUsageNotificationUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["sim_card_data_usage_notifications/%1$s", id],
          body: parsed,
          model: Telnyx::Models::SimCardDataUsageNotificationUpdateResponse,
          options: options
        )
      end

      # Lists a paginated collection of SIM card data usage notifications. It enables
      # exploring the collection using specific filters.
      #
      # @overload list(filter_sim_card_id: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter_sim_card_id [String] A valid SIM card ID.
      #
      # @param page_number [Integer] The page number to load.
      #
      # @param page_size [Integer] The size of the page.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardDataUsageNotificationListResponse]
      #
      # @see Telnyx::Models::SimCardDataUsageNotificationListParams
      def list(params = {})
        parsed, options = Telnyx::SimCardDataUsageNotificationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "sim_card_data_usage_notifications",
          query: parsed.transform_keys(
            filter_sim_card_id: "filter[sim_card_id]",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          model: Telnyx::Models::SimCardDataUsageNotificationListResponse,
          options: options
        )
      end

      # Delete the SIM Card Data Usage Notification.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardDataUsageNotificationDeleteResponse]
      #
      # @see Telnyx::Models::SimCardDataUsageNotificationDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["sim_card_data_usage_notifications/%1$s", id],
          model: Telnyx::Models::SimCardDataUsageNotificationDeleteResponse,
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
