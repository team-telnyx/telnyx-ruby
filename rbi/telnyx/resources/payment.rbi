# typed: strong

module Telnyx
  module Resources
    class Payment
      sig { returns(Telnyx::Resources::Payment::AutoRechargePrefs) }
      attr_reader :auto_recharge_prefs

      # Create a stored payment transaction
      sig do
        params(
          amount: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse)
      end
      def create_stored_payment_transaction(
        # Amount in dollars and cents, e.g. "120.00"
        amount:,
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
