# typed: strong

module Telnyx
  module Models
    class MeetingSession < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::MeetingSession, Telnyx::Internal::AnyHash)
        end

      # Unique identifier for the meeting session.
      sig { returns(String) }
      attr_accessor :id

      # Identifier of the owning account.
      sig { returns(String) }
      attr_accessor :account_id

      # Assistant configuration if an assistant is attached, otherwise null.
      sig { returns(T.nilable(Telnyx::MeetingSessionAssistant)) }
      attr_reader :assistant

      sig do
        params(
          assistant: T.nilable(Telnyx::MeetingSessionAssistant::OrHash)
        ).void
      end
      attr_writer :assistant

      # Current state of the assistant, or null if no assistant is attached.
      sig do
        returns(T.nilable(Telnyx::MeetingSession::AssistantState::TaggedSymbol))
      end
      attr_accessor :assistant_state

      # Timestamp of the last assistant state change, or null.
      sig { returns(T.nilable(Time)) }
      attr_accessor :assistant_state_changed_at

      # The assistant's avatar, captured from its `avatar_settings` when the session was
      # created. For display only; later changes to the assistant do not update it.
      sig { returns(T.nilable(Telnyx::MeetingSession::Avatar)) }
      attr_reader :avatar

      sig do
        params(avatar: T.nilable(Telnyx::MeetingSession::Avatar::OrHash)).void
      end
      attr_writer :avatar

      # Current state of the avatar, or null if the session has no avatar. `starting`
      # until the avatar's video is playing, then `connected`; `degraded` when the
      # session has fallen back to voice-only (the `avatar.degraded` event carries the
      # reason); `disconnected` when the avatar has ended.
      sig do
        returns(T.nilable(Telnyx::MeetingSession::AvatarState::TaggedSymbol))
      end
      attr_accessor :avatar_state

      # Timestamp of the last avatar state change, or null.
      sig { returns(T.nilable(Time)) }
      attr_accessor :avatar_state_changed_at

      # Display name of the bot in the meeting.
      sig { returns(String) }
      attr_accessor :bot_name

      sig { returns(Telnyx::MeetingSession::Config) }
      attr_reader :config

      sig { params(config: Telnyx::MeetingSession::Config::OrHash).void }
      attr_writer :config

      # Timestamp when the session was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Timestamp when the session ended, or null if ongoing.
      sig { returns(T.nilable(Time)) }
      attr_accessor :ended_at

      # A machine-readable lifecycle reason, or null. Values include left_on_request,
      # meeting_ended, everyone_left, no_one_joined, silence_timeout,
      # max_duration_reached, admission_timeout, admission_denied, removed_from_meeting,
      # recording_permission_denied, meeting_not_found, meeting_not_started,
      # meeting_access_denied, meeting_full, cancelled, cancelled_calendar_disconnected,
      # cancelled_calendar_event_deleted, cancelled_calendar_superseded,
      # cancelled_policy, internal_error, and other. Treat this vocabulary as
      # extensible.
      sig { returns(T.nilable(String)) }
      attr_accessor :failure_reason

      # Scheduled join time, or null for immediate join.
      sig { returns(T.nilable(Time)) }
      attr_accessor :join_at

      # Timestamp when the session first became `active`, or null if it never became
      # active. This remains positive admission evidence after terminal transitions.
      sig { returns(T.nilable(Time)) }
      attr_accessor :joined_at

      # The meeting URL the bot joins.
      sig { returns(String) }
      attr_accessor :meeting_url

      # Arbitrary key-value metadata attached to the session.
      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :metadata

      # Detected meeting platform.
      sig { returns(Telnyx::MeetingSession::Platform::TaggedSymbol) }
      attr_accessor :platform

      # Always telnyx.
      sig { returns(Symbol) }
      attr_accessor :provider

      # Whether the session is being recorded.
      sig { returns(T::Boolean) }
      attr_accessor :recording

      # Lifecycle status. `waiting_for_admission` means the bot reached the meeting
      # lobby and may require host approval. `active` means the bot entered the
      # meeting/media path. `ended` alone does not prove attendance; use non-null
      # `joined_at` as positive evidence that the session became active.
      # `admission_denied` is reserved for an explicit provider denial, while
      # cancellation or another termination can end a never-admitted session as `ended`.
      sig { returns(Telnyx::MeetingSession::Status::TaggedSymbol) }
      attr_accessor :status

      # A machine-readable lifecycle reason, or null. Values include left_on_request,
      # meeting_ended, everyone_left, no_one_joined, silence_timeout,
      # max_duration_reached, admission_timeout, admission_denied, removed_from_meeting,
      # recording_permission_denied, meeting_not_found, meeting_not_started,
      # meeting_access_denied, meeting_full, cancelled, cancelled_calendar_disconnected,
      # cancelled_calendar_event_deleted, cancelled_calendar_superseded,
      # cancelled_policy, internal_error, and other. Treat this vocabulary as
      # extensible.
      sig { returns(T.nilable(String)) }
      attr_accessor :status_detail

      # Timestamp of the last update to the session.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Webhook endpoint for session lifecycle callbacks, or null if not configured.
      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_url

      # Customer Storage recording reference. Pending is not downloadable; exported
      # means upload was verified; failed is terminal. Download with ordinary Storage
      # authorization. No presigned URL is returned.
      sig { returns(T.nilable(Telnyx::MeetingSessionRecordingExport)) }
      attr_reader :recording_export

      sig do
        params(
          recording_export:
            T.nilable(Telnyx::MeetingSessionRecordingExport::OrHash)
        ).void
      end
      attr_writer :recording_export

      # Optional observation time on session list items. Retrieve the individual session
      # when current state is required.
      sig { returns(T.nilable(Time)) }
      attr_reader :remote_state_observed_at

      sig { params(remote_state_observed_at: Time).void }
      attr_writer :remote_state_observed_at

      # Represents a meeting session. Core serializer fields are required;
      # platform-specific fields are optional. Nullable fields use null when absent. No
      # actor, provider-bot, idempotency, routing, key, or internal fields are exposed.
      sig do
        params(
          id: String,
          account_id: String,
          assistant: T.nilable(Telnyx::MeetingSessionAssistant::OrHash),
          assistant_state:
            T.nilable(Telnyx::MeetingSession::AssistantState::OrSymbol),
          assistant_state_changed_at: T.nilable(Time),
          avatar: T.nilable(Telnyx::MeetingSession::Avatar::OrHash),
          avatar_state:
            T.nilable(Telnyx::MeetingSession::AvatarState::OrSymbol),
          avatar_state_changed_at: T.nilable(Time),
          bot_name: String,
          config: Telnyx::MeetingSession::Config::OrHash,
          created_at: Time,
          ended_at: T.nilable(Time),
          failure_reason: T.nilable(String),
          join_at: T.nilable(Time),
          joined_at: T.nilable(Time),
          meeting_url: String,
          metadata: T::Hash[Symbol, T.anything],
          platform: Telnyx::MeetingSession::Platform::OrSymbol,
          recording: T::Boolean,
          status: Telnyx::MeetingSession::Status::OrSymbol,
          status_detail: T.nilable(String),
          updated_at: Time,
          webhook_url: T.nilable(String),
          recording_export:
            T.nilable(Telnyx::MeetingSessionRecordingExport::OrHash),
          remote_state_observed_at: Time,
          provider: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the meeting session.
        id:,
        # Identifier of the owning account.
        account_id:,
        # Assistant configuration if an assistant is attached, otherwise null.
        assistant:,
        # Current state of the assistant, or null if no assistant is attached.
        assistant_state:,
        # Timestamp of the last assistant state change, or null.
        assistant_state_changed_at:,
        # The assistant's avatar, captured from its `avatar_settings` when the session was
        # created. For display only; later changes to the assistant do not update it.
        avatar:,
        # Current state of the avatar, or null if the session has no avatar. `starting`
        # until the avatar's video is playing, then `connected`; `degraded` when the
        # session has fallen back to voice-only (the `avatar.degraded` event carries the
        # reason); `disconnected` when the avatar has ended.
        avatar_state:,
        # Timestamp of the last avatar state change, or null.
        avatar_state_changed_at:,
        # Display name of the bot in the meeting.
        bot_name:,
        config:,
        # Timestamp when the session was created.
        created_at:,
        # Timestamp when the session ended, or null if ongoing.
        ended_at:,
        # A machine-readable lifecycle reason, or null. Values include left_on_request,
        # meeting_ended, everyone_left, no_one_joined, silence_timeout,
        # max_duration_reached, admission_timeout, admission_denied, removed_from_meeting,
        # recording_permission_denied, meeting_not_found, meeting_not_started,
        # meeting_access_denied, meeting_full, cancelled, cancelled_calendar_disconnected,
        # cancelled_calendar_event_deleted, cancelled_calendar_superseded,
        # cancelled_policy, internal_error, and other. Treat this vocabulary as
        # extensible.
        failure_reason:,
        # Scheduled join time, or null for immediate join.
        join_at:,
        # Timestamp when the session first became `active`, or null if it never became
        # active. This remains positive admission evidence after terminal transitions.
        joined_at:,
        # The meeting URL the bot joins.
        meeting_url:,
        # Arbitrary key-value metadata attached to the session.
        metadata:,
        # Detected meeting platform.
        platform:,
        # Whether the session is being recorded.
        recording:,
        # Lifecycle status. `waiting_for_admission` means the bot reached the meeting
        # lobby and may require host approval. `active` means the bot entered the
        # meeting/media path. `ended` alone does not prove attendance; use non-null
        # `joined_at` as positive evidence that the session became active.
        # `admission_denied` is reserved for an explicit provider denial, while
        # cancellation or another termination can end a never-admitted session as `ended`.
        status:,
        # A machine-readable lifecycle reason, or null. Values include left_on_request,
        # meeting_ended, everyone_left, no_one_joined, silence_timeout,
        # max_duration_reached, admission_timeout, admission_denied, removed_from_meeting,
        # recording_permission_denied, meeting_not_found, meeting_not_started,
        # meeting_access_denied, meeting_full, cancelled, cancelled_calendar_disconnected,
        # cancelled_calendar_event_deleted, cancelled_calendar_superseded,
        # cancelled_policy, internal_error, and other. Treat this vocabulary as
        # extensible.
        status_detail:,
        # Timestamp of the last update to the session.
        updated_at:,
        # Webhook endpoint for session lifecycle callbacks, or null if not configured.
        webhook_url:,
        # Customer Storage recording reference. Pending is not downloadable; exported
        # means upload was verified; failed is terminal. Download with ordinary Storage
        # authorization. No presigned URL is returned.
        recording_export: nil,
        # Optional observation time on session list items. Retrieve the individual session
        # when current state is required.
        remote_state_observed_at: nil,
        # Always telnyx.
        provider: :telnyx
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            assistant: T.nilable(Telnyx::MeetingSessionAssistant),
            assistant_state:
              T.nilable(Telnyx::MeetingSession::AssistantState::TaggedSymbol),
            assistant_state_changed_at: T.nilable(Time),
            avatar: T.nilable(Telnyx::MeetingSession::Avatar),
            avatar_state:
              T.nilable(Telnyx::MeetingSession::AvatarState::TaggedSymbol),
            avatar_state_changed_at: T.nilable(Time),
            bot_name: String,
            config: Telnyx::MeetingSession::Config,
            created_at: Time,
            ended_at: T.nilable(Time),
            failure_reason: T.nilable(String),
            join_at: T.nilable(Time),
            joined_at: T.nilable(Time),
            meeting_url: String,
            metadata: T::Hash[Symbol, T.anything],
            platform: Telnyx::MeetingSession::Platform::TaggedSymbol,
            provider: Symbol,
            recording: T::Boolean,
            status: Telnyx::MeetingSession::Status::TaggedSymbol,
            status_detail: T.nilable(String),
            updated_at: Time,
            webhook_url: T.nilable(String),
            recording_export: T.nilable(Telnyx::MeetingSessionRecordingExport),
            remote_state_observed_at: Time
          }
        )
      end
      def to_hash
      end

      # Current state of the assistant, or null if no assistant is attached.
      module AssistantState
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::MeetingSession::AssistantState) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STARTING =
          T.let(:starting, Telnyx::MeetingSession::AssistantState::TaggedSymbol)
        CONNECTED =
          T.let(
            :connected,
            Telnyx::MeetingSession::AssistantState::TaggedSymbol
          )
        FAILED =
          T.let(:failed, Telnyx::MeetingSession::AssistantState::TaggedSymbol)
        ENDED =
          T.let(:ended, Telnyx::MeetingSession::AssistantState::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::MeetingSession::AssistantState::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Avatar < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::MeetingSession::Avatar, Telnyx::Internal::AnyHash)
          end

        # Identifier of the avatar.
        sig { returns(String) }
        attr_accessor :avatar_id

        # Identifier of the avatar's background.
        sig { returns(String) }
        attr_accessor :background_id

        # Avatar rendering model, for example `foxtrot-1`.
        sig { returns(String) }
        attr_accessor :model

        # Avatar provider identifier.
        sig { returns(Symbol) }
        attr_accessor :provider

        # The assistant's avatar, captured from its `avatar_settings` when the session was
        # created. For display only; later changes to the assistant do not update it.
        sig do
          params(
            avatar_id: String,
            background_id: String,
            model: String,
            provider: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifier of the avatar.
          avatar_id:,
          # Identifier of the avatar's background.
          background_id:,
          # Avatar rendering model, for example `foxtrot-1`.
          model:,
          # Avatar provider identifier.
          provider: :telnyx
        )
        end

        sig do
          override.returns(
            {
              avatar_id: String,
              background_id: String,
              model: String,
              provider: Symbol
            }
          )
        end
        def to_hash
        end
      end

      # Current state of the avatar, or null if the session has no avatar. `starting`
      # until the avatar's video is playing, then `connected`; `degraded` when the
      # session has fallen back to voice-only (the `avatar.degraded` event carries the
      # reason); `disconnected` when the avatar has ended.
      module AvatarState
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::MeetingSession::AvatarState) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STARTING =
          T.let(:starting, Telnyx::MeetingSession::AvatarState::TaggedSymbol)
        CONNECTED =
          T.let(:connected, Telnyx::MeetingSession::AvatarState::TaggedSymbol)
        DEGRADED =
          T.let(:degraded, Telnyx::MeetingSession::AvatarState::TaggedSymbol)
        DISCONNECTED =
          T.let(
            :disconnected,
            Telnyx::MeetingSession::AvatarState::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::MeetingSession::AvatarState::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Config < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::MeetingSession::Config, Telnyx::Internal::AnyHash)
          end

        # When enabled, a human participant `speech_on` event interrupts and stops the
        # current bot audio; it does not bypass admission or initiate speech. Assistant
        # sessions reject `barge_in: true`.
        sig { returns(T::Boolean) }
        attr_accessor :barge_in

        # The message posted to chat on join, or null when unset.
        sig { returns(T.nilable(String)) }
        attr_accessor :chat_on_enter

        # Detection settings. Enabling audio or video detection is currently unsupported.
        sig { returns(Telnyx::MeetingSession::Config::DeepfakeDetection) }
        attr_reader :deepfake_detection

        sig do
          params(
            deepfake_detection:
              Telnyx::MeetingSession::Config::DeepfakeDetection::OrHash
          ).void
        end
        attr_writer :deepfake_detection

        # Text spoken on meeting entry, or null if not set.
        sig { returns(T.nilable(String)) }
        attr_accessor :speak_on_enter

        # Whether a summary artifact is generated on session end.
        sig { returns(T::Boolean) }
        attr_accessor :summarize_on_end

        # Configured voice identifier, or null if not set.
        sig { returns(T.nilable(String)) }
        attr_accessor :voice

        # Automatic departure settings for Google Meet and Teams. Omitted fields use the
        # default behavior. Set at creation; cannot be changed later. Zoom ignores this
        # policy.
        sig { returns(T.nilable(Telnyx::MeetingSessionLeavePolicy)) }
        attr_reader :leave_policy

        sig do
          params(leave_policy: Telnyx::MeetingSessionLeavePolicy::OrHash).void
        end
        attr_writer :leave_policy

        # Recording intent set at creation for Google Meet and Teams. Distinct from the
        # top-level recording field, which reports current activity.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :recording

        sig { params(recording: T::Boolean).void }
        attr_writer :recording

        # Non-default recording layout. Omitted for the default speaker_view layout.
        sig do
          returns(
            T.nilable(
              Telnyx::MeetingSession::Config::RecordingView::TaggedSymbol
            )
          )
        end
        attr_reader :recording_view

        sig do
          params(
            recording_view:
              Telnyx::MeetingSession::Config::RecordingView::OrSymbol
          ).void
        end
        attr_writer :recording_view

        sig do
          params(
            barge_in: T::Boolean,
            chat_on_enter: T.nilable(String),
            deepfake_detection:
              Telnyx::MeetingSession::Config::DeepfakeDetection::OrHash,
            speak_on_enter: T.nilable(String),
            summarize_on_end: T::Boolean,
            voice: T.nilable(String),
            leave_policy: Telnyx::MeetingSessionLeavePolicy::OrHash,
            recording: T::Boolean,
            recording_view:
              Telnyx::MeetingSession::Config::RecordingView::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # When enabled, a human participant `speech_on` event interrupts and stops the
          # current bot audio; it does not bypass admission or initiate speech. Assistant
          # sessions reject `barge_in: true`.
          barge_in:,
          # The message posted to chat on join, or null when unset.
          chat_on_enter:,
          # Detection settings. Enabling audio or video detection is currently unsupported.
          deepfake_detection:,
          # Text spoken on meeting entry, or null if not set.
          speak_on_enter:,
          # Whether a summary artifact is generated on session end.
          summarize_on_end:,
          # Configured voice identifier, or null if not set.
          voice:,
          # Automatic departure settings for Google Meet and Teams. Omitted fields use the
          # default behavior. Set at creation; cannot be changed later. Zoom ignores this
          # policy.
          leave_policy: nil,
          # Recording intent set at creation for Google Meet and Teams. Distinct from the
          # top-level recording field, which reports current activity.
          recording: nil,
          # Non-default recording layout. Omitted for the default speaker_view layout.
          recording_view: nil
        )
        end

        sig do
          override.returns(
            {
              barge_in: T::Boolean,
              chat_on_enter: T.nilable(String),
              deepfake_detection:
                Telnyx::MeetingSession::Config::DeepfakeDetection,
              speak_on_enter: T.nilable(String),
              summarize_on_end: T::Boolean,
              voice: T.nilable(String),
              leave_policy: Telnyx::MeetingSessionLeavePolicy,
              recording: T::Boolean,
              recording_view:
                Telnyx::MeetingSession::Config::RecordingView::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class DeepfakeDetection < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MeetingSession::Config::DeepfakeDetection,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :audio

          sig { returns(T::Boolean) }
          attr_accessor :video

          # Detection settings. Enabling audio or video detection is currently unsupported.
          sig do
            params(audio: T::Boolean, video: T::Boolean).returns(
              T.attached_class
            )
          end
          def self.new(audio:, video:)
          end

          sig { override.returns({ audio: T::Boolean, video: T::Boolean }) }
          def to_hash
          end
        end

        # Non-default recording layout. Omitted for the default speaker_view layout.
        module RecordingView
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::MeetingSession::Config::RecordingView)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GALLERY_VIEW =
            T.let(
              :gallery_view,
              Telnyx::MeetingSession::Config::RecordingView::TaggedSymbol
            )
          SPEAKER_VIEW_NO_SIDEBAR =
            T.let(
              :speaker_view_no_sidebar,
              Telnyx::MeetingSession::Config::RecordingView::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MeetingSession::Config::RecordingView::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Detected meeting platform.
      module Platform
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::MeetingSession::Platform) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ZOOM = T.let(:zoom, Telnyx::MeetingSession::Platform::TaggedSymbol)
        GOOGLE_MEET =
          T.let(:google_meet, Telnyx::MeetingSession::Platform::TaggedSymbol)
        TEAMS = T.let(:teams, Telnyx::MeetingSession::Platform::TaggedSymbol)
        WEBEX = T.let(:webex, Telnyx::MeetingSession::Platform::TaggedSymbol)
        UNKNOWN =
          T.let(:unknown, Telnyx::MeetingSession::Platform::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::MeetingSession::Platform::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Lifecycle status. `waiting_for_admission` means the bot reached the meeting
      # lobby and may require host approval. `active` means the bot entered the
      # meeting/media path. `ended` alone does not prove attendance; use non-null
      # `joined_at` as positive evidence that the session became active.
      # `admission_denied` is reserved for an explicit provider denial, while
      # cancellation or another termination can end a never-admitted session as `ended`.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::MeetingSession::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SCHEDULED =
          T.let(:scheduled, Telnyx::MeetingSession::Status::TaggedSymbol)
        JOINING = T.let(:joining, Telnyx::MeetingSession::Status::TaggedSymbol)
        WAITING_FOR_ADMISSION =
          T.let(
            :waiting_for_admission,
            Telnyx::MeetingSession::Status::TaggedSymbol
          )
        ACTIVE = T.let(:active, Telnyx::MeetingSession::Status::TaggedSymbol)
        LEAVING = T.let(:leaving, Telnyx::MeetingSession::Status::TaggedSymbol)
        ENDED = T.let(:ended, Telnyx::MeetingSession::Status::TaggedSymbol)
        FAILED = T.let(:failed, Telnyx::MeetingSession::Status::TaggedSymbol)
        ADMISSION_DENIED =
          T.let(:admission_denied, Telnyx::MeetingSession::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::MeetingSession::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
