# typed: strong

module Telnyx
  module Resources
    class X402
      # Operations for x402 cryptocurrency payment transactions. Fund your Telnyx
      # account using USDC stablecoin payments via the x402 protocol.
      class CreditAccount
        # Creates a payment quote for the specified USD amount. Returns payment details
        # including the x402 payment requirements, network, and expiration time. The quote
        # must be settled before it expires.
        sig do
          params(
            amount_usd: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::X402::CreditAccountCreateQuoteResponse)
        end
        def create_quote(
          # Amount in USD to fund (minimum 5.00, maximum 10000.00).
          amount_usd:,
          request_options: {}
        )
        end

        # Settles an x402 payment using the quote ID and a signed payment authorization.
        # The payment signature can be provided via the `PAYMENT-SIGNATURE` header or the
        # `payment_signature` body parameter. Settlement is idempotent — submitting the
        # same quote ID multiple times returns the existing transaction.
        sig do
          params(
            id: String,
            payment_signature: String,
            payment_signature_header: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::X402::CreditAccountSettleResponse)
        end
        def settle(
          # Body param: The quote ID to settle.
          id:,
          # Body param: Base64-encoded signed payment authorization (x402 PaymentPayload).
          # Can alternatively be provided via the PAYMENT-SIGNATURE header.
          payment_signature: nil,
          # Header param: Signed payment authorization for the quote. Alternative to
          # providing `payment_signature` in the request body.
          payment_signature_header: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
