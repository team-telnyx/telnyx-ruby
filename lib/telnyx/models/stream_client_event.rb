# frozen_string_literal: true

module Telnyx
  module Models
    class StreamClientEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute text
      #   Text to convert to speech. Send `" "` (single space) as an initial handshake
      #   with optional `voice_settings`. Subsequent messages contain the actual text to
      #   synthesize.
      #
      #   @return [String]
      required :text, String

      # @!attribute force
      #   When `true`, stops the current synthesis worker and starts a new one. Used to
      #   interrupt speech mid-stream and begin synthesizing new text.
      #
      #   @return [Boolean, nil]
      optional :force, Telnyx::Internal::Type::Boolean

      # @!attribute voice_settings
      #   Provider-specific voice settings sent with the initial handshake. Contents vary
      #   by provider — e.g. `{"speed": 1.2}` for Minimax, `{"voice_speed": 1.5}` for
      #   Telnyx.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :voice_settings, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!method initialize(text:, force: nil, voice_settings: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::StreamClientEvent} for more details.
      #
      #   Client-to-server frame containing text to synthesize.
      #
      #   @param text [String] Text to convert to speech. Send `" "` (single space) as an initial handshake wit
      #
      #   @param force [Boolean] When `true`, stops the current synthesis worker and starts a new one. Used to in
      #
      #   @param voice_settings [Hash{Symbol=>Object}] Provider-specific voice settings sent with the initial handshake. Contents vary
    end
  end
end
