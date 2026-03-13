# typed: strong

module Telnyx
  module Resources
    class X402
      # Operations for x402 cryptocurrency payment transactions. Fund your Telnyx
      # account using USDC stablecoin payments via the x402 protocol.
      sig { returns(Telnyx::Resources::X402::CreditAccount) }
      attr_reader :credit_account

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
