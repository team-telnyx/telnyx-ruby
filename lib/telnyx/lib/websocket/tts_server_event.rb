# frozen_string_literal: true

module Telnyx
  module Lib
    module WebSocket
      # Server event types for Text-to-Speech WebSocket streaming.
      #
      # These events are received from the Telnyx TTS WebSocket API
      # during real-time speech synthesis.
      #
      # Example usage:
      #
      #   ws.on(:audio_chunk) do |event|
      #     audio_data = Base64.decode64(event.audio)
      #     # Process audio chunk
      #   end
      #
      #   ws.on(:final) do |event|
      #     puts "Stream complete"
      #   end
      #
      class TtsServerEvent
        # @return [String] The event type ("audio_chunk", "final", or "error")
        attr_accessor :type

        # @return [String, nil] Base64-encoded audio data
        attr_accessor :audio

        # @return [String, nil] The text being synthesized
        attr_accessor :text

        # @return [Boolean, nil] Whether this is the final event
        attr_accessor :is_final

        # @return [Boolean, nil] Whether the response was served from cache
        attr_accessor :cached

        # @return [Integer, nil] Time in milliseconds to first audio frame
        attr_accessor :time_to_first_audio_frame_ms

        # @return [String, nil] Error message if type is "error"
        attr_accessor :error

        # @return [String, nil] Audio encoding format (e.g., "mp3", "pcm")
        attr_accessor :encoding

        # @return [Integer, nil] Sample rate in Hz
        attr_accessor :sample_rate

        # @return [Integer, nil] Sequence number for ordering
        attr_accessor :sequence

        # @return [Hash, nil] Original raw event data
        attr_accessor :raw

        # Create a TtsServerEvent from a parsed JSON hash
        #
        # @param data [Hash] The parsed JSON event data
        # @return [TtsServerEvent]
        def self.from_hash(data)
          event = new
          event.raw = data
          event.type = data["type"]
          event.audio = data["audio"]
          event.text = data["text"]
          event.is_final = data["is_final"]
          event.cached = data["cached"]
          event.time_to_first_audio_frame_ms = data["time_to_first_audio_frame_ms"]
          event.error = data["error"]
          event.encoding = data["encoding"]
          event.sample_rate = data["sample_rate"]
          event.sequence = data["sequence"]
          event
        end

        # Check if this is the final event
        #
        # @return [Boolean]
        def final?
          type == "final" || is_final == true
        end

        # Check if this is an error event
        #
        # @return [Boolean]
        def error?
          type == "error"
        end

        # Check if this is an audio chunk
        #
        # @return [Boolean]
        def audio_chunk?
          type == "audio_chunk"
        end

        # Decode the audio data from Base64
        #
        # @return [String, nil] Raw audio bytes, or nil if no audio data
        def decode_audio
          return nil unless audio
          require("base64")
          Base64.decode64(audio)
        end
      end
    end
  end
end
