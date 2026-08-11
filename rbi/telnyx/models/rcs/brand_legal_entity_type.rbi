# typed: strong

module Telnyx
  module Models
    module Rcs
      module BrandLegalEntityType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Rcs::BrandLegalEntityType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LIMITED_LIABILITY_COMPANY =
          T.let(
            :LIMITED_LIABILITY_COMPANY,
            Telnyx::Rcs::BrandLegalEntityType::TaggedSymbol
          )
        SOLE_PROPRIETORSHIP =
          T.let(
            :SOLE_PROPRIETORSHIP,
            Telnyx::Rcs::BrandLegalEntityType::TaggedSymbol
          )
        PARTNERSHIP =
          T.let(:PARTNERSHIP, Telnyx::Rcs::BrandLegalEntityType::TaggedSymbol)
        CORPORATION =
          T.let(:CORPORATION, Telnyx::Rcs::BrandLegalEntityType::TaggedSymbol)
        S_CORPORATION =
          T.let(:S_CORPORATION, Telnyx::Rcs::BrandLegalEntityType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::Rcs::BrandLegalEntityType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
