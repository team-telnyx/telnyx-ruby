# typed: strong

module Telnyx
  module Models
    # Specifies which call legs should receive the bidirectional stream audio.
    module StreamBidirectionalTargetLegs
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Telnyx::StreamBidirectionalTargetLegs) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BOTH = T.let(:both, Telnyx::StreamBidirectionalTargetLegs::TaggedSymbol)
      SELF = T.let(:self, Telnyx::StreamBidirectionalTargetLegs::TaggedSymbol)
      OPPOSITE =
        T.let(:opposite, Telnyx::StreamBidirectionalTargetLegs::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Telnyx::StreamBidirectionalTargetLegs::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
