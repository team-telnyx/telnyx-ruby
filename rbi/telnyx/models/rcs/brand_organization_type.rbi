# typed: strong

module Telnyx
  module Models
    module Rcs
      module BrandOrganizationType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Rcs::BrandOrganizationType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRIVATE_PROFIT =
          T.let(
            :PRIVATE_PROFIT,
            Telnyx::Rcs::BrandOrganizationType::TaggedSymbol
          )
        PUBLIC_PROFIT =
          T.let(
            :PUBLIC_PROFIT,
            Telnyx::Rcs::BrandOrganizationType::TaggedSymbol
          )
        NON_PROFIT =
          T.let(:NON_PROFIT, Telnyx::Rcs::BrandOrganizationType::TaggedSymbol)
        GOVERNMENT =
          T.let(:GOVERNMENT, Telnyx::Rcs::BrandOrganizationType::TaggedSymbol)
        UNKNOWN =
          T.let(:UNKNOWN, Telnyx::Rcs::BrandOrganizationType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::Rcs::BrandOrganizationType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
