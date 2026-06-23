# typed: strong

module Telnyx
  module Models
    module TermsOfService
      # Telnyx product the Terms of Service apply to.
      module TosProductType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::TermsOfService::TosProductType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BRANDED_CALLING =
          T.let(
            :branded_calling,
            Telnyx::TermsOfService::TosProductType::TaggedSymbol
          )
        NUMBER_REPUTATION =
          T.let(
            :number_reputation,
            Telnyx::TermsOfService::TosProductType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::TermsOfService::TosProductType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
