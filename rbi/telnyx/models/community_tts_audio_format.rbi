# typed: strong

module Telnyx
  module Models
    # An audio format an engine can produce. Offer `linear16`: it serves every
    # surface. Telnyx converts `linear16` to MP3 for the commands that play MP3.
    module CommunityTtsAudioFormat
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Telnyx::CommunityTtsAudioFormat) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      MP3 = T.let(:mp3, Telnyx::CommunityTtsAudioFormat::TaggedSymbol)
      LINEAR16 = T.let(:linear16, Telnyx::CommunityTtsAudioFormat::TaggedSymbol)
      WAV = T.let(:wav, Telnyx::CommunityTtsAudioFormat::TaggedSymbol)
      MULAW = T.let(:mulaw, Telnyx::CommunityTtsAudioFormat::TaggedSymbol)
      ALAW = T.let(:alaw, Telnyx::CommunityTtsAudioFormat::TaggedSymbol)
      OGG_VORBIS =
        T.let(:ogg_vorbis, Telnyx::CommunityTtsAudioFormat::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Telnyx::CommunityTtsAudioFormat::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
