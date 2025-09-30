# frozen_string_literal: true

module Telnyx
  module Resources
    class GlobalIPUsage
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::GlobalIPUsageRetrieveParams} for more details.
      #
      # Global IP Usage Metrics
      #
      # @overload retrieve(filter: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::GlobalIPUsageRetrieveParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[global_ip_i
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPUsageRetrieveResponse]
      #
      # @see Telnyx::Models::GlobalIPUsageRetrieveParams
      def retrieve(params = {})
        parsed, options = Telnyx::GlobalIPUsageRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "global_ip_usage",
          query: parsed,
          model: Telnyx::Models::GlobalIPUsageRetrieveResponse,
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
