# frozen_string_literal: true

module Telnyx
  module Resources
    class List
      # Retrieve a list of all phone numbers using Channel Billing, grouped by Zone.
      #
      # @overload retrieve_all(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ListRetrieveAllResponse]
      #
      # @see Telnyx::Models::ListRetrieveAllParams
      def retrieve_all(params = {})
        @client.request(
          method: :get,
          path: "list",
          model: Telnyx::Models::ListRetrieveAllResponse,
          options: params[:request_options]
        )
      end

      # Retrieve a list of phone numbers using Channel Billing for a specific Zone.
      #
      # @overload retrieve_by_zone(channel_zone_id, request_options: {})
      #
      # @param channel_zone_id [String] Channel zone identifier
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ListRetrieveByZoneResponse]
      #
      # @see Telnyx::Models::ListRetrieveByZoneParams
      def retrieve_by_zone(channel_zone_id, params = {})
        @client.request(
          method: :get,
          path: ["list/%1$s", channel_zone_id],
          model: Telnyx::Models::ListRetrieveByZoneResponse,
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
