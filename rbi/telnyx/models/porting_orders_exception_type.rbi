# typed: strong

module Telnyx
  module Models
    class PortingOrdersExceptionType < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingOrdersExceptionType, Telnyx::Internal::AnyHash)
        end

      # Identifier of an exception type
      sig do
        returns(
          T.nilable(Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol)
        )
      end
      attr_reader :code

      sig do
        params(code: Telnyx::PortingOrdersExceptionType::Code::OrSymbol).void
      end
      attr_writer :code

      # Description of an exception type
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig do
        params(
          code: Telnyx::PortingOrdersExceptionType::Code::OrSymbol,
          description: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifier of an exception type
        code: nil,
        # Description of an exception type
        description: nil
      )
      end

      sig do
        override.returns(
          {
            code: Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol,
            description: String
          }
        )
      end
      def to_hash
      end

      # Identifier of an exception type
      module Code
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PortingOrdersExceptionType::Code)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT_NUMBER_MISMATCH =
          T.let(
            :ACCOUNT_NUMBER_MISMATCH,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        AUTH_PERSON_MISMATCH =
          T.let(
            :AUTH_PERSON_MISMATCH,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        BTN_ATN_MISMATCH =
          T.let(
            :BTN_ATN_MISMATCH,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        ENTITY_NAME_MISMATCH =
          T.let(
            :ENTITY_NAME_MISMATCH,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        FOC_EXPIRED =
          T.let(
            :FOC_EXPIRED,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        FOC_REJECTED =
          T.let(
            :FOC_REJECTED,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        LOCATION_MISMATCH =
          T.let(
            :LOCATION_MISMATCH,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        LSR_PENDING =
          T.let(
            :LSR_PENDING,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        MAIN_BTN_PORTING =
          T.let(
            :MAIN_BTN_PORTING,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        OSP_IRRESPONSIVE =
          T.let(
            :OSP_IRRESPONSIVE,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        OTHER =
          T.let(:OTHER, Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol)
        PASSCODE_PIN_INVALID =
          T.let(
            :PASSCODE_PIN_INVALID,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        PHONE_NUMBER_HAS_SPECIAL_FEATURE =
          T.let(
            :PHONE_NUMBER_HAS_SPECIAL_FEATURE,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        PHONE_NUMBER_MISMATCH =
          T.let(
            :PHONE_NUMBER_MISMATCH,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        PHONE_NUMBER_NOT_PORTABLE =
          T.let(
            :PHONE_NUMBER_NOT_PORTABLE,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        PORT_TYPE_INCORRECT =
          T.let(
            :PORT_TYPE_INCORRECT,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        PORTING_ORDER_SPLIT_REQUIRED =
          T.let(
            :PORTING_ORDER_SPLIT_REQUIRED,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        POSTAL_CODE_MISMATCH =
          T.let(
            :POSTAL_CODE_MISMATCH,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        RATE_CENTER_NOT_PORTABLE =
          T.let(
            :RATE_CENTER_NOT_PORTABLE,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        SV_CONFLICT =
          T.let(
            :SV_CONFLICT,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        SV_UNKNOWN_FAILURE =
          T.let(
            :SV_UNKNOWN_FAILURE,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
