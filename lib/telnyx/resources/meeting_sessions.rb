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
      # Creates a meeting session and returns 201, or 200 for a replay. Use a unique
      # `idempotency_key` per intended join and reuse the same key and request on
      # retries. Reusing a key with a different join configuration or meeting URL can
      # return 409 invalid_state. Always retry with the original request. The session
      # can pass through joining and waiting_for_admission before active. Optional
      # `camera_image` input is write-only and applies when no assistant avatar takes
      # precedence. An ignored URL is not fetched. An effective URL source is resolved
      # before bot creation; the source URL and image bytes are not returned in the
      # session response. Treat signed URLs as credentials. With
      # `assistant.avatar: true`, the assistant is read before the bot is created: an
      # assistant without a Telnyx avatar configured is rejected with 400
      # `invalid_request` (message prefix `assistant_avatar_not_configured:`), an
      # unknown assistant with 400 `invalid_request` (prefix `assistant_not_found:`),
      # and a failed lookup with 503 `assistant_lookup_unavailable`; no bot is created
      # in any of these cases.
      #
      # @overload create(meeting_url:, assistant: nil, barge_in: nil, bot_name: nil, camera_image: nil, chat_on_enter: nil, idempotency_key: nil, join_at: nil, leave_policy: nil, metadata: nil, recording: nil, recording_export: nil, recording_view: nil, speak_on_enter: nil, summarize_on_end: nil, voice: nil, webhook_url: nil, request_options: {})
      #
      # @param meeting_url [String] The meeting URL the bot should join.
      #
      # @param assistant [Telnyx::Models::MeetingSessionCreateParams::Assistant] Attach a Telnyx AI Assistant owned by the authenticated account. Supply its ID a
      #
      # @param barge_in [Boolean] When enabled, a human participant `speech_on` event interrupts and stops the cur
      #
      # @param bot_name [String] Display name for the bot in the meeting. Defaults to "Meeting Bot".
      #
      # @param camera_image [Telnyx::Models::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageBase64Source, Telnyx::Models::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageURLSource] Not supported for Google Meet and Teams joins (422 unsupported_capability). Writ
      #
      # @param chat_on_enter [String] A message the bot posts to the meeting's chat as soon as it becomes active — typ
      #
      # @param idempotency_key [String] Use a unique key per intended join and reuse the same key and request on retries
      #
      # @param join_at [Time] Future ISO-8601 join timestamp including timezone. Google Meet and Teams accept
      #
      # @param leave_policy [Telnyx::Models::MeetingSessionLeavePolicy] Automatic departure settings for Google Meet and Teams. Omitted fields use the d
      #
      # @param metadata [Hash{Symbol=>Object}] Arbitrary key-value metadata attached to the session. The serialized JSON repres
      #
      # @param recording [Boolean] Google Meet and Teams only. Defaults to true when recording_export is supplied a
      #
      # @param recording_export [Telnyx::Models::MeetingSessionRecordingDestination] Customer-owned Telnyx Storage destination for recording exports. Uses the authen
      #
      # @param recording_view [Symbol, Telnyx::Models::MeetingSessionCreateParams::RecordingView] Recording layout for Google Meet and Teams. Defaults to speaker_view. Accepted a
      #
      # @param speak_on_enter [String] Text the bot speaks after joining. Available for sessions without a digital avat
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
      # update. Calendar-controlled Google Meet and Teams sessions return 409
      # calendar_managed; change the event instead. A conflicting pending edit returns
      # 409 edit_in_progress. On a timeout or 503, read the session and retry the same
      # changes.
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

      # Returns a list of meeting sessions, optionally filtered by status. List items
      # omit assistant.dynamic_variables and recording_export. Some items include
      # remote_state_observed_at; retrieve the individual session for current state.
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
      # persisted meeting session record remains available. A successful response can
      # report leaving while departure is pending. Poll until ended, failed, or
      # admission_denied. Exported Storage objects are unaffected.
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

      # Irreversibly requests deletion of the aggregate recording media for the session.
      # The operation retains the Telnyx-local Meeting session, transcript segments,
      # events, artifacts, and usage records. It is separate from
      # `DELETE /meeting_sessions/{id}`, which stops or cancels participation without
      # deleting the persisted session. A missing/foreign session returns 404; a
      # deletion request whose outcome is unknown returns 502. Customer Storage exports
      # do not support this operation (422 unsupported_capability); delete the exported
      # object through Storage instead. Stopping a session does not delete an exported
      # object.
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

      # Retrieve recording export status. Customer Storage exports include
      # recording_export with the bucket, region, key and pending/exported/failed
      # status, or null when no reference is available. The data array is empty for
      # these exports. Download or share the object using the Storage API once its
      # status is exported. Zoom recordings and existing Google Meet or Teams recordings
      # held by the Meeting service continue returning temporary download links in data
      # through this same endpoint and session ID. Those recordings do not require
      # Storage setup or migration. Refresh this endpoint when a link expires. Select
      # the download method from the returned fields, not the platform alone.
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
      # Returns transcript segments ordered by ascending seq. Default limit is 100,
      # maximum 1000. Continue with after=meta.next_after. On an empty page,
      # meta.next_after preserves a positive supplied after cursor, or is null when no
      # positive cursor was supplied. wait_seconds holds an empty read for up to 25
      # seconds; a timeout still returns 200.
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
