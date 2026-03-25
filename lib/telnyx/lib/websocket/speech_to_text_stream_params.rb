# frozen_string_literal: true

module Telnyx
  module Lib
    module WebSocket
      # Parameters for configuring Speech-to-Text WebSocket streaming.
      #
      # These parameters are passed as query string parameters when
      # establishing the WebSocket connection.
      #
      # Example usage:
      #
      #   params = SpeechToTextStreamParams.new(
      #     transcription_engine: "Deepgram",
      #     language: "en-US",
      #     input_format: "wav"
      #   )
      #   url = params.to_query_string
      #
      class SpeechToTextStreamParams
        # @return [String, nil] The transcription engine to use (e.g., "Deepgram", "Google", "Telnyx")
        attr_accessor :transcription_engine

        # @return [String, nil] The language code (e.g., "en-US", "es-ES")
        attr_accessor :language

        # @return [String, nil] The audio input format (e.g., "wav", "mp3", "raw")
        attr_accessor :input_format

        # @return [Integer, nil] Sample rate in Hz (e.g., 8000, 16000)
        attr_accessor :sample_rate

        # @return [Boolean, nil] Enable interim/partial results
        attr_accessor :interim_results

        # @return [Boolean, nil] Enable automatic punctuation
        attr_accessor :punctuate

        # @return [Boolean, nil] Enable profanity filtering
        attr_accessor :profanity_filter

        # @return [Boolean, nil] Enable speaker diarization
        attr_accessor :diarize

        # @return [Integer, nil] Number of speakers for diarization
        attr_accessor :diarize_speakers

        # @return [String, nil] Custom vocabulary or model name
        attr_accessor :model

        # @return [Array<String>, nil] Keywords to boost recognition
        attr_accessor :keywords

        # @return [String, nil] Client reference identifier
        attr_accessor :client_ref

        # Create params from a hash
        #
        # @param options [Hash] The parameter options
        # @return [SpeechToTextStreamParams]
        def self.from_hash(options)
          params = new
          params.transcription_engine = options[:transcription_engine] || options["transcription_engine"]
          params.language = options[:language] || options["language"]
          params.input_format = options[:input_format] || options["input_format"]
          params.sample_rate = options[:sample_rate] || options["sample_rate"]
          params.interim_results = options[:interim_results] || options["interim_results"]
          params.punctuate = options[:punctuate] || options["punctuate"]
          params.profanity_filter = options[:profanity_filter] || options["profanity_filter"]
          params.diarize = options[:diarize] || options["diarize"]
          params.diarize_speakers = options[:diarize_speakers] || options["diarize_speakers"]
          params.model = options[:model] || options["model"]
          params.keywords = options[:keywords] || options["keywords"]
          params.client_ref = options[:client_ref] || options["client_ref"]
          params
        end

        # Convert to a hash for URL encoding
        #
        # @return [Hash] The params as a hash with string keys
        def to_hash
          hash = {}
          hash["transcription_engine"] = transcription_engine if transcription_engine
          hash["language"] = language if language
          hash["input_format"] = input_format if input_format
          hash["sample_rate"] = sample_rate.to_s if sample_rate
          hash["interim_results"] = interim_results.to_s unless interim_results.nil?
          hash["punctuate"] = punctuate.to_s unless punctuate.nil?
          hash["profanity_filter"] = profanity_filter.to_s unless profanity_filter.nil?
          hash["diarize"] = diarize.to_s unless diarize.nil?
          hash["diarize_speakers"] = diarize_speakers.to_s if diarize_speakers
          hash["model"] = model if model
          hash["keywords"] = keywords.join(",") if keywords && !keywords.empty?
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
