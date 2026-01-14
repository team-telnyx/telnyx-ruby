# frozen_string_literal: true

module Telnyx
  module Resources
    class NetworkCoverage
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::NetworkCoverageListParams} for more details.
      #
      # List all locations and the interfaces that region supports
      #
      # @overload list(filter: nil, filters: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::NetworkCoverageListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[location.re
      #
      # @param filters [Telnyx::Models::NetworkCoverageListParams::Filters] Consolidated filters parameter (deepObject style). Originally: filters[available
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::NetworkCoverageListResponse>]
      #
      # @see Telnyx::Models::NetworkCoverageListParams
      def list(params = {})
        parsed, options = Telnyx::NetworkCoverageListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "network_coverage",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::NetworkCoverageListResponse,
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
