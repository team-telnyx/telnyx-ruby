# frozen_string_literal: true

module Telnyx
  module Resources
    class GlobalIPAssignmentHealth
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::GlobalIPAssignmentHealthRetrieveParams} for more details.
      #
      # Global IP Assignment Health Check Metrics
      #
      # @overload retrieve(filter: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::GlobalIPAssignmentHealthRetrieveParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[global_ip_i
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse]
      #
      # @see Telnyx::Models::GlobalIPAssignmentHealthRetrieveParams
      def retrieve(params = {})
        parsed, options = Telnyx::GlobalIPAssignmentHealthRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "global_ip_assignment_health",
          query: parsed,
          model: Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse,
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
