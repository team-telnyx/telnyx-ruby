# frozen_string_literal: true

module Telnyx
  module Resources
    class GlobalIPProtocols
      # List all Global IP Protocols
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPProtocolListResponse]
      #
      # @see Telnyx::Models::GlobalIPProtocolListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "global_ip_protocols",
          model: Telnyx::Models::GlobalIPProtocolListResponse,
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
