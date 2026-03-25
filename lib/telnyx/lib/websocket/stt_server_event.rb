# frozen_string_literal: true

module Telnyx
  module Lib
    module WebSocket
      # Server event types for Speech-to-Text WebSocket streaming.
      #
      # These events are received from the Telnyx STT WebSocket API
      # during real-time audio transcription.
      #
      # Example usage:
      #
      #   ws.on(:transcript) do |event|
      #     puts "Transcript: #{event.transcript}" if event.is_final
      #   end
      #
      #   ws.on(:error) do |event|
      #     puts "Error: #{event.error}"
      #   end
      #
      class SttServerEvent
        # @return [String] The event type ("transcript" or "error")
        attr_accessor :type

        # @return [String, nil] The transcribed text
        attr_accessor :transcript

        # @return [Boolean, nil] Whether this is a final transcript
        attr_accessor :is_final

        # @return [Float, nil] Confidence score (0.0 to 1.0)
        attr_accessor :confidence

        # @return [String, nil] Error message if type is "error"
        attr_accessor :error

        # @return [Float, nil] Start time offset in seconds
        attr_accessor :start

        # @return [Float, nil] Duration in seconds
        attr_accessor :duration

        # @return [Array<Hash>, nil] Word-level timing information
        attr_accessor :words

        # @return [String, nil] Detected language code
        attr_accessor :language

        # @return [String, nil] Speaker identifier for diarization
        attr_accessor :speaker

        # @return [Hash, nil] Original raw event data
        attr_accessor :raw

        # Create an SttServerEvent from a parsed JSON hash
        #
        # @param data [Hash] The parsed JSON event data
        # @return [SttServerEvent]
        def self.from_hash(data)
          event = new
          event.raw = data
          event.type = data["type"]
          event.transcript = data["transcript"]
          event.is_final = data["is_final"]
          event.confidence = data["confidence"]
          event.error = data["error"]
          event.start = data["start"]
          event.duration = data["duration"]
          event.words = data["words"]
          event.language = data["language"]
          event.speaker = data["speaker"]
          event
        end

        # Check if this is a final transcript
        #
        # @return [Boolean]
        def final?
          is_final == true
        end

        # Check if this is an error event
        #
        # @return [Boolean]
        def error?
          type == "error"
        end
      end
    end
  end
end
