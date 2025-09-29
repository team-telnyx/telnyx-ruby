# typed: strong

module Telnyx
  module Models
    # An enumeration.
    module CloudflareSyncStatus
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Telnyx::CloudflareSyncStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING = T.let(:pending, Telnyx::CloudflareSyncStatus::TaggedSymbol)
      ADDED = T.let(:added, Telnyx::CloudflareSyncStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[Telnyx::CloudflareSyncStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
