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
      # @overload list(filter: nil, filters: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::VirtualCrossConnectsCoverageListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[cloud_provi
      #
      # @param filters [Telnyx::Models::VirtualCrossConnectsCoverageListParams::Filters] Consolidated filters parameter (deepObject style). Originally: filters[available
      #
      # @param page [Telnyx::Models::VirtualCrossConnectsCoverageListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::VirtualCrossConnectsCoverageListResponse>]
      #
      # @see Telnyx::Models::VirtualCrossConnectsCoverageListParams
      def list(params = {})
        parsed, options = Telnyx::VirtualCrossConnectsCoverageListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "virtual_cross_connects_coverage",
          query: parsed,
          page: Telnyx::Internal::DefaultPagination,
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
