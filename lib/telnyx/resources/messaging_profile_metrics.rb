# frozen_string_literal: true

module Telnyx
  module Resources
    class MessagingProfileMetrics
      # List high-level metrics for all messaging profiles belonging to the
      # authenticated user.
      #
      # @overload list(time_frame: nil, request_options: {})
      #
      # @param time_frame [Symbol, Telnyx::Models::MessagingProfileMetricListParams::TimeFrame] The time frame for metrics.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingProfileMetricListResponse]
      #
      # @see Telnyx::Models::MessagingProfileMetricListParams
      def list(params = {})
        parsed, options = Telnyx::MessagingProfileMetricListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "messaging_profile_metrics",
          query: parsed,
          model: Telnyx::Models::MessagingProfileMetricListResponse,
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
