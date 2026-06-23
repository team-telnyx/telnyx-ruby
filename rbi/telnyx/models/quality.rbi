# typed: strong

module Telnyx
  module Models
    # The quality of the fax. The `ultra` settings provides the highest quality
    # available, but also present longer fax processing times. `ultra_light` is best
    # suited for images, wihle `ultra_dark` is best suited for text.
    module Quality
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::Quality) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      NORMAL = T.let(:normal, Telnyx::Quality::TaggedSymbol)
      HIGH = T.let(:high, Telnyx::Quality::TaggedSymbol)
      VERY_HIGH = T.let(:very_high, Telnyx::Quality::TaggedSymbol)
      ULTRA_LIGHT = T.let(:ultra_light, Telnyx::Quality::TaggedSymbol)
      ULTRA_DARK = T.let(:ultra_dark, Telnyx::Quality::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::Quality::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
