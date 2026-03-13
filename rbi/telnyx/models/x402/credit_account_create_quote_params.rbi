# typed: strong

module Telnyx
  module Models
    module X402
      class CreditAccountCreateQuoteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::X402::CreditAccountCreateQuoteParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Amount in USD to fund (minimum 5.00, maximum 10000.00).
        sig { returns(String) }
        attr_accessor :amount_usd

        sig do
          params(
            amount_usd: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Amount in USD to fund (minimum 5.00, maximum 10000.00).
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
end
