# frozen_string_literal: true

module Telnyx
  module Resources
    # Connect calendars and manage automatic meeting joins.
    class CalendarConnections
      # Connect calendars and manage automatic meeting joins.
      # @return [Telnyx::Resources::CalendarConnections::Meetings]
      attr_reader :meetings

      # Start Google Calendar or Microsoft Outlook OAuth. Open oauth_url in a browser.
      # No connection exists until authorization succeeds. The resulting connection is
      # owned by the connecting user.
      #
      # @overload create(platform:, request_options: {})
      #
      # @param platform [Symbol, Telnyx::Models::CalendarConnectionCreateParams::Platform] Calendar provider: Google Calendar or Microsoft Outlook.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CalendarConnectionCreateResponse]
      #
      # @see Telnyx::Models::CalendarConnectionCreateParams
      def create(params)
        parsed, options = Telnyx::CalendarConnectionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "calendar_connections",
          body: parsed,
          model: Telnyx::Models::CalendarConnectionCreateResponse,
          options: options
        )
      end

      # Retrieve a calendar connection owned by the authenticated connecting user.
      # Missing and foreign connections both return 404. Signing secrets are omitted.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Calendar connection ID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CalendarConnectionResponse]
      #
      # @see Telnyx::Models::CalendarConnectionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["calendar_connections/%1$s", id],
          model: Telnyx::CalendarConnectionResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CalendarConnectionUpdateParams} for more details.
      #
      # Update policy or defaults for future sessions. Supply at least one field.
      # Existing sessions retain their configuration. Null clears nullable overrides.
      # Assistant, recording, and webhook defaults apply to Google Meet and Teams.
      # Assistant defaults require default_barge_in to be false or null and
      # default_voice to be null. Recording=true requires a destination; false rejects
      # one. A non-null default_webhook_url update returns webhook_secret once; save it
      # to verify future session deliveries.
      #
      # @overload update(id, auto_join_policy: nil, bot_name: nil, default_assistant: nil, default_barge_in: nil, default_recording: nil, default_recording_export: nil, default_summarize_on_end: nil, default_voice: nil, default_webhook_url: nil, request_options: {})
      #
      # @param id [String] Calendar connection ID.
      #
      # @param auto_join_policy [Symbol, Telnyx::Models::CalendarConnectionUpdateParams::AutoJoinPolicy] all_meetings joins eligible events; external_organizer_excluded requires the con
      #
      # @param bot_name [String, nil] Bot display name; null clears the override.
      #
      # @param default_assistant [Telnyx::Models::CalendarConnectionUpdateParams::DefaultAssistant, nil] Default assistant for future calendar-scheduled Google Meet and Teams sessions.
      #
      # @param default_barge_in [Boolean, nil] Default manual speech interruption. Cannot be true with default_assistant.
      #
      # @param default_recording [Boolean, nil] Google Meet and Teams recording intent. When null, recording is enabled only if
      #
      # @param default_recording_export [Telnyx::Models::MeetingSessionRecordingDestination, nil] Customer-owned Telnyx Storage destination for recording exports. Uses the authen
      #
      # @param default_summarize_on_end [Boolean, nil] Generate a summary when each future session transcript finalizes.
      #
      # @param default_voice [String, nil] Manual-speech voice; must be null when default_assistant is set.
      #
      # @param default_webhook_url [String, nil] HTTPS destination for future session webhooks. Null clears the default. A non-nu
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CalendarConnectionUpdateResponse]
      #
      # @see Telnyx::Models::CalendarConnectionUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::CalendarConnectionUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["calendar_connections/%1$s", id],
          body: parsed,
          model: Telnyx::Models::CalendarConnectionUpdateResponse,
          options: options
        )
      end

      # List only the authenticated connecting user’s calendar connections. Session
      # resources created by those connections are shared within the organization.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CalendarConnectionListResponse]
      #
      # @see Telnyx::Models::CalendarConnectionListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "calendar_connections",
          model: Telnyx::Models::CalendarConnectionListResponse,
          options: params[:request_options]
        )
      end

      # Disconnect the calendar, cancel future joins, and clear retained calendar
      # identity fields. Previously created session records, transcripts, artifacts, and
      # Storage objects remain. The response is the updated connection.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Calendar connection ID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CalendarConnectionResponse]
      #
      # @see Telnyx::Models::CalendarConnectionDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["calendar_connections/%1$s", id],
          model: Telnyx::CalendarConnectionResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @meetings = Telnyx::Resources::CalendarConnections::Meetings.new(client: client)
      end
    end
  end
end
