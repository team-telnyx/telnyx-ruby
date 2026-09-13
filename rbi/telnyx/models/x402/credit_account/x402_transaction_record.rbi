# typed: strong

module Telnyx
  module Models
    module X402
      module CreditAccount
        class X402TransactionRecord < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::X402::CreditAccount::X402TransactionRecord,
                Telnyx::Internal::AnyHash
              )
            end

          # Unique transaction identifier.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The transaction amount in the specified currency.
          sig { returns(T.nilable(String)) }
          attr_reader :amount

          sig { params(amount: String).void }
          attr_writer :amount

          # ISO 8601 timestamp when the transaction was created.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          # The currency of the transaction amount (e.g. USD).
          sig { returns(T.nilable(String)) }
          attr_reader :currency

          sig { params(currency: String).void }
          attr_writer :currency

          # The original quote ID associated with this transaction.
          sig { returns(T.nilable(String)) }
          attr_reader :quote_id

          sig { params(quote_id: String).void }
          attr_writer :quote_id

          sig do
            returns(
              T.nilable(
                Telnyx::X402::CreditAccount::X402TransactionRecord::RecordType::TaggedSymbol
              )
            )
          end
          attr_reader :record_type

          sig do
            params(
              record_type:
                Telnyx::X402::CreditAccount::X402TransactionRecord::RecordType::OrSymbol
            ).void
          end
          attr_writer :record_type

          # The settlement status of the transaction. x402 transactions are created after
          # successful on-chain settlement, so the status is `settled`.
          sig do
            returns(
              T.nilable(
                Telnyx::X402::CreditAccount::X402TransactionRecord::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::X402::CreditAccount::X402TransactionRecord::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # The on-chain transaction hash, if available.
          sig { returns(T.nilable(String)) }
          attr_accessor :tx_hash

          # ISO 8601 timestamp when the transaction was last updated.
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          # An x402 payment transaction.
          sig do
            params(
              id: String,
              amount: String,
              created_at: Time,
              currency: String,
              quote_id: String,
              record_type:
                Telnyx::X402::CreditAccount::X402TransactionRecord::RecordType::OrSymbol,
              status:
                Telnyx::X402::CreditAccount::X402TransactionRecord::Status::OrSymbol,
              tx_hash: T.nilable(String),
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique transaction identifier.
            id: nil,
            # The transaction amount in the specified currency.
            amount: nil,
            # ISO 8601 timestamp when the transaction was created.
            created_at: nil,
            # The currency of the transaction amount (e.g. USD).
            currency: nil,
            # The original quote ID associated with this transaction.
            quote_id: nil,
            record_type: nil,
            # The settlement status of the transaction. x402 transactions are created after
            # successful on-chain settlement, so the status is `settled`.
            status: nil,
            # The on-chain transaction hash, if available.
            tx_hash: nil,
            # ISO 8601 timestamp when the transaction was last updated.
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount: String,
                created_at: Time,
                currency: String,
                quote_id: String,
                record_type:
                  Telnyx::X402::CreditAccount::X402TransactionRecord::RecordType::TaggedSymbol,
                status:
                  Telnyx::X402::CreditAccount::X402TransactionRecord::Status::TaggedSymbol,
                tx_hash: T.nilable(String),
                updated_at: Time
              }
            )
          end
          def to_hash
          end

          module RecordType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::X402::CreditAccount::X402TransactionRecord::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            X402_TRANSACTION =
              T.let(
                :x402_transaction,
                Telnyx::X402::CreditAccount::X402TransactionRecord::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::X402::CreditAccount::X402TransactionRecord::RecordType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The settlement status of the transaction. x402 transactions are created after
          # successful on-chain settlement, so the status is `settled`.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::X402::CreditAccount::X402TransactionRecord::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SETTLED =
              T.let(
                :settled,
                Telnyx::X402::CreditAccount::X402TransactionRecord::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::X402::CreditAccount::X402TransactionRecord::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
