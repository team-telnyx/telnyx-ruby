# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      module BrandIdentifier
        extend Telnyx::Internal::Type::Union

        discriminator :identifier_type

        variant :EIN, -> { Telnyx::Rcs::EinBrandIdentifier }

        variant :STOCK_SYMBOL, -> { Telnyx::Rcs::StockSymbolBrandIdentifier }

        # @!method self.variants
        #   @return [Array(Telnyx::Models::Rcs::EinBrandIdentifier, Telnyx::Models::Rcs::StockSymbolBrandIdentifier)]
      end
    end
  end
end
