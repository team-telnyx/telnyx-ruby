# typed: strong

module Telnyx
  module Models
    # Setting for how costs for outbound profile are calculated.
    module UsagePaymentMethod
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::UsagePaymentMethod) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      RATE_DECK = T.let(:"rate-deck", Telnyx::UsagePaymentMethod::TaggedSymbol)

      sig do
        override.returns(T::Array[Telnyx::UsagePaymentMethod::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
