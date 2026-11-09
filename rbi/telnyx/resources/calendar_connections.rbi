# typed: strong

module Telnyx
  module Resources
    # Connect calendars and manage automatic meeting joins.
    class CalendarConnections
      # Connect calendars and manage automatic meeting joins.
      sig { returns(Telnyx::Resources::CalendarConnections::Meetings) }
      attr_reader :meetings

      # Start Google Calendar or Microsoft Outlook OAuth. Open oauth_url in a browser.
      # No connection exists until authorization succeeds. The resulting connection is
      # owned by the connecting user.
      sig do
        params(
          platform: Telnyx::CalendarConnectionCreateParams::Platform::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::CalendarConnectionCreateResponse)
      end
      def create(
        # Calendar provider: Google Calendar or Microsoft Outlook.
        platform:,
        request_options: {}
      )
      end

      # Retrieve a calendar connection owned by the authenticated connecting user.
      # Missing and foreign connections both return 404. Signing secrets are omitted.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::CalendarConnectionResponse)
      end
      def retrieve(
        # Calendar connection ID.
        id,
        request_options: {}
      )
      end

      # Update policy or defaults for future sessions. Supply at least one field.
      # Existing sessions retain their configuration. Null clears nullable overrides.
      # Assistant, recording, and webhook defaults apply to Google Meet and Teams.
      # Assistant defaults require default_barge_in to be false or null and
      # default_voice to be null. Recording=true requires a destination; false rejects
      # one. A non-null default_webhook_url update returns webhook_secret once; save it
      # to verify future session deliveries.
      sig do
        params(
          id: String,
          auto_join_policy:
            Telnyx::CalendarConnectionUpdateParams::AutoJoinPolicy::OrSymbol,
          bot_name: T.nilable(String),
          default_assistant:
            T.nilable(
              Telnyx::CalendarConnectionUpdateParams::DefaultAssistant::OrHash
            ),
          default_barge_in: T.nilable(T::Boolean),
          default_recording: T.nilable(T::Boolean),
          default_recording_export:
            T.nilable(Telnyx::MeetingSessionRecordingDestination::OrHash),
          default_summarize_on_end: T.nilable(T::Boolean),
          default_voice: T.nilable(String),
          default_webhook_url: T.nilable(String),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::CalendarConnectionUpdateResponse)
      end
      def update(
        # Calendar connection ID.
        id,
        # all_meetings joins eligible events; external_organizer_excluded requires the
        # connected user to be the organizer; per_meeting requires an explicit opt-in.
        auto_join_policy: nil,
        # Bot display name; null clears the override.
        bot_name: nil,
        # Default assistant for future calendar-scheduled Google Meet and Teams sessions.
        # The saved configuration must fit within 8 KiB. Use id, audio_gate,
        # dynamic_variables, and leave_on_end; avatar is not accepted. audio_gate defaults
        # to full_duplex.
        default_assistant: nil,
        # Default manual speech interruption. Cannot be true with default_assistant.
        default_barge_in: nil,
        # Google Meet and Teams recording intent. When null, recording is enabled only if
        # a destination is set. True requires default_recording_export; false cannot be
        # combined with a destination.
        default_recording: nil,
        # Customer-owned Telnyx Storage destination for recording exports. Uses the
        # authenticated organization and user; do not supply credentials, region,
        # organization ID or object key.
        default_recording_export: nil,
        # Generate a summary when each future session transcript finalizes.
        default_summarize_on_end: nil,
        # Manual-speech voice; must be null when default_assistant is set.
        default_voice: nil,
        # HTTPS destination for future session webhooks. Null clears the default. A
        # non-null update returns webhook_secret once; save it to verify signatures for
        # sessions created with this default. Existing sessions retain their original
        # signing secret.
        default_webhook_url: nil,
        request_options: {}
      )
      end

      # List only the authenticated connecting user’s calendar connections. Session
      # resources created by those connections are shared within the organization.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::CalendarConnectionListResponse
        )
      end
      def list(request_options: {})
      end

      # Disconnect the calendar, cancel future joins, and clear retained calendar
      # identity fields. Previously created session records, transcripts, artifacts, and
      # Storage objects remain. The response is the updated connection.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::CalendarConnectionResponse)
      end
      def delete(
        # Calendar connection ID.
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
