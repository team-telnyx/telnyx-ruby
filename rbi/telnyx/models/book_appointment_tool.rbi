# typed: strong

module Telnyx
  module Models
    class BookAppointmentTool < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::BookAppointmentTool, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::BookAppointmentToolParams) }
      attr_reader :book_appointment

      sig do
        params(book_appointment: Telnyx::BookAppointmentToolParams::OrHash).void
      end
      attr_writer :book_appointment

      sig { returns(Telnyx::BookAppointmentTool::Type::OrSymbol) }
      attr_accessor :type

      sig do
        params(
          book_appointment: Telnyx::BookAppointmentToolParams::OrHash,
          type: Telnyx::BookAppointmentTool::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(book_appointment:, type:)
      end

      sig do
        override.returns(
          {
            book_appointment: Telnyx::BookAppointmentToolParams,
            type: Telnyx::BookAppointmentTool::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::BookAppointmentTool::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BOOK_APPOINTMENT =
          T.let(
            :book_appointment,
            Telnyx::BookAppointmentTool::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::BookAppointmentTool::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
