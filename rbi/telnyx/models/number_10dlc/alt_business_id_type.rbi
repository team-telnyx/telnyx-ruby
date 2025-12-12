# typed: strong

module Telnyx
  module Models
    module Number10dlc
      # An enumeration.
      module AltBusinessIDType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Number10dlc::AltBusinessIDType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NONE =
          T.let(:NONE, Telnyx::Number10dlc::AltBusinessIDType::TaggedSymbol)
        DUNS =
          T.let(:DUNS, Telnyx::Number10dlc::AltBusinessIDType::TaggedSymbol)
        GIIN =
          T.let(:GIIN, Telnyx::Number10dlc::AltBusinessIDType::TaggedSymbol)
        LEI = T.let(:LEI, Telnyx::Number10dlc::AltBusinessIDType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::Number10dlc::AltBusinessIDType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
