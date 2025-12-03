# frozen_string_literal: true

module Telnyx
  module Resources
    class Enumeration
      # Get Enum
      #
      # @overload retrieve(endpoint, request_options: {})
      #
      # @param endpoint [Symbol, Telnyx::Models::EnumerationRetrieveParams::Endpoint]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<String>, Object]
      #
      # @see Telnyx::Models::EnumerationRetrieveParams
      def retrieve(endpoint, params = {})
        @client.request(
          method: :get,
          path: ["enum/%1$s", endpoint],
          model: Telnyx::Models::EnumerationRetrieveResponse,
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
