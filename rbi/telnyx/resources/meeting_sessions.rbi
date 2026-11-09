# typed: strong

module Telnyx
  module Resources
    class MeetingSessions
      # Send real-time speech and chat actions to an active meeting session.
      sig { returns(Telnyx::Resources::MeetingSessions::Actions) }
      attr_reader :actions

      # Create and retrieve asynchronous summaries and action-item artifacts.
      sig { returns(Telnyx::Resources::MeetingSessions::Artifacts) }
      attr_reader :artifacts

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
      sig do
        params(
          meeting_url: String,
          assistant: Telnyx::MeetingSessionCreateParams::Assistant::OrHash,
          barge_in: T::Boolean,
          bot_name: String,
          camera_image:
            T.any(
              Telnyx::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageBase64Source::OrHash,
              Telnyx::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageURLSource::OrHash
            ),
          chat_on_enter: String,
          idempotency_key: String,
          join_at: Time,
          leave_policy: Telnyx::MeetingSessionLeavePolicy::OrHash,
          metadata: T::Hash[Symbol, T.anything],
          recording: T::Boolean,
          recording_export: Telnyx::MeetingSessionRecordingDestination::OrHash,
          recording_view:
            Telnyx::MeetingSessionCreateParams::RecordingView::OrSymbol,
          speak_on_enter: String,
          summarize_on_end: T::Boolean,
          voice: String,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::MeetingSessionResponse)
      end
      def create(
        # The meeting URL the bot should join.
        meeting_url:,
        # Attach a Telnyx AI Assistant owned by the authenticated account. Supply its ID
        # and optional conversation settings. Unknown fields are rejected.
        assistant: nil,
        # When enabled, a human participant `speech_on` event interrupts and stops the
        # current bot audio; it does not bypass admission or initiate speech. Assistant
        # sessions reject `barge_in: true`.
        barge_in: nil,
        # Display name for the bot in the meeting. Defaults to "Meeting Bot".
        bot_name: nil,
        # Not supported for Google Meet and Teams joins (422 unsupported_capability).
        # Write-only static camera-tile image for this session, not an account or
        # participant profile photo. Supply exactly one JPEG source. When effective, the
        # image is used as the bot's static camera/video output; presentation varies by
        # meeting platform and recording configuration and is not guaranteed in
        # recordings. An attached assistant or avatar takes precedence, so this input is
        # ignored and a URL source is not fetched.
        camera_image: nil,
        # A message the bot posts to the meeting's chat as soon as it becomes active —
        # typically a recording disclosure. Delivered at most once. Independent of
        # `speak_on_enter`: both may be set, and the chat message posts first because it
        # does not wait for text-to-speech or avatar startup. Rejected with 422
        # `unsupported_capability` on platforms without meeting chat. For Google Meet and
        # Teams, text must be nonblank, at most 4096 UTF-8 bytes, with no control
        # characters except tabs and line breaks. Counts toward the 1000-chat-request
        # session limit.
        chat_on_enter: nil,
        # Use a unique key per intended join and reuse the same key and request on
        # retries. Reusing a key with a different join configuration or meeting URL can
        # return 409 invalid_state. Always retry with the original request.
        idempotency_key: nil,
        # Future ISO-8601 join timestamp including timezone. Google Meet and Teams accept
        # dates at most three years ahead. Omit for an immediate join. Assistant sessions
        # created through this endpoint must join immediately.
        join_at: nil,
        # Automatic departure settings for Google Meet and Teams. Omitted fields use the
        # default behavior. Set at creation; cannot be changed later. Zoom ignores this
        # policy.
        leave_policy: nil,
        # Arbitrary key-value metadata attached to the session. The serialized JSON
        # representation must not exceed 16384 characters at runtime.
        metadata: nil,
        # Google Meet and Teams only. Defaults to true when recording_export is supplied
        # and false otherwise. True requires recording_export.bucket; false cannot be
        # combined with recording_export. Fixed at creation, with no pause/resume action.
        # Zoom rejects recording, recording_view, and recording_export with 422
        # unsupported_capability; omit these fields for Zoom.
        recording: nil,
        # Customer-owned Telnyx Storage destination for recording exports. Uses the
        # authenticated organization and user; do not supply credentials, region,
        # organization ID or object key.
        recording_export: nil,
        # Recording layout for Google Meet and Teams. Defaults to speaker_view. Accepted
        # at creation only; does not enable recording by itself.
        recording_view: nil,
        # Text the bot speaks after joining. Available for sessions without a digital
        # avatar. With an AI Assistant, the greeting waits until the assistant is
        # connected. Rejected with 400 invalid_request when assistant.avatar is true.
        speak_on_enter: nil,
        # If true, generate a summary artifact when the session ends.
        summarize_on_end: nil,
        # Session-default voice identifier used for `speak_on_enter` and ordinary speak
        # actions. A voice supplied on an individual speak action overrides this default
        # for that utterance. With an assistant attached, its conversational voice remains
        # configured on the assistant.
        voice: nil,
        # HTTPS endpoint to receive session lifecycle callbacks. Static validation
        # requires HTTPS, rejects embedded credentials and blocked hosts, and enforces
        # egress policy. Validation makes no network request to the endpoint.
        webhook_url: nil,
        request_options: {}
      )
      end

      # Retrieves a single meeting session by ID. A session that does not exist or that
      # belongs to a different account both return 404.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::MeetingSessionResponse)
      end
      def retrieve(
        # Unique identifier for the meeting session.
        id,
        request_options: {}
      )
      end

      # Updates mutable properties of a meeting session. Only sessions in the scheduled
      # state can be updated; any other state returns 409 with the invalid_state error
      # code. All request fields are optional, and an empty object is a valid no-op
      # update. Calendar-controlled Google Meet and Teams sessions return 409
      # calendar_managed; change the event instead. A conflicting pending edit returns
      # 409 edit_in_progress. On a timeout or 503, read the session and retry the same
      # changes.
      sig do
        params(
          id: String,
          bot_name: String,
          join_at: Time,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::MeetingSessionResponse)
      end
      def update(
        # Unique identifier for the meeting session.
        id,
        # Updated display name for the bot.
        bot_name: nil,
        # ISO-8601 timestamp for the bot to join. May be updated to reschedule.
        join_at: nil,
        request_options: {}
      )
      end

      # Returns a list of meeting sessions, optionally filtered by status. List items
      # omit assistant.dynamic_variables and recording_export. Some items include
      # remote_state_observed_at; retrieve the individual session for current state.
      sig do
        params(
          status: Telnyx::MeetingSessionListParams::Status::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MeetingSessionListResponse)
      end
      def list(
        # Filter meeting sessions by current status.
        status: nil,
        request_options: {}
      )
      end

      # Stops a meeting session without deleting its persisted record. Scheduled bots
      # are cancelled, while bots that are joining or active are asked to leave. The
      # persisted meeting session record remains available. A successful response can
      # report leaving while departure is pending. Poll until ended, failed, or
      # admission_denied. Exported Storage objects are unaffected.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::MeetingSessionResponse)
      end
      def delete(
        # Unique identifier for the meeting session.
        id,
        request_options: {}
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
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse)
      end
      def delete_recording_media(
        # Unique identifier for the meeting session.
        id,
        request_options: {}
      )
      end

      # Returns stored events ordered by ascending `seq`. To continue, pass the last
      # returned item's `seq` as `after`. An empty page means no later stored events
      # existed at read time; this operation returns no separate next-page cursor.
      # Default `limit` is 100 and maximum is 1,000.
      sig do
        params(
          id: String,
          after: Integer,
          limit: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MeetingSessionRetrieveEventsResponse)
      end
      def retrieve_events(
        # Unique identifier for the meeting session.
        id,
        # Return results with a cursor position after this value.
        after: nil,
        # Maximum number of results to return per page.
        limit: nil,
        request_options: {}
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
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MeetingSessionRetrieveRecordingsResponse)
      end
      def retrieve_recordings(
        # Unique identifier for the meeting session.
        id,
        request_options: {}
      )
      end

      # Returns transcript segments ordered by ascending seq. Default limit is 100,
      # maximum 1000. Continue with after=meta.next_after. On an empty page,
      # meta.next_after preserves a positive supplied after cursor, or is null when no
      # positive cursor was supplied. wait_seconds holds an empty read for up to 25
      # seconds; a timeout still returns 200.
      sig do
        params(
          id: String,
          after: Integer,
          limit: Integer,
          wait_seconds: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MeetingSessionRetrieveTranscriptResponse)
      end
      def retrieve_transcript(
        # Unique identifier for the meeting session.
        id,
        # Return results with a cursor position after this value.
        after: nil,
        # Maximum number of results to return per page.
        limit: nil,
        # Long-poll duration in seconds. The server holds the connection open for up to
        # this many seconds, waiting for new or updated results before returning an empty
        # response. Set to 0 for an immediate response.
        wait_seconds: nil,
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
