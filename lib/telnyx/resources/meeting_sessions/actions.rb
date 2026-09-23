# frozen_string_literal: true

module Telnyx
  module Resources
    class MeetingSessions
      # Send real-time speech and chat actions to an active meeting session.
      class Actions
        # Sends a chat message into a meeting session.
        #
        # @overload send_chat(id, text:, request_options: {})
        #
        # @param id [String] Unique identifier for the meeting session.
        #
        # @param text [String] Chat message text to send in the meeting.
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
        # (or avatar) attached, the bot is a webpage-output bot: the speak audio routes
        # through the assistant's output page rather than the bot mic and plays once the
        # assistant is connected -- it is not refused. If that page cannot be reached,
        # delivery fails with the 502 below, which may arrive without an error envelope,
        # so branch on the status code before parsing a body. The assistant is designed to
        # own the conversation, so prefer letting it speak or use `send_chat`.
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

        # Stops any active text-to-speech playback in a meeting session.
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
