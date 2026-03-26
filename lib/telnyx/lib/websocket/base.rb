# frozen_string_literal: true

require "json"
require "uri"
require "cgi"

module Telnyx
  module Lib
    module WebSocket
      # Base class for WebSocket connections.
      #
      # This class provides the foundation for STT and TTS WebSocket clients,
      # including event handling, connection state management, and error handling.
      #
      # The class uses a simple event emitter pattern with block callbacks
      # for handling WebSocket events.
      #
      # Example usage:
      #
      #   class MyWS < Base
      #     def initialize(client)
      #       super()
      #       @client = client
      #     end
      #   end
      #
      #   ws = MyWS.new(client)
      #   ws.on(:message) { |data| puts data }
      #   ws.on(:error) { |error| puts error.message }
      #
      class Base
        # WebSocket ready states (matching WebSocket spec)
        CONNECTING = 0
        OPEN = 1
        CLOSING = 2
        CLOSED = 3

        # @return [Integer] Current connection state
        attr_reader :ready_state

        # @return [URI] The WebSocket URL
        attr_reader :url

        # @api private
        def initialize
          @listeners = Hash.new { |h, k| h[k] = [] }
          @ready_state = CONNECTING
          @socket = nil
          @mutex = Mutex.new
          @open_queue = ::Queue.new
        end

        # Register an event listener.
        #
        # @param event [Symbol, String] The event name to listen for
        # @yield [Object] Block to call when event is emitted
        # @return [self]
        #
        # Available events:
        # - :open - Connection established
        # - :message - Raw message received
        # - :event - Parsed event received
        # - :error - Error occurred
        # - :close - Connection closed
        # - Event-specific types (e.g., :transcript, :audio_chunk)
        def on(event, &block)
          @listeners[event.to_sym] << block
          self
        end

        # Remove an event listener.
        #
        # @param event [Symbol, String] The event name
        # @param block [Proc, nil] The specific block to remove, or nil to remove all
        # @return [self]
        def off(event, block = nil)
          if block
            @listeners[event.to_sym].delete(block)
          else
            @listeners.delete(event.to_sym)
          end
          self
        end

        # Check if the connection is open.
        #
        # @return [Boolean]
        def open?
          @ready_state == OPEN
        end

        # Check if the connection is connecting.
        #
        # @return [Boolean]
        def connecting?
          @ready_state == CONNECTING
        end

        # Check if the connection is closed.
        #
        # @return [Boolean]
        def closed?
          @ready_state == CLOSED || @ready_state == CLOSING
        end

        # Wait for the connection to be established.
        #
        # @param timeout [Numeric, nil] Maximum time to wait in seconds
        # @raise [WebSocketError] If connection fails or times out
        # @return [self]
        def wait_for_open(timeout: nil)
          return self if open?

          result = if timeout
            @open_queue.pop(timeout: timeout)
          else
            @open_queue.pop
          end

          if result.is_a?(Exception)
            raise result
          end

          self
        rescue ThreadError
          raise WebSocketError.new("Connection timed out")
        end

        # Close the WebSocket connection.
        #
        # @param code [Integer] Close status code (default: 1000 normal closure)
        # @param reason [String] Close reason
        # @return [void]
        # rubocop:disable Lint/UnusedMethodArgument
        def close(code: 1000, reason: "OK")
          return if closed?

          @ready_state = CLOSING
          begin
            @socket&.close
          rescue StandardError => e
            emit_error(nil, "could not close the connection", e)
          end
          @ready_state = CLOSED
        end
        # rubocop:enable Lint/UnusedMethodArgument

        protected

        # Emit an event to all registered listeners.
        #
        # @param event [Symbol] The event name
        # @param args [Array] Arguments to pass to listeners
        # @return [void]
        def emit(event, *args)
          @listeners[event.to_sym].each do |listener|
            listener.call(*args)
          rescue StandardError => e
            # Don't let listener errors crash the WebSocket
            warn("WebSocket listener error for #{event}: #{e.message}")
          end
        end

        # Check if there are listeners for an event.
        #
        # @param event [Symbol] The event name
        # @return [Boolean]
        def listener?(event)
          @listeners[event.to_sym].any?
        end

        # Emit an error event, handling missing error handlers.
        #
        # @param event_data [Hash, nil] Server error event data
        # @param message [String, nil] Error message
        # @param cause [StandardError, nil] Underlying exception
        # @return [void]
        def emit_error(event_data, message = nil, cause = nil)
          message ||= safe_json_stringify(event_data) || "unknown error"

          unless listener?(:error)
            error = WebSocketError.new(
              "#{message}\n\nTo handle errors, bind an `error` callback: ws.on(:error) { |e| ... }",
              error: event_data,
              cause: cause
            )
            warn("Unhandled WebSocket error: #{error.message}")
            return
          end

          error = WebSocketError.new(message, error: event_data, cause: cause)
          emit(:error, error)
        end

        # Mark the connection as open.
        #
        # @api private
        def mark_open
          @ready_state = OPEN
          emit(:open)
          @open_queue << :ok
        end

        # Mark the connection as closed.
        #
        # @api private
        def mark_closed(code = nil, reason = nil)
          @ready_state = CLOSED
          emit(:close, code, reason)
          @open_queue << :closed
        end

        # Build the WebSocket URL.
        #
        # @param client [Telnyx::Client] The Telnyx client
        # @param path [String] The API path
        # @param params [Hash, nil] Query parameters
        # @return [URI]
        def build_url(client, path, params = nil)
          base_url = client.base_url
          url = URI.parse(base_url + (base_url.end_with?("/") ? path[1..] : path))

          if params && !params.empty?
            query = params.map { |k, v| "#{CGI.escape(k.to_s)}=#{CGI.escape(v.to_s)}" }.join("&")
            url.query = query
          end

          # Convert to WebSocket protocol
          url.scheme = url.scheme == "http" ? "ws" : "wss"
          url
        end

        # Build authorization headers.
        #
        # @param client [Telnyx::Client] The Telnyx client
        # @return [Hash]
        def auth_headers(client)
          if client.api_key
            {"Authorization" => "Bearer #{client.api_key}"}
          else
            {}
          end
        end

        private

        # Safely stringify a value to JSON.
        #
        # @param value [Object] The value to stringify
        # @return [String, nil]
        def safe_json_stringify(value)
          return nil if value.nil?
          JSON.generate(value)
        rescue StandardError
          nil
        end
      end
    end
  end
end
