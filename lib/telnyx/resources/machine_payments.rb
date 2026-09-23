# frozen_string_literal: true

module Telnyx
  module Resources
    # Machine payment (MPP) account-credit operations. Fund your Telnyx account
    # programmatically from a machine or agent using the Machine Payment Protocol, an
    # HTTP-402 flow settled via Stripe or Tempo.
    class MachinePayments
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MachinePaymentAccountCreditParams} for more details.
      #
      # Creates an account credit using the Machine Payment Protocol (MPP), an HTTP-402
      # payment flow for machines and agents.
      #
      # The flow has two steps. First, send an authenticated request with the
      # `amount_usd` to credit; the response is `402 Payment Required` with one or more
      # payment challenges (for example separate Tempo and Stripe challenges) in the
      # `WWW-Authenticate` header. Second, retry the request with an
      # `Authorization: Payment ...` credential constructed from the challenge; on
      # success the response includes the credited transaction and a `Payment-Receipt`
      # header.
      #
      # The credited account is never chosen by the request body: the initial request
      # credits the account of the authenticated user, and a paid retry credits the
      # account bound to the verified payment credential. The amount must be within the
      # configured bounds (by default between 5.00 and 500.00 USD).
      #
      # Successful paid retries are idempotent — when Rails reaches its
      # duplicate-transaction lookup for an already-recorded payment, it returns the
      # existing transaction with `created: false` instead of crediting the account
      # again. This deduplication applies to successful fulfillment: re-sending the same
      # Stripe credential may instead be rejected by the upstream provider as an
      # idempotent replay and return `402 Payment Required` rather than the existing
      # transaction.
      #
      # > **Warning: the payment credential is bound to a specific Telnyx account ID.**
      # > A payment is captured before the bound account is validated. If the credential
      # > names an account that is missing, suspended, blocked, cancelled, dormant, or
      # > ineligible for the tier, the payment is captured but **no account is
      # > credited**. If the credential names a different but eligible account, that
      # > account is credited — the service does not compare it against the payer's
      # > account. There is **no automatic refund**: if the captured payment does not
      # > credit the intended account, contact Telnyx support for remediation.
      #
      # @overload account_credit(amount_usd:, request_options: {})
      #
      # @param amount_usd [String] Amount to credit in USD, as a decimal string with up to two fractional digits (b
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MachinePaymentAccountCreditResponse]
      #
      # @see Telnyx::Models::MachinePaymentAccountCreditParams
      def account_credit(params)
        parsed, options = Telnyx::MachinePaymentAccountCreditParams.dump_request(params)
        @client.request(
          method: :post,
          path: "machine-payments/account-credit",
          body: parsed,
          model: Telnyx::Models::MachinePaymentAccountCreditResponse,
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
