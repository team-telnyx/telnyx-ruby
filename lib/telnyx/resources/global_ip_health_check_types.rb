# frozen_string_literal: true

module Telnyx
  module Resources
    class GlobalIPHealthCheckTypes
      # List all Global IP Health check types.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPHealthCheckTypeListResponse]
      #
      # @see Telnyx::Models::GlobalIPHealthCheckTypeListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "global_ip_health_check_types",
          model: Telnyx::Models::GlobalIPHealthCheckTypeListResponse,
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
