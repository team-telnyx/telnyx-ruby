# typed: strong

module Telnyx
  module Models
    # Indicates codec for bidirectional streaming RTP payloads. Used only with
    # stream_bidirectional_mode=rtp. Case sensitive.
    module StreamBidirectionalCodec
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Telnyx::StreamBidirectionalCodec) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PCMU = T.let(:PCMU, Telnyx::StreamBidirectionalCodec::TaggedSymbol)
      PCMA = T.let(:PCMA, Telnyx::StreamBidirectionalCodec::TaggedSymbol)
      G722 = T.let(:G722, Telnyx::StreamBidirectionalCodec::TaggedSymbol)
      OPUS = T.let(:OPUS, Telnyx::StreamBidirectionalCodec::TaggedSymbol)
      AMR_WB = T.let(:"AMR-WB", Telnyx::StreamBidirectionalCodec::TaggedSymbol)
      L16 = T.let(:L16, Telnyx::StreamBidirectionalCodec::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Telnyx::StreamBidirectionalCodec::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
