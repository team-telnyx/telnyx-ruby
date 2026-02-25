# typed: strong

module Telnyx
  module Models
    class PaymentCreateStoredPaymentTransactionResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          {
            data:
              Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_cents

        sig { params(amount_cents: Integer).void }
        attr_writer :amount_cents

        sig { returns(T.nilable(String)) }
        attr_reader :amount_currency

        sig { params(amount_currency: String).void }
        attr_writer :amount_currency

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :auto_recharge

        sig { params(auto_recharge: T::Boolean).void }
        attr_writer :auto_recharge

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :processor_status

        sig { params(processor_status: String).void }
        attr_writer :processor_status

        sig do
          returns(
            T.nilable(
              Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          returns(
            T.nilable(
              Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::TransactionProcessingType::TaggedSymbol
            )
          )
        end
        attr_reader :transaction_processing_type

        sig do
          params(
            transaction_processing_type:
              Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::TransactionProcessingType::OrSymbol
          ).void
        end
        attr_writer :transaction_processing_type

        sig do
          params(
            id: String,
            amount_cents: Integer,
            amount_currency: String,
            auto_recharge: T::Boolean,
            created_at: Time,
            processor_status: String,
            record_type:
              Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::RecordType::OrSymbol,
            transaction_processing_type:
              Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::TransactionProcessingType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          amount_cents: nil,
          amount_currency: nil,
          auto_recharge: nil,
          created_at: nil,
          processor_status: nil,
          record_type: nil,
          transaction_processing_type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount_cents: Integer,
              amount_currency: String,
              auto_recharge: T::Boolean,
              created_at: Time,
              processor_status: String,
              record_type:
                Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::RecordType::TaggedSymbol,
              transaction_processing_type:
                Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::TransactionProcessingType::TaggedSymbol
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
                Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRANSACTION =
            T.let(
              :transaction,
              Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module TransactionProcessingType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::TransactionProcessingType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STORED_PAYMENT =
            T.let(
              :stored_payment,
              Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::TransactionProcessingType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::TransactionProcessingType::TaggedSymbol
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
