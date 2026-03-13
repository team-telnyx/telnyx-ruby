# frozen_string_literal: true

module Telnyx
  module Resources
    class X402
      # Operations for x402 cryptocurrency payment transactions. Fund your Telnyx
      # account using USDC stablecoin payments via the x402 protocol.
      # @return [Telnyx::Resources::X402::CreditAccount]
      attr_reader :credit_account

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @credit_account = Telnyx::Resources::X402::CreditAccount.new(client: client)
      end
    end
  end
end
