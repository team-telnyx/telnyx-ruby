# typed: strong

module Telnyx
  module Models
    class MachinePaymentAccountCreditParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::MachinePaymentAccountCreditParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Amount to credit in USD, as a decimal string with up to two fractional digits
      # (by default between 5.00 and 500.00). The request body is required on the
      # initial challenge request and remains required on a paid retry, where you
      # re-send the identical body plus the payment credential — the credential, not the
      # body, selects the payment, and the retried body is not re-validated.
      sig { returns(String) }
      attr_accessor :amount_usd

      sig do
        params(
          amount_usd: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Amount to credit in USD, as a decimal string with up to two fractional digits
        # (by default between 5.00 and 500.00). The request body is required on the
        # initial challenge request and remains required on a paid retry, where you
        # re-send the identical body plus the payment credential — the credential, not the
        # body, selects the payment, and the retried body is not re-validated.
        amount_usd:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { amount_usd: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
