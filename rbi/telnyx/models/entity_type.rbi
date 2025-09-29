# typed: strong

module Telnyx
  module Models
    # Entity type behind the brand. This is the form of business establishment.
    module EntityType
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::EntityType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PRIVATE_PROFIT = T.let(:PRIVATE_PROFIT, Telnyx::EntityType::TaggedSymbol)
      PUBLIC_PROFIT = T.let(:PUBLIC_PROFIT, Telnyx::EntityType::TaggedSymbol)
      NON_PROFIT = T.let(:NON_PROFIT, Telnyx::EntityType::TaggedSymbol)
      GOVERNMENT = T.let(:GOVERNMENT, Telnyx::EntityType::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::EntityType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
