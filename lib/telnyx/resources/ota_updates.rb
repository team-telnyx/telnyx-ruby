# frozen_string_literal: true

module Telnyx
  module Resources
    class OtaUpdates
      # This API returns the details of an Over the Air (OTA) update.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::OtaUpdateRetrieveResponse]
      #
      # @see Telnyx::Models::OtaUpdateRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["ota_updates/%1$s", id],
          model: Telnyx::Models::OtaUpdateRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::OtaUpdateListParams} for more details.
      #
      # List OTA updates
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::OtaUpdateListParams::Filter] Consolidated filter parameter for OTA updates (deepObject style). Originally: fi
      #
      # @param page [Telnyx::Models::OtaUpdateListParams::Page] Consolidated pagination parameter (deepObject style). Originally: page[number],
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::OtaUpdateListResponse]
      #
      # @see Telnyx::Models::OtaUpdateListParams
      def list(params = {})
        parsed, options = Telnyx::OtaUpdateListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "ota_updates",
          query: parsed,
          model: Telnyx::Models::OtaUpdateListResponse,
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
