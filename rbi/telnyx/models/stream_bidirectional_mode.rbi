# typed: strong

module Telnyx
  module Models
    # Configures method of bidirectional streaming (mp3, rtp).
    module StreamBidirectionalMode
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Telnyx::StreamBidirectionalMode) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      MP3 = T.let(:mp3, Telnyx::StreamBidirectionalMode::TaggedSymbol)
      RTP = T.let(:rtp, Telnyx::StreamBidirectionalMode::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Telnyx::StreamBidirectionalMode::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
