# frozen_string_literal: true

module Telnyx
  module Resources
    class Balance
      # Get user balance details
      #
      # @overload retrieve(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::BalanceRetrieveResponse]
      #
      # @see Telnyx::Models::BalanceRetrieveParams
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "balance",
          model: Telnyx::Models::BalanceRetrieveResponse,
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
