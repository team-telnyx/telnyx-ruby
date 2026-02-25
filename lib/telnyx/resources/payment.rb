# frozen_string_literal: true

module Telnyx
  module Resources
    class Payment
      # @return [Telnyx::Resources::Payment::AutoRechargePrefs]
      attr_reader :auto_recharge_prefs

      # Create a stored payment transaction
      #
      # @overload create_stored_payment_transaction(amount:, request_options: {})
      #
      # @param amount [String] Amount in dollars and cents, e.g. "120.00"
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse]
      #
      # @see Telnyx::Models::PaymentCreateStoredPaymentTransactionParams
      def create_stored_payment_transaction(params)
        parsed, options = Telnyx::PaymentCreateStoredPaymentTransactionParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/payment/stored_payment_transactions",
          body: parsed,
          model: Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @auto_recharge_prefs = Telnyx::Resources::Payment::AutoRechargePrefs.new(client: client)
      end
    end
  end
end
