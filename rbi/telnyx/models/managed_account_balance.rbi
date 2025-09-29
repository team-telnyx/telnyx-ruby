# typed: strong

module Telnyx
  module Models
    class ManagedAccountBalance < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::ManagedAccountBalance, Telnyx::Internal::AnyHash)
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

      # Identifies the type of the resource.
      sig do
        returns(
          T.nilable(Telnyx::ManagedAccountBalance::RecordType::TaggedSymbol)
        )
      end
      attr_reader :record_type

      sig do
        params(
          record_type: Telnyx::ManagedAccountBalance::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      sig do
        params(
          available_credit: String,
          balance: String,
          credit_limit: String,
          currency: String,
          record_type: Telnyx::ManagedAccountBalance::RecordType::OrSymbol
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
            record_type: Telnyx::ManagedAccountBalance::RecordType::TaggedSymbol
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
            T.all(Symbol, Telnyx::ManagedAccountBalance::RecordType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BALANCE =
          T.let(
            :balance,
            Telnyx::ManagedAccountBalance::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::ManagedAccountBalance::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
