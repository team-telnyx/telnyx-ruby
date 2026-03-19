# typed: strong

module Telnyx
  module Models
    class StreamClientEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::StreamClientEvent, Telnyx::Internal::AnyHash)
        end

      # Text to convert to speech. Send `" "` (single space) as an initial handshake
      # with optional `voice_settings`. Subsequent messages contain the actual text to
      # synthesize.
      sig { returns(String) }
      attr_accessor :text

      # When `true`, stops the current synthesis worker and starts a new one. Used to
      # interrupt speech mid-stream and begin synthesizing new text.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :force

      sig { params(force: T::Boolean).void }
      attr_writer :force

      # Provider-specific voice settings sent with the initial handshake. Contents vary
      # by provider — e.g. `{"speed": 1.2}` for Minimax, `{"voice_speed": 1.5}` for
      # Telnyx.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :voice_settings

      sig { params(voice_settings: T::Hash[Symbol, T.anything]).void }
      attr_writer :voice_settings

      # Client-to-server frame containing text to synthesize.
      sig do
        params(
          text: String,
          force: T::Boolean,
          voice_settings: T::Hash[Symbol, T.anything]
        ).returns(T.attached_class)
      end
      def self.new(
        # Text to convert to speech. Send `" "` (single space) as an initial handshake
        # with optional `voice_settings`. Subsequent messages contain the actual text to
        # synthesize.
        text:,
        # When `true`, stops the current synthesis worker and starts a new one. Used to
        # interrupt speech mid-stream and begin synthesizing new text.
        force: nil,
        # Provider-specific voice settings sent with the initial handshake. Contents vary
        # by provider — e.g. `{"speed": 1.2}` for Minimax, `{"voice_speed": 1.5}` for
        # Telnyx.
        voice_settings: nil
      )
      end

      sig do
        override.returns(
          {
            text: String,
            force: T::Boolean,
            voice_settings: T::Hash[Symbol, T.anything]
          }
        )
      end
      def to_hash
      end
    end
  end
end
