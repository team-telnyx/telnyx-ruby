# typed: strong

module Telnyx
  module Models
    # A port can be either 'full' or 'partial'. When type is 'full' the other
    # attributes should be omitted.
    module PortingOrderType
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::PortingOrderType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      FULL = T.let(:full, Telnyx::PortingOrderType::TaggedSymbol)
      PARTIAL = T.let(:partial, Telnyx::PortingOrderType::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::PortingOrderType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
