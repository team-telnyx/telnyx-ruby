# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      class StockSymbolBrandIdentifier < Telnyx::Internal::Type::BaseModel
        # @!attribute identifier_type
        #
        #   @return [Symbol, :STOCK_SYMBOL]
        required :identifier_type, const: :STOCK_SYMBOL

        # @!attribute value
        #   A stock symbol using EXCHANGE:SYMBOL.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(value:, identifier_type: :STOCK_SYMBOL)
        #   @param value [String] A stock symbol using EXCHANGE:SYMBOL.
        #
        #   @param identifier_type [Symbol, :STOCK_SYMBOL]
      end
    end
  end
end
