# frozen_string_literal: true

require "json"
require_relative "base"
require_relative "tts_server_event"
require_relative "text_to_speech_stream_params"
require_relative "websocket_error"

module Telnyx
  module Lib
    module WebSocket
      # WebSocket stream message types for async iteration.
      #
      # @api private
      StreamMessage = Struct.new(:type, :message, :error)

      # WebSocket client for Text-to-Speech (TTS) streaming synthesis.
      #
      # This client establishes a WebSocket connection to the Telnyx TTS API
      # for real-time speech synthesis. Text input events are sent as JSON
      # and audio chunks are received as events.
      #
      # Example usage with event callbacks:
      #
      #   client = Telnyx::Client.new(api_key: ENV["TELNYX_API_KEY"])
      #
      #   ws = Telnyx::Lib::WebSocket::TextToSpeechWS.new(client, {
      #     voice: "telnyx.NaturalHD.Alloy"
      #   })
      #
      #   ws.on(:audio_chunk) do |event|
      #     audio = event.decode_audio
      #     # Process audio chunk
      #   end
      #
      #   ws.on(:final) do |event|
      #     puts "Synthesis complete"
      #   end
      #
      #   ws.wait_for_open
      #   ws.send({ type: "text", text: "Hello, world!" })
      #   ws.send({ type: "flush" })
      #
      # Example usage with Enumerable pattern:
      #
      #   ws.each do |msg|
      #     case msg.type
      #     when :message
      #       event = msg.message
      #       if event.audio_chunk?
      #         # Process audio
      #       end
      #     when :error
      #       puts "Error: #{msg.error.message}"
      #     when :close
      #       break
      #     end
      #   end
      #
      class TextToSpeechWS < Base
        include Enumerable

        # The WebSocket API path for TTS
        API_PATH = "/v2/text-to-speech/speech"

        # @return [Telnyx::Client] The Telnyx client
        attr_reader :client

        # @return [TextToSpeechStreamParams, nil] The stream parameters
        attr_reader :params

        # Create a new TTS WebSocket connection.
        #
        # @param client [Telnyx::Client] The Telnyx client
        # @param params [Hash, TextToSpeechStreamParams, nil] Stream configuration parameters
        # @param options [Hash] Additional WebSocket options
        # @option options [Hash] :headers Additional HTTP headers
        def initialize(client, params = nil, options = {})
          super()
          @client = client
          @params = normalize_params(params)
          @options = options
          @stream_queue = nil # Will be a ::Queue
          @streaming = false

          @url = build_url(client, API_PATH, @params&.to_hash)
          connect
        end

        # Send a text input event to the server for synthesis.
        #
        # @param event [Hash] The event to send
        # @option event [String] :type Event type ("text", "flush", "close")
        # @option event [String] :text The text to synthesize (for type: "text")
        # @return [void]
        # @raise [WebSocketError] If send fails
        #
        # Event types:
        # - { type: "text", text: "Hello" } - Add text to synthesize
        # - { type: "flush" } - Flush buffered text and generate audio
        # - { type: "close" } - Signal end of input
        def send(event)
          unless open?
            raise WebSocketError.new("Cannot send: WebSocket is not open")
          end

          begin
            json_data = event.is_a?(String) ? event : JSON.generate(event)
            @socket.send(json_data, type: :text)
          rescue StandardError => e
            emit_error(nil, "could not send data", e)
          end
        end

        # Iterate over WebSocket events using the Enumerable pattern.
        #
        # This provides an alternative to the callback-based `.on()` API.
        # The iterator yields StreamMessage structs with :type, :message, and :error.
        #
        # @yield [StreamMessage] Each event as a StreamMessage
        # @yieldparam msg [StreamMessage] The stream message
        # @yieldparam msg.type [Symbol] One of :connecting, :open, :closing, :close, :message, :error
        # @yieldparam msg.message [TtsServerEvent, nil] The parsed event (for :message type)
        # @yieldparam msg.error [WebSocketError, nil] The error (for :error type)
        # @return [Enumerator] If no block given
        #
        # Example:
        #
        #   ws.each do |msg|
        #     case msg.type
        #     when :message
        #       puts msg.message.type
        #     when :close
        #       break
        #     end
        #   end
        # rubocop:disable Lint/UnusedMethodArgument
        def each(&block)
          return to_enum(:each) unless block_given?
          # rubocop:enable Lint/UnusedMethodArgument

          @stream_queue = ::Queue.new
          @streaming = true

          # Set up event forwarding
          setup_streaming

          # Yield initial state
          case @ready_state
          when CONNECTING
            yield(StreamMessage.new(type: :connecting))
          when OPEN
            yield(StreamMessage.new(type: :open))
          when CLOSING
            yield(StreamMessage.new(type: :closing))
          when CLOSED
            yield(StreamMessage.new(type: :close))
            return
          end

          # Process events from the queue
          loop do
            msg = @stream_queue.pop
            break if msg.nil? || (msg.type == :close)

            yield(msg)

            break if msg.type == :close
          end
        ensure
          @streaming = false
          @stream_queue = nil
        end

        # Alias for each - provides async iterator semantics
        #
        # @return [Enumerator]
        def stream
          each
        end

        private

        def normalize_params(params)
          case params
          when nil
            nil
          when TextToSpeechStreamParams
            params
          when Hash
            TextToSpeechStreamParams.from_hash(params)
          else
            raise ArgumentError, "params must be a Hash or TextToSpeechStreamParams"
          end
        end

        def connect
          require("websocket-client-simple")

          headers = auth_headers(@client).merge(@options[:headers] || {})

          ws_self = self
          @socket = ::WebSocket::Client::Simple.connect(@url.to_s, headers: headers)

          @socket.on(:open) do
            ws_self.send(:handle_open)
          end

          @socket.on(:message) do |msg|
            ws_self.send(:handle_message, msg)
          end

          @socket.on(:error) do |e|
            ws_self.send(:handle_socket_error, e)
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
            ws_self.send(:handle_close, code, reason)
          end
        end

        def handle_open
          mark_open
          push_stream_message(StreamMessage.new(type: :open)) if @streaming
        end

        def handle_message(msg)
          # Parse the JSON message
          event = parse_event(msg)
          return unless event

          # Emit generic event
          emit(:event, event)

          # Push to stream queue if streaming
          push_stream_message(StreamMessage.new(type: :message, message: event)) if @streaming

          # Emit type-specific event
          if event.error?
            error = WebSocketError.new(event.error || "Server error", error: event.raw)
            emit(:error, error)
            push_stream_message(StreamMessage.new(type: :error, error: error)) if @streaming
          elsif event.type
            emit(event.type.to_sym, event)
          end
        end

        def parse_event(msg)
          data = JSON.parse(msg.data)
          TtsServerEvent.from_hash(data)
        rescue JSON::ParserError => e
          emit_error(nil, "could not parse websocket event", e)
          nil
        end

        def handle_socket_error(e)
          emit_error(nil, e.message, e)
          return unless @streaming
          error = WebSocketError.new(e.message, cause: e)
          push_stream_message(StreamMessage.new(type: :error, error: error))
        end

        def handle_close(code, reason)
          mark_closed(code, reason)
          push_stream_message(StreamMessage.new(type: :close)) if @streaming
        end

        def push_stream_message(msg)
          @stream_queue&.push(msg)
        end

        def setup_streaming
          # The streaming is already set up via handle_* methods
          # This method exists for potential future enhancements
        end
      end
    end
  end
end
