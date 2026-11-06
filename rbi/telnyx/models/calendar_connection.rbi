# typed: strong

module Telnyx
  module Models
    class CalendarConnection < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CalendarConnection, Telnyx::Internal::AnyHash)
        end

      # Calendar connection ID.
      sig { returns(String) }
      attr_accessor :id

      # all_meetings joins eligible events; external_organizer_excluded requires the
      # connected user to be the organizer; per_meeting requires an explicit opt-in.
      sig { returns(Telnyx::CalendarConnection::AutoJoinPolicy::TaggedSymbol) }
      attr_accessor :auto_join_policy

      # Bot display name; null clears the override.
      sig { returns(T.nilable(String)) }
      attr_accessor :bot_name

      # Creation time.
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Telnyx::MeetingSessionAssistant)) }
      attr_reader :default_assistant

      sig do
        params(
          default_assistant: T.nilable(Telnyx::MeetingSessionAssistant::OrHash)
        ).void
      end
      attr_writer :default_assistant

      # Default manual speech interruption. Cannot be true with default_assistant.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :default_barge_in

      # Google Meet and Teams recording intent. When null, recording is enabled only if
      # a destination is set. True requires default_recording_export; false cannot be
      # combined with a destination.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :default_recording

      # Customer-owned Telnyx Storage destination for recording exports. Uses the
      # authenticated organization and user; do not supply credentials, region,
      # organization ID or object key.
      sig { returns(T.nilable(Telnyx::MeetingSessionRecordingDestination)) }
      attr_reader :default_recording_export

      sig do
        params(
          default_recording_export:
            T.nilable(Telnyx::MeetingSessionRecordingDestination::OrHash)
        ).void
      end
      attr_writer :default_recording_export

      # Generate a summary when each future session transcript finalizes.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :default_summarize_on_end

      # Manual-speech voice; must be null when default_assistant is set.
      sig { returns(T.nilable(String)) }
      attr_accessor :default_voice

      # HTTPS destination for future session webhooks. Null clears the default. A
      # non-null update returns webhook_secret once; save it to verify signatures for
      # sessions created with this default. Existing sessions retain their original
      # signing secret.
      sig { returns(T.nilable(String)) }
      attr_accessor :default_webhook_url

      # Calendar provider: Google Calendar or Microsoft Outlook.
      sig { returns(Telnyx::CalendarConnection::Platform::TaggedSymbol) }
      attr_accessor :platform

      # Connected calendar email address.
      sig { returns(T.nilable(String)) }
      attr_accessor :platform_email

      # Connection status.
      sig { returns(Telnyx::CalendarConnection::Status::TaggedSymbol) }
      attr_accessor :status

      # Additional connection status detail.
      sig { returns(T.nilable(String)) }
      attr_accessor :status_detail

      # Last update time.
      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          auto_join_policy:
            Telnyx::CalendarConnection::AutoJoinPolicy::OrSymbol,
          bot_name: T.nilable(String),
          created_at: Time,
          default_assistant: T.nilable(Telnyx::MeetingSessionAssistant::OrHash),
          default_barge_in: T.nilable(T::Boolean),
          default_recording: T.nilable(T::Boolean),
          default_recording_export:
            T.nilable(Telnyx::MeetingSessionRecordingDestination::OrHash),
          default_summarize_on_end: T.nilable(T::Boolean),
          default_voice: T.nilable(String),
          default_webhook_url: T.nilable(String),
          platform: Telnyx::CalendarConnection::Platform::OrSymbol,
          platform_email: T.nilable(String),
          status: Telnyx::CalendarConnection::Status::OrSymbol,
          status_detail: T.nilable(String),
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Calendar connection ID.
        id:,
        # all_meetings joins eligible events; external_organizer_excluded requires the
        # connected user to be the organizer; per_meeting requires an explicit opt-in.
        auto_join_policy:,
        # Bot display name; null clears the override.
        bot_name:,
        # Creation time.
        created_at:,
        default_assistant:,
        # Default manual speech interruption. Cannot be true with default_assistant.
        default_barge_in:,
        # Google Meet and Teams recording intent. When null, recording is enabled only if
        # a destination is set. True requires default_recording_export; false cannot be
        # combined with a destination.
        default_recording:,
        # Customer-owned Telnyx Storage destination for recording exports. Uses the
        # authenticated organization and user; do not supply credentials, region,
        # organization ID or object key.
        default_recording_export:,
        # Generate a summary when each future session transcript finalizes.
        default_summarize_on_end:,
        # Manual-speech voice; must be null when default_assistant is set.
        default_voice:,
        # HTTPS destination for future session webhooks. Null clears the default. A
        # non-null update returns webhook_secret once; save it to verify signatures for
        # sessions created with this default. Existing sessions retain their original
        # signing secret.
        default_webhook_url:,
        # Calendar provider: Google Calendar or Microsoft Outlook.
        platform:,
        # Connected calendar email address.
        platform_email:,
        # Connection status.
        status:,
        # Additional connection status detail.
        status_detail:,
        # Last update time.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            auto_join_policy:
              Telnyx::CalendarConnection::AutoJoinPolicy::TaggedSymbol,
            bot_name: T.nilable(String),
            created_at: Time,
            default_assistant: T.nilable(Telnyx::MeetingSessionAssistant),
            default_barge_in: T.nilable(T::Boolean),
            default_recording: T.nilable(T::Boolean),
            default_recording_export:
              T.nilable(Telnyx::MeetingSessionRecordingDestination),
            default_summarize_on_end: T.nilable(T::Boolean),
            default_voice: T.nilable(String),
            default_webhook_url: T.nilable(String),
            platform: Telnyx::CalendarConnection::Platform::TaggedSymbol,
            platform_email: T.nilable(String),
            status: Telnyx::CalendarConnection::Status::TaggedSymbol,
            status_detail: T.nilable(String),
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # all_meetings joins eligible events; external_organizer_excluded requires the
      # connected user to be the organizer; per_meeting requires an explicit opt-in.
      module AutoJoinPolicy
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::CalendarConnection::AutoJoinPolicy)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL_MEETINGS =
          T.let(
            :all_meetings,
            Telnyx::CalendarConnection::AutoJoinPolicy::TaggedSymbol
          )
        EXTERNAL_ORGANIZER_EXCLUDED =
          T.let(
            :external_organizer_excluded,
            Telnyx::CalendarConnection::AutoJoinPolicy::TaggedSymbol
          )
        PER_MEETING =
          T.let(
            :per_meeting,
            Telnyx::CalendarConnection::AutoJoinPolicy::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CalendarConnection::AutoJoinPolicy::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Calendar provider: Google Calendar or Microsoft Outlook.
      module Platform
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CalendarConnection::Platform) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GOOGLE_CALENDAR =
          T.let(
            :google_calendar,
            Telnyx::CalendarConnection::Platform::TaggedSymbol
          )
        MICROSOFT_OUTLOOK =
          T.let(
            :microsoft_outlook,
            Telnyx::CalendarConnection::Platform::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CalendarConnection::Platform::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Connection status.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CalendarConnection::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONNECTED =
          T.let(:connected, Telnyx::CalendarConnection::Status::TaggedSymbol)
        DISCONNECTED =
          T.let(:disconnected, Telnyx::CalendarConnection::Status::TaggedSymbol)
        ERROR = T.let(:error, Telnyx::CalendarConnection::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::CalendarConnection::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
