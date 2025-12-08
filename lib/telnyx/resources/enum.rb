# frozen_string_literal: true

module Telnyx
  module Resources
    class Enum
      # Get Enum
      #
      # @overload retrieve(endpoint, request_options: {})
      #
      # @param endpoint [Symbol, Telnyx::Models::EnumRetrieveParams::Endpoint]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<String, Object>, Object]
      #
      # @see Telnyx::Models::EnumRetrieveParams
      def retrieve(endpoint, params = {})
        @client.request(
          method: :get,
          path: ["10dlc/enum/%1$s", endpoint],
          model: Telnyx::Models::EnumRetrieveResponse,
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
