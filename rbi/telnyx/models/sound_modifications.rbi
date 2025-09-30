# typed: strong

module Telnyx
  module Models
    class SoundModifications < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::SoundModifications, Telnyx::Internal::AnyHash)
        end

      # Adjust the pitch in octaves, values should be between -1 and 1, default 0
      sig { returns(T.nilable(Float)) }
      attr_reader :octaves

      sig { params(octaves: Float).void }
      attr_writer :octaves

      # Set the pitch directly, value should be > 0, default 1 (lower = lower tone)
      sig { returns(T.nilable(Float)) }
      attr_reader :pitch

      sig { params(pitch: Float).void }
      attr_writer :pitch

      # Adjust the pitch in semitones, values should be between -14 and 14, default 0
      sig { returns(T.nilable(Float)) }
      attr_reader :semitone

      sig { params(semitone: Float).void }
      attr_writer :semitone

      # The track to which the sound modifications will be applied. Accepted values are
      # `inbound` or `outbound`
      sig { returns(T.nilable(String)) }
      attr_reader :track

      sig { params(track: String).void }
      attr_writer :track

      # Use this field to modify sound effects, for example adjust the pitch.
      sig do
        params(
          octaves: Float,
          pitch: Float,
          semitone: Float,
          track: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Adjust the pitch in octaves, values should be between -1 and 1, default 0
        octaves: nil,
        # Set the pitch directly, value should be > 0, default 1 (lower = lower tone)
        pitch: nil,
        # Adjust the pitch in semitones, values should be between -14 and 14, default 0
        semitone: nil,
        # The track to which the sound modifications will be applied. Accepted values are
        # `inbound` or `outbound`
        track: nil
      )
      end

      sig do
        override.returns(
          { octaves: Float, pitch: Float, semitone: Float, track: String }
        )
      end
      def to_hash
      end
    end
  end
end
