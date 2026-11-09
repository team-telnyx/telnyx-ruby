# frozen_string_literal: true

module Telnyx
  module Resources
    class MeetingSessions
      # Send real-time speech and chat actions to an active meeting session.
      class Actions
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::MeetingSessions::ActionSendChatParams} for more details.
        #
        # Send chat as the bot in an active meeting. Returns 202 with data.accepted=true.
        # Google Meet and Teams confirm sending before success; 502 chat_not_sent means
        # not sent, while chat_delivery_unknown means delivery may have occurred. Inspect
        # chat and chat.sent events before retrying an uncertain send. Each request is a
        # new message and is not idempotent. Google Meet and Teams allow at most 1000 chat
        # requests per session, including an entrance message; exceeding this returns 409
        # invalid_state.
        #
        # @overload send_chat(id, text:, request_options: {})
        #
        # @param id [String] Unique identifier for the meeting session.
        #
        # @param text [String] Message text, 1–4000 characters. On Google Meet and Teams, also at most 4096 UTF
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::MeetingSessions::ActionAcceptedResponse]
        #
        # @see Telnyx::Models::MeetingSessions::ActionSendChatParams
        def send_chat(id, params)
          parsed, options = Telnyx::MeetingSessions::ActionSendChatParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["meeting_sessions/%1$s/actions/send_chat", id],
            body: parsed,
            model: Telnyx::MeetingSessions::ActionAcceptedResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::MeetingSessions::ActionSpeakParams} for more details.
        #
        # Sends audio / text-to-speech into a meeting session. With a Telnyx AI Assistant
        # attached, wait for the assistant to connect before requesting speech. If audio
        # delivery fails, the response can be 502, which may arrive without an error
        # envelope, so branch on the status code before parsing a body. The assistant is
        # designed to own the conversation, so prefer letting it speak or use `send_chat`.
        # With a digital avatar (`assistant.avatar: true`), speak is refused with 409
        # `invalid_state` (message prefix `avatar_requires_assistant_speech:`): the avatar
        # renders only the assistant's own speech.
        #
        # @overload speak(id, text:, interrupt: nil, voice: nil, request_options: {})
        #
        # @param id [String] Unique identifier for the meeting session.
        #
        # @param text [String] Text for the bot to speak.
        #
        # @param interrupt [Boolean] If true, interrupt any currently playing audio to speak this text immediately.
        #
        # @param voice [String] Voice identifier to use for this utterance. When supplied, it overrides the sess
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::MeetingSessions::ActionAcceptedResponse]
        #
        # @see Telnyx::Models::MeetingSessions::ActionSpeakParams
        def speak(id, params)
          parsed, options = Telnyx::MeetingSessions::ActionSpeakParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["meeting_sessions/%1$s/actions/speak", id],
            body: parsed,
            model: Telnyx::MeetingSessions::ActionAcceptedResponse,
            options: options
          )
        end

        # Stops any active text-to-speech playback in a meeting session. Sessions with a
        # digital avatar (`assistant.avatar: true`) return 409 `invalid_state` (message
        # prefix `avatar_requires_assistant_speech:`): the avatar renders only the
        # assistant's own speech.
        #
        # @overload stop_speaking(id, request_options: {})
        #
        # @param id [String] Unique identifier for the meeting session.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::MeetingSessions::ActionAcceptedResponse]
        #
        # @see Telnyx::Models::MeetingSessions::ActionStopSpeakingParams
        def stop_speaking(id, params = {})
          @client.request(
            method: :post,
            path: ["meeting_sessions/%1$s/actions/stop_speaking", id],
            model: Telnyx::MeetingSessions::ActionAcceptedResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
