# typed: strong

module Telnyx
  module Models
    module Rcs
      class StockSymbolBrandIdentifier < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Rcs::StockSymbolBrandIdentifier,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Symbol) }
        attr_accessor :identifier_type

        # A stock symbol using EXCHANGE:SYMBOL.
        sig { returns(String) }
        attr_accessor :value

        sig do
          params(value: String, identifier_type: Symbol).returns(
            T.attached_class
          )
        end
        def self.new(
          # A stock symbol using EXCHANGE:SYMBOL.
          value:,
          identifier_type: :STOCK_SYMBOL
        )
        end

        sig { override.returns({ identifier_type: Symbol, value: String }) }
        def to_hash
        end
      end
    end
  end
end
