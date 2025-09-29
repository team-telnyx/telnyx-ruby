# frozen_string_literal: true

module Telnyx
  module Resources
    class GlobalIPLatency
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::GlobalIPLatencyRetrieveParams} for more details.
      #
      # Global IP Latency Metrics
      #
      # @overload retrieve(filter: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::GlobalIPLatencyRetrieveParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[global_ip_i
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPLatencyRetrieveResponse]
      #
      # @see Telnyx::Models::GlobalIPLatencyRetrieveParams
      def retrieve(params = {})
        parsed, options = Telnyx::GlobalIPLatencyRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "global_ip_latency",
          query: parsed,
          model: Telnyx::Models::GlobalIPLatencyRetrieveResponse,
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
