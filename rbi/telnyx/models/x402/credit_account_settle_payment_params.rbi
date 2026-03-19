# typed: strong

module Telnyx
  module Models
    module X402
      class CreditAccountSettlePaymentParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::X402::CreditAccountSettlePaymentParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The quote ID to settle.
        sig { returns(String) }
        attr_accessor :id

        # Base64-encoded signed payment authorization (x402 PaymentPayload). Can
        # alternatively be provided via the PAYMENT-SIGNATURE header.
        sig { returns(T.nilable(String)) }
        attr_reader :body_payment_signature

        sig { params(body_payment_signature: String).void }
        attr_writer :body_payment_signature

        sig { returns(T.nilable(String)) }
        attr_reader :header_payment_signature

        sig { params(header_payment_signature: String).void }
        attr_writer :header_payment_signature

        sig do
          params(
            id: String,
            body_payment_signature: String,
            header_payment_signature: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The quote ID to settle.
          id:,
          # Base64-encoded signed payment authorization (x402 PaymentPayload). Can
          # alternatively be provided via the PAYMENT-SIGNATURE header.
          body_payment_signature: nil,
          header_payment_signature: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              body_payment_signature: String,
              header_payment_signature: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
