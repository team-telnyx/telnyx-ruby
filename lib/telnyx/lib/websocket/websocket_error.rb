# frozen_string_literal: true

module Telnyx
  module Lib
    module WebSocket
      # Error class for WebSocket-related errors in STT/TTS streaming.
      #
      # This error is raised when WebSocket connections encounter issues,
      # including connection failures, message parsing errors, and
      # server-side error events.
      #
      # Example usage:
      #
      #   ws.on(:error) do |error|
      #     puts "WebSocket error: #{error.message}"
      #     puts "Server error: #{error.error}" if error.error
      #   end
      #
      class WebSocketError < Telnyx::Errors::Error
        # @return [Hash, nil] The error data sent by the server in an error event
        attr_reader :error

        # @return [StandardError, nil] The underlying cause of this error
        attr_reader :cause

        # @api private
        #
        # @param message [String] Human-readable error message
        # @param error [Hash, nil] Server error event data
        # @param cause [StandardError, nil] The underlying exception that caused this error
        def initialize(message, error: nil, cause: nil)
          @error = error
          @cause = cause
          super(message)
        end
      end
    end
  end
end
