# frozen_string_literal: true

module Telnyx
  module Resources
    class X402
      # Operations for x402 cryptocurrency payment transactions. Fund your Telnyx
      # account using USDC stablecoin payments via the x402 protocol.
      class CreditAccount
        # Creates a payment quote for the specified USD amount. Returns payment details
        # including the x402 payment requirements, network, and expiration time. The quote
        # must be settled before it expires.
        #
        # @overload create_payment_quote(amount_usd:, request_options: {})
        #
        # @param amount_usd [String] Amount in USD to fund (minimum 5.00, maximum 10000.00).
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::X402::CreditAccountCreatePaymentQuoteResponse]
        #
        # @see Telnyx::Models::X402::CreditAccountCreatePaymentQuoteParams
        def create_payment_quote(params)
          parsed, options = Telnyx::X402::CreditAccountCreatePaymentQuoteParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/x402/credit_account/quote",
            body: parsed,
            model: Telnyx::Models::X402::CreditAccountCreatePaymentQuoteResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::X402::CreditAccountSettlePaymentParams} for more details.
        #
        # Settles an x402 payment using the quote ID and a signed payment authorization.
        # The payment signature can be provided via the `PAYMENT-SIGNATURE` header or the
        # `payment_signature` body parameter. Settlement is idempotent — submitting the
        # same quote ID multiple times returns the existing transaction.
        #
        # @overload settle_payment(id:, body_payment_signature: nil, header_payment_signature: nil, request_options: {})
        #
        # @param id [String] Body param: The quote ID to settle.
        #
        # @param body_payment_signature [String] Body param: Base64-encoded signed payment authorization (x402 PaymentPayload). C
        #
        # @param header_payment_signature [String] Header param: Signed payment authorization for the quote. Alternative to providi
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::X402::CreditAccountSettlePaymentResponse]
        #
        # @see Telnyx::Models::X402::CreditAccountSettlePaymentParams
        def settle_payment(params)
          parsed, options = Telnyx::X402::CreditAccountSettlePaymentParams.dump_request(params)
          header_params = {header_payment_signature: "payment-signature"}
          @client.request(
            method: :post,
            path: "v2/x402/credit_account",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Telnyx::Models::X402::CreditAccountSettlePaymentResponse,
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
end
