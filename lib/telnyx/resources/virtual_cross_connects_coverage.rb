# frozen_string_literal: true

module Telnyx
  module Resources
    class VirtualCrossConnectsCoverage
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::VirtualCrossConnectsCoverageListParams} for more details.
      #
      # List Virtual Cross Connects Cloud Coverage.<br /><br />This endpoint shows which
      # cloud regions are available for the `location_code` your Virtual Cross Connect
      # will be provisioned in.
      #
      # @overload list(filter: nil, filters: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::VirtualCrossConnectsCoverageListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[cloud_provi
      #
      # @param filters [Telnyx::Models::VirtualCrossConnectsCoverageListParams::Filters] Consolidated filters parameter (deepObject style). Originally: filters[available
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::VirtualCrossConnectsCoverageListResponse>]
      #
      # @see Telnyx::Models::VirtualCrossConnectsCoverageListParams
      def list(params = {})
        parsed, options = Telnyx::VirtualCrossConnectsCoverageListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "virtual_cross_connects_coverage",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::VirtualCrossConnectsCoverageListResponse,
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
