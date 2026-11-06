# typed: strong

module Telnyx
  module Resources
    class MeetingSessions
      # Send real-time speech and chat actions to an active meeting session.
      class Actions
        # Send chat as the bot in an active meeting. Returns 202 with data.accepted=true.
        # Google Meet and Teams confirm sending before success; 502 chat_not_sent means
        # not sent, while chat_delivery_unknown means delivery may have occurred. Inspect
        # chat and chat.sent events before retrying an uncertain send. Each request is a
        # new message and is not idempotent. Google Meet and Teams allow at most 1000 chat
        # requests per session, including an entrance message; exceeding this returns 409
        # invalid_state.
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
          # Message text, 1–4000 characters. On Google Meet and Teams, also at most 4096
          # UTF-8 bytes and nonblank; control characters other than tab and line breaks are
          # rejected. CRLF is normalized to LF.
          text:,
          request_options: {}
        )
        end

        # Sends audio / text-to-speech into a meeting session. With a Telnyx AI Assistant
        # attached, wait for the assistant to connect before requesting speech. If audio
        # delivery fails, the response can be 502, which may arrive without an error
        # envelope, so branch on the status code before parsing a body. The assistant is
        # designed to own the conversation, so prefer letting it speak or use `send_chat`.
        # With a digital avatar (`assistant.avatar: true`), speak is refused with 409
        # `invalid_state` (message prefix `avatar_requires_assistant_speech:`): the avatar
        # renders only the assistant's own speech.
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

        # Stops any active text-to-speech playback in a meeting session. Sessions with a
        # digital avatar (`assistant.avatar: true`) return 409 `invalid_state` (message
        # prefix `avatar_requires_assistant_speech:`): the avatar renders only the
        # assistant's own speech.
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
