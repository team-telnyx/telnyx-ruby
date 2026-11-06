# typed: strong

module Telnyx
  module Models
    class CalendarConnectionUpdateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CalendarConnectionUpdateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::Models::CalendarConnectionUpdateResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::CalendarConnectionUpdateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::CalendarConnectionUpdateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::CalendarConnectionUpdateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::CalendarConnectionUpdateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Calendar connection ID.
        sig { returns(String) }
        attr_accessor :id

        # all_meetings joins eligible events; external_organizer_excluded requires the
        # connected user to be the organizer; per_meeting requires an explicit opt-in.
        sig do
          returns(
            Telnyx::Models::CalendarConnectionUpdateResponse::Data::AutoJoinPolicy::TaggedSymbol
          )
        end
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
            default_assistant:
              T.nilable(Telnyx::MeetingSessionAssistant::OrHash)
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
        sig do
          returns(
            Telnyx::Models::CalendarConnectionUpdateResponse::Data::Platform::TaggedSymbol
          )
        end
        attr_accessor :platform

        # Connected calendar email address.
        sig { returns(T.nilable(String)) }
        attr_accessor :platform_email

        # Connection status.
        sig do
          returns(
            Telnyx::Models::CalendarConnectionUpdateResponse::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Additional connection status detail.
        sig { returns(T.nilable(String)) }
        attr_accessor :status_detail

        # Last update time.
        sig { returns(Time) }
        attr_accessor :updated_at

        # Returned only when PATCH supplies a non-null default_webhook_url. Not returned
        # by list or retrieve. Save this secret to verify webhooks for future sessions.
        sig { returns(T.nilable(String)) }
        attr_reader :webhook_secret

        sig { params(webhook_secret: String).void }
        attr_writer :webhook_secret

        sig do
          params(
            id: String,
            auto_join_policy:
              Telnyx::Models::CalendarConnectionUpdateResponse::Data::AutoJoinPolicy::OrSymbol,
            bot_name: T.nilable(String),
            created_at: Time,
            default_assistant:
              T.nilable(Telnyx::MeetingSessionAssistant::OrHash),
            default_barge_in: T.nilable(T::Boolean),
            default_recording: T.nilable(T::Boolean),
            default_recording_export:
              T.nilable(Telnyx::MeetingSessionRecordingDestination::OrHash),
            default_summarize_on_end: T.nilable(T::Boolean),
            default_voice: T.nilable(String),
            default_webhook_url: T.nilable(String),
            platform:
              Telnyx::Models::CalendarConnectionUpdateResponse::Data::Platform::OrSymbol,
            platform_email: T.nilable(String),
            status:
              Telnyx::Models::CalendarConnectionUpdateResponse::Data::Status::OrSymbol,
            status_detail: T.nilable(String),
            updated_at: Time,
            webhook_secret: String
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
          updated_at:,
          # Returned only when PATCH supplies a non-null default_webhook_url. Not returned
          # by list or retrieve. Save this secret to verify webhooks for future sessions.
          webhook_secret: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              auto_join_policy:
                Telnyx::Models::CalendarConnectionUpdateResponse::Data::AutoJoinPolicy::TaggedSymbol,
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
              platform:
                Telnyx::Models::CalendarConnectionUpdateResponse::Data::Platform::TaggedSymbol,
              platform_email: T.nilable(String),
              status:
                Telnyx::Models::CalendarConnectionUpdateResponse::Data::Status::TaggedSymbol,
              status_detail: T.nilable(String),
              updated_at: Time,
              webhook_secret: String
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
              T.all(
                Symbol,
                Telnyx::Models::CalendarConnectionUpdateResponse::Data::AutoJoinPolicy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL_MEETINGS =
            T.let(
              :all_meetings,
              Telnyx::Models::CalendarConnectionUpdateResponse::Data::AutoJoinPolicy::TaggedSymbol
            )
          EXTERNAL_ORGANIZER_EXCLUDED =
            T.let(
              :external_organizer_excluded,
              Telnyx::Models::CalendarConnectionUpdateResponse::Data::AutoJoinPolicy::TaggedSymbol
            )
          PER_MEETING =
            T.let(
              :per_meeting,
              Telnyx::Models::CalendarConnectionUpdateResponse::Data::AutoJoinPolicy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::CalendarConnectionUpdateResponse::Data::AutoJoinPolicy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Calendar provider: Google Calendar or Microsoft Outlook.
        module Platform
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::CalendarConnectionUpdateResponse::Data::Platform
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GOOGLE_CALENDAR =
            T.let(
              :google_calendar,
              Telnyx::Models::CalendarConnectionUpdateResponse::Data::Platform::TaggedSymbol
            )
          MICROSOFT_OUTLOOK =
            T.let(
              :microsoft_outlook,
              Telnyx::Models::CalendarConnectionUpdateResponse::Data::Platform::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::CalendarConnectionUpdateResponse::Data::Platform::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Connection status.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::CalendarConnectionUpdateResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONNECTED =
            T.let(
              :connected,
              Telnyx::Models::CalendarConnectionUpdateResponse::Data::Status::TaggedSymbol
            )
          DISCONNECTED =
            T.let(
              :disconnected,
              Telnyx::Models::CalendarConnectionUpdateResponse::Data::Status::TaggedSymbol
            )
          ERROR =
            T.let(
              :error,
              Telnyx::Models::CalendarConnectionUpdateResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::CalendarConnectionUpdateResponse::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
