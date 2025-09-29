# typed: strong

module Telnyx
  module Models
    class PortingOrderStatus < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingOrderStatus, Telnyx::Internal::AnyHash)
        end

      # A list of 0 or more details about this porting order's status
      sig { returns(T.nilable(T::Array[Telnyx::PortingOrdersExceptionType])) }
      attr_reader :details

      sig do
        params(
          details: T::Array[Telnyx::PortingOrdersExceptionType::OrHash]
        ).void
      end
      attr_writer :details

      # The current status of the porting order
      sig do
        returns(T.nilable(Telnyx::PortingOrderStatus::Value::TaggedSymbol))
      end
      attr_reader :value

      sig { params(value: Telnyx::PortingOrderStatus::Value::OrSymbol).void }
      attr_writer :value

      # Porting order status
      sig do
        params(
          details: T::Array[Telnyx::PortingOrdersExceptionType::OrHash],
          value: Telnyx::PortingOrderStatus::Value::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of 0 or more details about this porting order's status
        details: nil,
        # The current status of the porting order
        value: nil
      )
      end

      sig do
        override.returns(
          {
            details: T::Array[Telnyx::PortingOrdersExceptionType],
            value: Telnyx::PortingOrderStatus::Value::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The current status of the porting order
      module Value
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::PortingOrderStatus::Value) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT = T.let(:draft, Telnyx::PortingOrderStatus::Value::TaggedSymbol)
        IN_PROCESS =
          T.let(:"in-process", Telnyx::PortingOrderStatus::Value::TaggedSymbol)
        SUBMITTED =
          T.let(:submitted, Telnyx::PortingOrderStatus::Value::TaggedSymbol)
        EXCEPTION =
          T.let(:exception, Telnyx::PortingOrderStatus::Value::TaggedSymbol)
        FOC_DATE_CONFIRMED =
          T.let(
            :"foc-date-confirmed",
            Telnyx::PortingOrderStatus::Value::TaggedSymbol
          )
        PORTED = T.let(:ported, Telnyx::PortingOrderStatus::Value::TaggedSymbol)
        CANCELLED =
          T.let(:cancelled, Telnyx::PortingOrderStatus::Value::TaggedSymbol)
        CANCEL_PENDING =
          T.let(
            :"cancel-pending",
            Telnyx::PortingOrderStatus::Value::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PortingOrderStatus::Value::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
