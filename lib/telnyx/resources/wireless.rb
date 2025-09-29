# frozen_string_literal: true

module Telnyx
  module Resources
    class Wireless
      # @return [Telnyx::Resources::Wireless::DetailRecordsReports]
      attr_reader :detail_records_reports

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::WirelessRetrieveRegionsParams} for more details.
      #
      # Retrieve all wireless regions for the given product.
      #
      # @overload retrieve_regions(product:, request_options: {})
      #
      # @param product [String] The product for which to list regions (e.g., 'public_ips', 'private_wireless_gat
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WirelessRetrieveRegionsResponse]
      #
      # @see Telnyx::Models::WirelessRetrieveRegionsParams
      def retrieve_regions(params)
        parsed, options = Telnyx::WirelessRetrieveRegionsParams.dump_request(params)
        @client.request(
          method: :get,
          path: "wireless/regions",
          query: parsed,
          model: Telnyx::Models::WirelessRetrieveRegionsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @detail_records_reports = Telnyx::Resources::Wireless::DetailRecordsReports.new(client: client)
      end
    end
  end
end
