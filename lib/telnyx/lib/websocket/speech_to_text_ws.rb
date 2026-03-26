# frozen_string_literal: true

require "json"
require_relative "base"
require_relative "stt_server_event"
require_relative "speech_to_text_stream_params"
require_relative "websocket_error"

module Telnyx
  module Lib
    module WebSocket
      # WebSocket client for Speech-to-Text (STT) streaming transcription.
      #
      # This client establishes a WebSocket connection to the Telnyx STT API
      # for real-time audio transcription. Audio data is sent as binary frames
      # and transcription results are received as JSON events.
      #
      # Example usage:
      #
      #   client = Telnyx::Client.new(api_key: ENV["TELNYX_API_KEY"])
      #
      #   ws = Telnyx::Lib::WebSocket::SpeechToTextWS.new(client, {
      #     transcription_engine: "Deepgram",
      #     language: "en-US",
      #     input_format: "wav"
      #   })
      #
      #   ws.on(:transcript) do |event|
      #     puts "Transcript: #{event.transcript}" if event.is_final
      #   end
      #
      #   ws.on(:error) do |error|
      #     puts "Error: #{error.message}"
      #   end
      #
      #   ws.wait_for_open
      #
      #   # Send audio data
      #   File.open("audio.wav", "rb") do |f|
      #     while (chunk = f.read(4096))
      #       ws.send(chunk)
      #     end
      #   end
      #
      #   ws.close
      #
      class SpeechToTextWS < Base
        # The WebSocket API path for STT
        API_PATH = "/v2/speech-to-text/transcription"

        # @return [Telnyx::Client] The Telnyx client
        attr_reader :client

        # @return [SpeechToTextStreamParams] The stream parameters
        attr_reader :params

        # Create a new STT WebSocket connection.
        #
        # @param client [Telnyx::Client] The Telnyx client
        # @param params [Hash, SpeechToTextStreamParams] Stream configuration parameters
        # @param options [Hash] Additional WebSocket options
        # @option options [Hash] :headers Additional HTTP headers
        def initialize(client, params = nil, options = {})
          super()
          @client = client
          @params = normalize_params(params)
          @options = options

          @url = build_url(client, API_PATH, @params&.to_hash)
          connect
        end

        # Send binary audio data to the server for transcription.
        #
        # @param data [String] Raw audio bytes (mp3, wav, or raw format)
        # @return [void]
        # @raise [WebSocketError] If send fails
        def send(data)
          unless open?
            raise WebSocketError.new("Cannot send: WebSocket is not open")
          end

          begin
            @socket.send(data, type: :binary)
          rescue StandardError => e
            emit_error(nil, "could not send audio data", e)
          end
        end

        private

        def normalize_params(params)
          case params
          when nil
            nil
          when SpeechToTextStreamParams
            params
          when Hash
            SpeechToTextStreamParams.from_hash(params)
          else
            raise ArgumentError, "params must be a Hash or SpeechToTextStreamParams"
          end
        end

        def connect
          require("websocket-client-simple")

          headers = auth_headers(@client).merge(@options[:headers] || {})

          ws_self = self
          @socket = ::WebSocket::Client::Simple.connect(@url.to_s, headers: headers)

          @socket.on(:open) do
            ws_self.send(:mark_open)
          end

          @socket.on(:message) do |msg|
            ws_self.send(:handle_message, msg)
          end

          @socket.on(:error) do |e|
            ws_self.send(:emit_error, nil, e.message, e)
          end

          @socket.on(:close) do |e|
            code = begin
              e&.code
            rescue StandardError
              nil
            end
            reason = begin
              e&.reason
            rescue StandardError
              nil
            end
            ws_self.send(:mark_closed, code, reason)
          end
        end

        def handle_message(msg)
          # Parse the JSON message
          event = parse_event(msg)
          return unless event

          # Emit generic event
          emit(:event, event)

          # Emit type-specific event
          if event.error?
            emit_error(event.raw)
          elsif event.type
            emit(event.type.to_sym, event)
          end
        end

        def parse_event(msg)
          data = JSON.parse(msg.data)
          SttServerEvent.from_hash(data)
        rescue JSON::ParserError => e
          emit_error(nil, "could not parse websocket event", e)
          nil
        end
      end
    end
  end
end
