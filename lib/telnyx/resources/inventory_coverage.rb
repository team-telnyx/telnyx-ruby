# frozen_string_literal: true

module Telnyx
  module Resources
    class InventoryCoverage
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::InventoryCoverageListParams} for more details.
      #
      # Creates an inventory coverage request. If locality, npa or
      # national_destination_code is used in groupBy, and no region or locality filters
      # are used, the whole paginated set is returned.
      #
      # @overload list(filter: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::InventoryCoverageListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[npa], filte
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::InventoryCoverageListResponse]
      #
      # @see Telnyx::Models::InventoryCoverageListParams
      def list(params = {})
        parsed, options = Telnyx::InventoryCoverageListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "inventory_coverage",
          query: parsed,
          model: Telnyx::Models::InventoryCoverageListResponse,
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
