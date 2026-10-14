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
      sig do
        params(
          meeting_url: String,
          assistant: Telnyx::MeetingSessionCreateParams::Assistant::OrHash,
          avatar: Telnyx::MeetingSessionCreateParams::Avatar::OrHash,
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
          metadata: T::Hash[Symbol, T.anything],
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
        # Attach a Telnyx AI Assistant to the session. Supply the Assistant's ID; the
        # Meeting service connects it to the meeting directly. The Call Control
        # connection, caller ID and loopback SIP URI previously required here have been
        # removed and are now rejected as unknown fields.
        assistant: nil,
        # Request options for attaching a bring-your-own-key avatar to the session.
        avatar: nil,
        # When enabled, a human participant `speech_on` event interrupts and stops the
        # current bot audio; it does not bypass admission or initiate speech. Assistant
        # sessions reject `barge_in: true`.
        barge_in: nil,
        # Display name for the bot in the meeting. Defaults to "Meeting Bot".
        bot_name: nil,
        # Write-only static camera-tile image for this session, not a native account or
        # participant profile photo. Supply exactly one JPEG source. When effective, the
        # image is used as the bot's static camera/video output; presentation varies by
        # meeting platform and recording configuration and is not guaranteed in
        # recordings. An effective Avatar or Assistant webpage output takes precedence, so
        # this input is ignored and a URL source is not fetched.
        camera_image: nil,
        # A message the bot posts to the meeting's chat as soon as it becomes active —
        # typically a recording disclosure. Delivered at most once. Independent of
        # `speak_on_enter`: both may be set, and the chat message posts first because it
        # does not wait for text-to-speech or avatar startup. Rejected with 422
        # `unsupported_capability` on platforms without meeting chat.
        chat_on_enter: nil,
        # Client-supplied idempotency key to safely retry creation requests without
        # duplicating sessions. Lookup is scoped to the authenticated account and compares
        # the key only; the request payload is not fingerprinted or compared.
        idempotency_key: nil,
        # ISO-8601 timestamp in the future at which the bot should join. If omitted, the
        # bot joins immediately.
        join_at: nil,
        # Arbitrary key-value metadata attached to the session. The serialized JSON
        # representation must not exceed 16384 characters at runtime.
        metadata: nil,
        # Text the bot speaks when it enters the meeting. **Not spoken when an `assistant`
        # is attached**: the value is accepted and echoed back on the session, but the
        # assistant owns the voice and the line is never delivered, with no event
        # reporting the omission. Use `chat_on_enter` to announce an assistant-backed bot.
        speak_on_enter: nil,
        # If true, generate a summary artifact when the session ends.
        summarize_on_end: nil,
        # Session-default voice identifier used for `speak_on_enter` and ordinary speak
        # actions. A voice supplied on an individual speak action overrides this default
        # for that utterance.
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
      # update.
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

      # Returns a list of meeting sessions, optionally filtered by status.
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
      # persisted meeting session record remains available.
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
      # deleting the persisted session. A missing/foreign session returns 404; provider
      # deletion failures return 502.
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

      # Returns recordings for a meeting session.
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

      # Returns transcript segments ordered by ascending `seq`. Default `limit` is 100
      # and maximum is 1,000. Continue with `after=meta.next_after`. A long-poll timeout
      # returns 200 with empty `data` and `meta.next_after: null`; retain the cursor
      # supplied to that request because null is not a replacement cursor.
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
