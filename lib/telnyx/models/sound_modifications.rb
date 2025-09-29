# frozen_string_literal: true

module Telnyx
  module Models
    class SoundModifications < Telnyx::Internal::Type::BaseModel
      # @!attribute octaves
      #   Adjust the pitch in octaves, values should be between -1 and 1, default 0
      #
      #   @return [Float, nil]
      optional :octaves, Float

      # @!attribute pitch
      #   Set the pitch directly, value should be > 0, default 1 (lower = lower tone)
      #
      #   @return [Float, nil]
      optional :pitch, Float

      # @!attribute semitone
      #   Adjust the pitch in semitones, values should be between -14 and 14, default 0
      #
      #   @return [Float, nil]
      optional :semitone, Float

      # @!attribute track
      #   The track to which the sound modifications will be applied. Accepted values are
      #   `inbound` or `outbound`
      #
      #   @return [String, nil]
      optional :track, String

      # @!method initialize(octaves: nil, pitch: nil, semitone: nil, track: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SoundModifications} for more details.
      #
      #   Use this field to modify sound effects, for example adjust the pitch.
      #
      #   @param octaves [Float] Adjust the pitch in octaves, values should be between -1 and 1, default 0
      #
      #   @param pitch [Float] Set the pitch directly, value should be > 0, default 1 (lower = lower tone)
      #
      #   @param semitone [Float] Adjust the pitch in semitones, values should be between -14 and 14, default 0
      #
      #   @param track [String] The track to which the sound modifications will be applied. Accepted values are
    end
  end
end
