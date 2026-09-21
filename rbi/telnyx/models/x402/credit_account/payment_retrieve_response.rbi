# typed: strong

module Telnyx
  module Models
    module X402
      module CreditAccount
        class PaymentRetrieveResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::X402::CreditAccount::PaymentRetrieveResponse,
                Telnyx::Internal::AnyHash
              )
            end

          # An x402 payment transaction.
          sig do
            returns(
              T.nilable(Telnyx::X402::CreditAccount::X402TransactionRecord)
            )
          end
          attr_reader :data

          sig do
            params(
              data: Telnyx::X402::CreditAccount::X402TransactionRecord::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data: Telnyx::X402::CreditAccount::X402TransactionRecord::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # An x402 payment transaction.
            data: nil
          )
          end

          sig do
            override.returns(
              { data: Telnyx::X402::CreditAccount::X402TransactionRecord }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
