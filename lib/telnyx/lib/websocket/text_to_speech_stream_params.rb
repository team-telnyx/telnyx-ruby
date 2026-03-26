# frozen_string_literal: true

module Telnyx
  module Lib
    module WebSocket
      # Parameters for configuring Text-to-Speech WebSocket streaming.
      #
      # These parameters are passed as query string parameters when
      # establishing the WebSocket connection.
      #
      # Example usage:
      #
      #   params = TextToSpeechStreamParams.new(
      #     voice: "telnyx.NaturalHD.Alloy",
      #     output_format: "mp3"
      #   )
      #   url = params.to_query_string
      #
      class TextToSpeechStreamParams
        # @return [String, nil] The voice to use (e.g., "telnyx.NaturalHD.Alloy")
        attr_accessor :voice

        # @return [String, nil] The audio output format (e.g., "mp3", "pcm", "wav")
        attr_accessor :output_format

        # @return [Integer, nil] Sample rate in Hz (e.g., 22050, 24000)
        attr_accessor :sample_rate

        # @return [String, nil] Language code (e.g., "en-US")
        attr_accessor :language

        # @return [Float, nil] Speaking rate/speed multiplier (0.5 to 2.0)
        attr_accessor :speed

        # @return [Float, nil] Pitch adjustment (-20.0 to 20.0)
        attr_accessor :pitch

        # @return [String, nil] TTS model to use
        attr_accessor :model

        # @return [String, nil] Client reference identifier
        attr_accessor :client_ref

        # Create params from a hash
        #
        # @param options [Hash] The parameter options
        # @return [TextToSpeechStreamParams]
        def self.from_hash(options)
          params = new
          params.voice = options[:voice] || options["voice"]
          params.output_format = options[:output_format] || options["output_format"]
          params.sample_rate = options[:sample_rate] || options["sample_rate"]
          params.language = options[:language] || options["language"]
          params.speed = options[:speed] || options["speed"]
          params.pitch = options[:pitch] || options["pitch"]
          params.model = options[:model] || options["model"]
          params.client_ref = options[:client_ref] || options["client_ref"]
          params
        end

        # Convert to a hash for URL encoding
        #
        # @return [Hash] The params as a hash with string keys
        def to_hash
          hash = {}
          hash["voice"] = voice if voice
          hash["output_format"] = output_format if output_format
          hash["sample_rate"] = sample_rate.to_s if sample_rate
          hash["language"] = language if language
          hash["speed"] = speed.to_s if speed
          hash["pitch"] = pitch.to_s if pitch
          hash["model"] = model if model
          hash["client_ref"] = client_ref if client_ref
          hash
        end

        # Convert to URL query string
        #
        # @return [String]
        def to_query_string
          require("cgi")
          to_hash.map { |k, v| "#{CGI.escape(k)}=#{CGI.escape(v.to_s)}" }.join("&")
        end
      end
    end
  end
end
