# typed: strong

module Telnyx
  module Models
    module Rcs
      module BrandIdentifier
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::Rcs::EinBrandIdentifier,
              Telnyx::Rcs::StockSymbolBrandIdentifier
            )
          end

        sig do
          override.returns(T::Array[Telnyx::Rcs::BrandIdentifier::Variants])
        end
        def self.variants
        end
      end
    end
  end
end
