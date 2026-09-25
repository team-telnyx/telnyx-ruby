# typed: strong

module Telnyx
  module Resources
    class MeetingSessions
      # Send real-time speech and chat actions to an active meeting session.
      class Actions
        # Sends a chat message into a meeting session.
        sig do
          params(
            id: String,
            text: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::MeetingSessions::ActionAcceptedResponse)
        end
        def send_chat(
          # Unique identifier for the meeting session.
          id,
          # Chat message text to send in the meeting.
          text:,
          request_options: {}
        )
        end

        # Sends audio / text-to-speech into a meeting session. With a Telnyx AI Assistant
        # (or avatar) attached, the bot is a webpage-output bot: the speak audio routes
        # through the assistant's output page rather than the bot mic and plays once the
        # assistant is connected -- it is not refused. If that page cannot be reached,
        # delivery fails with the 502 below, which may arrive without an error envelope,
        # so branch on the status code before parsing a body. The assistant is designed to
        # own the conversation, so prefer letting it speak or use `send_chat`.
        sig do
          params(
            id: String,
            text: String,
            interrupt: T::Boolean,
            voice: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::MeetingSessions::ActionAcceptedResponse)
        end
        def speak(
          # Unique identifier for the meeting session.
          id,
          # Text for the bot to speak.
          text:,
          # If true, interrupt any currently playing audio to speak this text immediately.
          interrupt: nil,
          # Voice identifier to use for this utterance. When supplied, it overrides the
          # session-default voice configured at creation; otherwise the speak action uses
          # that session default.
          voice: nil,
          request_options: {}
        )
        end

        # Stops any active text-to-speech playback in a meeting session.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::MeetingSessions::ActionAcceptedResponse)
        end
        def stop_speaking(
          # Unique identifier for the meeting session.
          id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
