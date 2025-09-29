# frozen_string_literal: true

module Telnyx
  module Resources
    class Regions
      # List all regions and the interfaces that region supports
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RegionListResponse]
      #
      # @see Telnyx::Models::RegionListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "regions",
          model: Telnyx::Models::RegionListResponse,
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
