# frozen_string_literal: true

module Telnyx
  module Resources
    class GlobalIPAssignmentsUsage
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::GlobalIPAssignmentsUsageRetrieveParams} for more details.
      #
      # Global IP Assignment Usage Metrics
      #
      # @overload retrieve(filter: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::GlobalIPAssignmentsUsageRetrieveParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[global_ip_a
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse]
      #
      # @see Telnyx::Models::GlobalIPAssignmentsUsageRetrieveParams
      def retrieve(params = {})
        parsed, options = Telnyx::GlobalIPAssignmentsUsageRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "global_ip_assignments_usage",
          query: parsed,
          model: Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse,
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
