# typed: strong

module Telnyx
  module Models
    class CheckAvailabilityTool < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CheckAvailabilityTool, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::CheckAvailabilityToolParams) }
      attr_reader :check_availability

      sig do
        params(
          check_availability: Telnyx::CheckAvailabilityToolParams::OrHash
        ).void
      end
      attr_writer :check_availability

      sig { returns(Telnyx::CheckAvailabilityTool::Type::OrSymbol) }
      attr_accessor :type

      sig do
        params(
          check_availability: Telnyx::CheckAvailabilityToolParams::OrHash,
          type: Telnyx::CheckAvailabilityTool::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(check_availability:, type:)
      end

      sig do
        override.returns(
          {
            check_availability: Telnyx::CheckAvailabilityToolParams,
            type: Telnyx::CheckAvailabilityTool::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CheckAvailabilityTool::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHECK_AVAILABILITY =
          T.let(
            :check_availability,
            Telnyx::CheckAvailabilityTool::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CheckAvailabilityTool::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
