# typed: strong

module Telnyx
  module Models
    class PaymentCreateStoredPaymentTransactionParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::PaymentCreateStoredPaymentTransactionParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Amount in dollars and cents, e.g. "120.00"
      sig { returns(String) }
      attr_accessor :amount

      sig do
        params(
          amount: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Amount in dollars and cents, e.g. "120.00"
        amount:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { amount: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
