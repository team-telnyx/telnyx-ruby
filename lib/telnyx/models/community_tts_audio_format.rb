# frozen_string_literal: true

module Telnyx
  module Models
    # An audio format an engine can produce. Offer `linear16`: it serves every
    # surface. Telnyx converts `linear16` to MP3 for the commands that play MP3.
    module CommunityTtsAudioFormat
      extend Telnyx::Internal::Type::Enum

      MP3 = :mp3
      LINEAR16 = :linear16
      WAV = :wav
      MULAW = :mulaw
      ALAW = :alaw
      OGG_VORBIS = :ogg_vorbis

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
