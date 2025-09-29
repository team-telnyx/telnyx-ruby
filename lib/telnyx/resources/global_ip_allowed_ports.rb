# frozen_string_literal: true

module Telnyx
  module Resources
    class GlobalIPAllowedPorts
      # List all Global IP Allowed Ports
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPAllowedPortListResponse]
      #
      # @see Telnyx::Models::GlobalIPAllowedPortListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "global_ip_allowed_ports",
          model: Telnyx::Models::GlobalIPAllowedPortListResponse,
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
