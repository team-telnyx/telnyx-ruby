# typed: strong

module Telnyx
  module Models
    # An enumeration.
    module AltBusinessIDType
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::AltBusinessIDType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      NONE = T.let(:NONE, Telnyx::AltBusinessIDType::TaggedSymbol)
      DUNS = T.let(:DUNS, Telnyx::AltBusinessIDType::TaggedSymbol)
      GIIN = T.let(:GIIN, Telnyx::AltBusinessIDType::TaggedSymbol)
      LEI = T.let(:LEI, Telnyx::AltBusinessIDType::TaggedSymbol)

      sig do
        override.returns(T::Array[Telnyx::AltBusinessIDType::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
