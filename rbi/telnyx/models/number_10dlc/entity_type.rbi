# typed: strong

module Telnyx
  module Models
    module Number10dlc
      # Entity type behind the brand. This is the form of business establishment.
      module EntityType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Number10dlc::EntityType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRIVATE_PROFIT =
          T.let(:PRIVATE_PROFIT, Telnyx::Number10dlc::EntityType::TaggedSymbol)
        PUBLIC_PROFIT =
          T.let(:PUBLIC_PROFIT, Telnyx::Number10dlc::EntityType::TaggedSymbol)
        NON_PROFIT =
          T.let(:NON_PROFIT, Telnyx::Number10dlc::EntityType::TaggedSymbol)
        GOVERNMENT =
          T.let(:GOVERNMENT, Telnyx::Number10dlc::EntityType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::Number10dlc::EntityType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
