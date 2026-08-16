# frozen_string_literal: true

module Telnyx
  module Resources
    class MeetingSessions
      # Send real-time speech and chat actions to an active meeting session.
      # @return [Telnyx::Resources::MeetingSessions::Actions]
      attr_reader :actions

      # Create and retrieve asynchronous summaries and action-item artifacts.
      # @return [Telnyx::Resources::MeetingSessions::Artifacts]
      attr_reader :artifacts

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MeetingSessionCreateParams} for more details.
      #
      # Creates a new meeting session. When an idempotency_key is supplied in the
      # request body, replay lookup is scoped to the authenticated account and compares
      # only the key; the request payload is not fingerprinted or compared. If a session
      # with that key already exists for the account, the existing session is replayed
      # (200); otherwise a new session is created (201). Supports bring-your-own-key
      # (BYOK) configuration. The session may enter asynchronous states (e.g. joining,
      # waiting_for_admission) before becoming active. Optional `camera_image` input is
      # write-only and applies only when no Avatar or Assistant webpage output takes
      # precedence. An ignored URL is not fetched. An effective URL source is resolved
      # before bot creation; neither the source URL nor image bytes are persisted,
      # returned, or logged. Treat signed URLs as credentials.
      #
      # @overload create(meeting_url:, assistant: nil, avatar: nil, barge_in: nil, bot_name: nil, camera_image: nil, idempotency_key: nil, join_at: nil, metadata: nil, speak_on_enter: nil, summarize_on_end: nil, voice: nil, webhook_url: nil, request_options: {})
      #
      # @param meeting_url [String] The meeting URL the bot should join.
      #
      # @param assistant [Telnyx::Models::MeetingSessionCreateParams::Assistant] Request options for attaching a voice assistant to the session. Routing fields (
      #
      # @param avatar [Telnyx::Models::MeetingSessionCreateParams::Avatar] Request options for attaching a bring-your-own-key avatar to the session.
      #
      # @param barge_in [Boolean] When enabled, a human participant `speech_on` event interrupts and stops the cur
      #
      # @param bot_name [String] Display name for the bot in the meeting. Defaults to "Meeting Bot".
      #
      # @param camera_image [Telnyx::Models::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageBase64Source, Telnyx::Models::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageURLSource] Write-only static camera-tile image for this session, not a native account or pa
      #
      # @param idempotency_key [String] Client-supplied idempotency key to safely retry creation requests without duplic
      #
      # @param join_at [Time] ISO-8601 timestamp in the future at which the bot should join. If omitted, the b
      #
      # @param metadata [Hash{Symbol=>Object}] Arbitrary key-value metadata attached to the session. The serialized JSON repres
      #
      # @param speak_on_enter [String] Text the bot speaks when it enters the meeting.
      #
      # @param summarize_on_end [Boolean] If true, generate a summary artifact when the session ends.
      #
      # @param voice [String] Session-default voice identifier used for `speak_on_enter` and ordinary speak ac
      #
      # @param webhook_url [String] HTTPS endpoint to receive session lifecycle callbacks. Static validation require
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MeetingSessionResponse]
      #
      # @see Telnyx::Models::MeetingSessionCreateParams
      def create(params)
        parsed, options = Telnyx::MeetingSessionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "meeting_sessions",
          body: parsed,
          model: Telnyx::MeetingSessionResponse,
          options: options
        )
      end

      # Retrieves a single meeting session by ID. A session that does not exist or that
      # belongs to a different account both return 404.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Unique identifier for the meeting session.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MeetingSessionResponse]
      #
      # @see Telnyx::Models::MeetingSessionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["meeting_sessions/%1$s", id],
          model: Telnyx::MeetingSessionResponse,
          options: params[:request_options]
        )
      end

      # Updates mutable properties of a meeting session. Only sessions in the scheduled
      # state can be updated; any other state returns 409 with the invalid_state error
      # code. All request fields are optional, and an empty object is a valid no-op
      # update.
      #
      # @overload update(id, bot_name: nil, join_at: nil, request_options: {})
      #
      # @param id [String] Unique identifier for the meeting session.
      #
      # @param bot_name [String] Updated display name for the bot.
      #
      # @param join_at [Time] ISO-8601 timestamp for the bot to join. May be updated to reschedule.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MeetingSessionResponse]
      #
      # @see Telnyx::Models::MeetingSessionUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::MeetingSessionUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["meeting_sessions/%1$s", id],
          body: parsed,
          model: Telnyx::MeetingSessionResponse,
          options: options
        )
      end

      # Returns a list of meeting sessions, optionally filtered by status.
      #
      # @overload list(status: nil, request_options: {})
      #
      # @param status [Symbol, Telnyx::Models::MeetingSessionListParams::Status] Filter meeting sessions by current status.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MeetingSessionListResponse]
      #
      # @see Telnyx::Models::MeetingSessionListParams
      def list(params = {})
        parsed, options = Telnyx::MeetingSessionListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "meeting_sessions",
          query: query,
          model: Telnyx::Models::MeetingSessionListResponse,
          options: options
        )
      end

      # Stops a meeting session without deleting its persisted record. Scheduled bots
      # are cancelled, while bots that are joining or active are asked to leave. The
      # persisted meeting session record remains available.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Unique identifier for the meeting session.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MeetingSessionResponse]
      #
      # @see Telnyx::Models::MeetingSessionDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["meeting_sessions/%1$s", id],
          model: Telnyx::MeetingSessionResponse,
          options: params[:request_options]
        )
      end

      # **Not yet available in production** — this route is not currently routed on
      # api.telnyx.com and returns a generic 404; it is documented ahead of rollout.
      # Irreversibly requests deletion of provider-hosted aggregate recording media
      # under the provider contract. The operation retains the Telnyx-local Meeting
      # session, transcript segments, events, artifacts, and usage records. It is
      # separate from `DELETE /meeting_sessions/{id}`, which stops or cancels
      # participation without deleting the persisted session. A missing/foreign session
      # returns 404; provider deletion failures return 502.
      #
      # @overload delete_recording_media(id, request_options: {})
      #
      # @param id [String] Unique identifier for the meeting session.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse]
      #
      # @see Telnyx::Models::MeetingSessionDeleteRecordingMediaParams
      def delete_recording_media(id, params = {})
        @client.request(
          method: :delete,
          path: ["meeting_sessions/%1$s/recording_media", id],
          model: Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse,
          options: params[:request_options]
        )
      end

      # Returns stored events ordered by ascending `seq`. To continue, pass the last
      # returned item's `seq` as `after`. An empty page means no later stored events
      # existed at read time; this operation returns no separate next-page cursor.
      # Default `limit` is 100 and maximum is 1,000.
      #
      # @overload retrieve_events(id, after: nil, limit: nil, request_options: {})
      #
      # @param id [String] Unique identifier for the meeting session.
      #
      # @param after [Integer] Return results with a cursor position after this value.
      #
      # @param limit [Integer] Maximum number of results to return per page.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MeetingSessionRetrieveEventsResponse]
      #
      # @see Telnyx::Models::MeetingSessionRetrieveEventsParams
      def retrieve_events(id, params = {})
        parsed, options = Telnyx::MeetingSessionRetrieveEventsParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["meeting_sessions/%1$s/events", id],
          query: query,
          model: Telnyx::Models::MeetingSessionRetrieveEventsResponse,
          options: options
        )
      end

      # Returns recordings for a meeting session.
      #
      # @overload retrieve_recordings(id, request_options: {})
      #
      # @param id [String] Unique identifier for the meeting session.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MeetingSessionRetrieveRecordingsResponse]
      #
      # @see Telnyx::Models::MeetingSessionRetrieveRecordingsParams
      def retrieve_recordings(id, params = {})
        @client.request(
          method: :get,
          path: ["meeting_sessions/%1$s/recordings", id],
          model: Telnyx::Models::MeetingSessionRetrieveRecordingsResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MeetingSessionRetrieveTranscriptParams} for more details.
      #
      # Returns transcript segments ordered by ascending `seq`. Default `limit` is 100
      # and maximum is 1,000. Continue with `after=meta.next_after`. A long-poll timeout
      # returns 200 with empty `data` and `meta.next_after: null`; retain the cursor
      # supplied to that request because null is not a replacement cursor.
      #
      # @overload retrieve_transcript(id, after: nil, limit: nil, wait_seconds: nil, request_options: {})
      #
      # @param id [String] Unique identifier for the meeting session.
      #
      # @param after [Integer] Return results with a cursor position after this value.
      #
      # @param limit [Integer] Maximum number of results to return per page.
      #
      # @param wait_seconds [Integer] Long-poll duration in seconds. The server holds the connection open for up to th
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MeetingSessionRetrieveTranscriptResponse]
      #
      # @see Telnyx::Models::MeetingSessionRetrieveTranscriptParams
      def retrieve_transcript(id, params = {})
        parsed, options = Telnyx::MeetingSessionRetrieveTranscriptParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["meeting_sessions/%1$s/transcript", id],
          query: query,
          model: Telnyx::Models::MeetingSessionRetrieveTranscriptResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::MeetingSessions::Actions.new(client: client)
        @artifacts = Telnyx::Resources::MeetingSessions::Artifacts.new(client: client)
      end
    end
  end
end
