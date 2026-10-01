# typed: strong

module Telnyx
  module Models
    # `daily` is the current UTC day; `monthly` is the current UTC calendar month.
    module SpendLimitPeriod
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::SpendLimitPeriod) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DAILY = T.let(:daily, Telnyx::SpendLimitPeriod::TaggedSymbol)
      MONTHLY = T.let(:monthly, Telnyx::SpendLimitPeriod::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::SpendLimitPeriod::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
