# typed: strong

module Telnyx
  module Models
    # Specifies the codec to be used for the streamed audio. When set to 'default' or
    # when transcoding is not possible, the codec from the call will be used.
    module StreamCodec
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::StreamCodec) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PCMU = T.let(:PCMU, Telnyx::StreamCodec::TaggedSymbol)
      PCMA = T.let(:PCMA, Telnyx::StreamCodec::TaggedSymbol)
      G722 = T.let(:G722, Telnyx::StreamCodec::TaggedSymbol)
      OPUS = T.let(:OPUS, Telnyx::StreamCodec::TaggedSymbol)
      AMR_WB = T.let(:"AMR-WB", Telnyx::StreamCodec::TaggedSymbol)
      L16 = T.let(:L16, Telnyx::StreamCodec::TaggedSymbol)
      DEFAULT = T.let(:default, Telnyx::StreamCodec::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::StreamCodec::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
