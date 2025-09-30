# typed: strong

module Telnyx
  module Models
    class BalanceRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::BalanceRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Models::BalanceRetrieveResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::Models::BalanceRetrieveResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::BalanceRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::BalanceRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::BalanceRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Available amount to spend (balance + credit limit)
        sig { returns(T.nilable(String)) }
        attr_reader :available_credit

        sig { params(available_credit: String).void }
        attr_writer :available_credit

        # The account's current balance.
        sig { returns(T.nilable(String)) }
        attr_reader :balance

        sig { params(balance: String).void }
        attr_writer :balance

        # The account's credit limit.
        sig { returns(T.nilable(String)) }
        attr_reader :credit_limit

        sig { params(credit_limit: String).void }
        attr_writer :credit_limit

        # The ISO 4217 currency identifier.
        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { params(currency: String).void }
        attr_writer :currency

        # The account’s pending amount.
        sig { returns(T.nilable(String)) }
        attr_reader :pending

        sig { params(pending: String).void }
        attr_writer :pending

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::BalanceRetrieveResponse::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::Models::BalanceRetrieveResponse::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            available_credit: String,
            balance: String,
            credit_limit: String,
            currency: String,
            pending: String,
            record_type:
              Telnyx::Models::BalanceRetrieveResponse::Data::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Available amount to spend (balance + credit limit)
          available_credit: nil,
          # The account's current balance.
          balance: nil,
          # The account's credit limit.
          credit_limit: nil,
          # The ISO 4217 currency identifier.
          currency: nil,
          # The account’s pending amount.
          pending: nil,
          # Identifies the type of the resource.
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              available_credit: String,
              balance: String,
              credit_limit: String,
              currency: String,
              pending: String,
              record_type:
                Telnyx::Models::BalanceRetrieveResponse::Data::RecordType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Identifies the type of the resource.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::BalanceRetrieveResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BALANCE =
            T.let(
              :balance,
              Telnyx::Models::BalanceRetrieveResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::BalanceRetrieveResponse::Data::RecordType::TaggedSymbol
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
