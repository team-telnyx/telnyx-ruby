# frozen_string_literal: true

module Telnyx
  module Models
    class CalendarConnection < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Calendar connection ID.
      #
      #   @return [String]
      required :id, String

      # @!attribute auto_join_policy
      #   all_meetings joins eligible events; external_organizer_excluded requires the
      #   connected user to be the organizer; per_meeting requires an explicit opt-in.
      #
      #   @return [Symbol, Telnyx::Models::CalendarConnection::AutoJoinPolicy]
      required :auto_join_policy, enum: -> { Telnyx::CalendarConnection::AutoJoinPolicy }

      # @!attribute bot_name
      #   Bot display name; null clears the override.
      #
      #   @return [String, nil]
      required :bot_name, String, nil?: true

      # @!attribute created_at
      #   Creation time.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute default_assistant
      #
      #   @return [Telnyx::Models::MeetingSessionAssistant, nil]
      required :default_assistant, -> { Telnyx::MeetingSessionAssistant }, nil?: true

      # @!attribute default_barge_in
      #   Default manual speech interruption. Cannot be true with default_assistant.
      #
      #   @return [Boolean, nil]
      required :default_barge_in, Telnyx::Internal::Type::Boolean, nil?: true

      # @!attribute default_recording
      #   Google Meet and Teams recording intent. When null, recording is enabled only if
      #   a destination is set. True requires default_recording_export; false cannot be
      #   combined with a destination.
      #
      #   @return [Boolean, nil]
      required :default_recording, Telnyx::Internal::Type::Boolean, nil?: true

      # @!attribute default_recording_export
      #   Customer-owned Telnyx Storage destination for recording exports. Uses the
      #   authenticated organization and user; do not supply credentials, region,
      #   organization ID or object key.
      #
      #   @return [Telnyx::Models::MeetingSessionRecordingDestination, nil]
      required :default_recording_export, -> { Telnyx::MeetingSessionRecordingDestination }, nil?: true

      # @!attribute default_summarize_on_end
      #   Generate a summary when each future session transcript finalizes.
      #
      #   @return [Boolean, nil]
      required :default_summarize_on_end, Telnyx::Internal::Type::Boolean, nil?: true

      # @!attribute default_voice
      #   Manual-speech voice; must be null when default_assistant is set.
      #
      #   @return [String, nil]
      required :default_voice, String, nil?: true

      # @!attribute default_webhook_url
      #   HTTPS destination for future session webhooks. Null clears the default. A
      #   non-null update returns webhook_secret once; save it to verify signatures for
      #   sessions created with this default. Existing sessions retain their original
      #   signing secret.
      #
      #   @return [String, nil]
      required :default_webhook_url, String, nil?: true

      # @!attribute platform
      #   Calendar provider: Google Calendar or Microsoft Outlook.
      #
      #   @return [Symbol, Telnyx::Models::CalendarConnection::Platform]
      required :platform, enum: -> { Telnyx::CalendarConnection::Platform }

      # @!attribute platform_email
      #   Connected calendar email address.
      #
      #   @return [String, nil]
      required :platform_email, String, nil?: true

      # @!attribute status
      #   Connection status.
      #
      #   @return [Symbol, Telnyx::Models::CalendarConnection::Status]
      required :status, enum: -> { Telnyx::CalendarConnection::Status }

      # @!attribute status_detail
      #   Additional connection status detail.
      #
      #   @return [String, nil]
      required :status_detail, String, nil?: true

      # @!attribute updated_at
      #   Last update time.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, auto_join_policy:, bot_name:, created_at:, default_assistant:, default_barge_in:, default_recording:, default_recording_export:, default_summarize_on_end:, default_voice:, default_webhook_url:, platform:, platform_email:, status:, status_detail:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CalendarConnection} for more details.
      #
      #   @param id [String] Calendar connection ID.
      #
      #   @param auto_join_policy [Symbol, Telnyx::Models::CalendarConnection::AutoJoinPolicy] all_meetings joins eligible events; external_organizer_excluded requires the con
      #
      #   @param bot_name [String, nil] Bot display name; null clears the override.
      #
      #   @param created_at [Time] Creation time.
      #
      #   @param default_assistant [Telnyx::Models::MeetingSessionAssistant, nil]
      #
      #   @param default_barge_in [Boolean, nil] Default manual speech interruption. Cannot be true with default_assistant.
      #
      #   @param default_recording [Boolean, nil] Google Meet and Teams recording intent. When null, recording is enabled only if
      #
      #   @param default_recording_export [Telnyx::Models::MeetingSessionRecordingDestination, nil] Customer-owned Telnyx Storage destination for recording exports. Uses the authen
      #
      #   @param default_summarize_on_end [Boolean, nil] Generate a summary when each future session transcript finalizes.
      #
      #   @param default_voice [String, nil] Manual-speech voice; must be null when default_assistant is set.
      #
      #   @param default_webhook_url [String, nil] HTTPS destination for future session webhooks. Null clears the default. A non-nu
      #
      #   @param platform [Symbol, Telnyx::Models::CalendarConnection::Platform] Calendar provider: Google Calendar or Microsoft Outlook.
      #
      #   @param platform_email [String, nil] Connected calendar email address.
      #
      #   @param status [Symbol, Telnyx::Models::CalendarConnection::Status] Connection status.
      #
      #   @param status_detail [String, nil] Additional connection status detail.
      #
      #   @param updated_at [Time] Last update time.

      # all_meetings joins eligible events; external_organizer_excluded requires the
      # connected user to be the organizer; per_meeting requires an explicit opt-in.
      #
      # @see Telnyx::Models::CalendarConnection#auto_join_policy
      module AutoJoinPolicy
        extend Telnyx::Internal::Type::Enum

        ALL_MEETINGS = :all_meetings
        EXTERNAL_ORGANIZER_EXCLUDED = :external_organizer_excluded
        PER_MEETING = :per_meeting

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Calendar provider: Google Calendar or Microsoft Outlook.
      #
      # @see Telnyx::Models::CalendarConnection#platform
      module Platform
        extend Telnyx::Internal::Type::Enum

        GOOGLE_CALENDAR = :google_calendar
        MICROSOFT_OUTLOOK = :microsoft_outlook

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Connection status.
      #
      # @see Telnyx::Models::CalendarConnection#status
      module Status
        extend Telnyx::Internal::Type::Enum

        CONNECTED = :connected
        DISCONNECTED = :disconnected
        ERROR = :error

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
