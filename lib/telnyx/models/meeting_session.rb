# frozen_string_literal: true

module Telnyx
  module Models
    class MeetingSession < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the meeting session.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   Identifier of the owning account.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute assistant
      #   Assistant configuration if an assistant is attached, otherwise null.
      #
      #   @return [Telnyx::Models::MeetingSessionAssistant, nil]
      required :assistant, -> { Telnyx::MeetingSessionAssistant }, nil?: true

      # @!attribute assistant_state
      #   Current state of the assistant, or null if no assistant is attached.
      #
      #   @return [Symbol, Telnyx::Models::MeetingSession::AssistantState, nil]
      required :assistant_state, enum: -> { Telnyx::MeetingSession::AssistantState }, nil?: true

      # @!attribute assistant_state_changed_at
      #   Timestamp of the last assistant state change, or null.
      #
      #   @return [Time, nil]
      required :assistant_state_changed_at, Time, nil?: true

      # @!attribute avatar
      #   The assistant's avatar, captured from its `avatar_settings` when the session was
      #   created. For display only; later changes to the assistant do not update it.
      #
      #   @return [Telnyx::Models::MeetingSession::Avatar, nil]
      required :avatar, -> { Telnyx::MeetingSession::Avatar }, nil?: true

      # @!attribute avatar_state
      #   Current state of the avatar, or null if the session has no avatar. `starting`
      #   until the avatar's video is playing, then `connected`; `degraded` when the
      #   session has fallen back to voice-only (the `avatar.degraded` event carries the
      #   reason); `disconnected` when the avatar has ended.
      #
      #   @return [Symbol, Telnyx::Models::MeetingSession::AvatarState, nil]
      required :avatar_state, enum: -> { Telnyx::MeetingSession::AvatarState }, nil?: true

      # @!attribute avatar_state_changed_at
      #   Timestamp of the last avatar state change, or null.
      #
      #   @return [Time, nil]
      required :avatar_state_changed_at, Time, nil?: true

      # @!attribute bot_name
      #   Display name of the bot in the meeting.
      #
      #   @return [String]
      required :bot_name, String

      # @!attribute config
      #
      #   @return [Telnyx::Models::MeetingSession::Config]
      required :config, -> { Telnyx::MeetingSession::Config }

      # @!attribute created_at
      #   Timestamp when the session was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute ended_at
      #   Timestamp when the session ended, or null if ongoing.
      #
      #   @return [Time, nil]
      required :ended_at, Time, nil?: true

      # @!attribute failure_reason
      #   A machine-readable lifecycle reason, or null. Values include left_on_request,
      #   meeting_ended, everyone_left, no_one_joined, silence_timeout,
      #   max_duration_reached, admission_timeout, admission_denied, removed_from_meeting,
      #   recording_permission_denied, meeting_not_found, meeting_not_started,
      #   meeting_access_denied, meeting_full, cancelled, cancelled_calendar_disconnected,
      #   cancelled_calendar_event_deleted, cancelled_calendar_superseded,
      #   cancelled_policy, internal_error, and other. Treat this vocabulary as
      #   extensible.
      #
      #   @return [String, nil]
      required :failure_reason, String, nil?: true

      # @!attribute join_at
      #   Scheduled join time, or null for immediate join.
      #
      #   @return [Time, nil]
      required :join_at, Time, nil?: true

      # @!attribute joined_at
      #   Timestamp when the session first became `active`, or null if it never became
      #   active. This remains positive admission evidence after terminal transitions.
      #
      #   @return [Time, nil]
      required :joined_at, Time, nil?: true

      # @!attribute meeting_url
      #   The meeting URL the bot joins.
      #
      #   @return [String]
      required :meeting_url, String

      # @!attribute metadata
      #   Arbitrary key-value metadata attached to the session.
      #
      #   @return [Hash{Symbol=>Object}]
      required :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute platform
      #   Detected meeting platform.
      #
      #   @return [Symbol, Telnyx::Models::MeetingSession::Platform]
      required :platform, enum: -> { Telnyx::MeetingSession::Platform }

      # @!attribute provider
      #   Always telnyx.
      #
      #   @return [Symbol, :telnyx]
      required :provider, const: :telnyx

      # @!attribute recording
      #   Whether the session is being recorded.
      #
      #   @return [Boolean]
      required :recording, Telnyx::Internal::Type::Boolean

      # @!attribute status
      #   Lifecycle status. `waiting_for_admission` means the bot reached the meeting
      #   lobby and may require host approval. `active` means the bot entered the
      #   meeting/media path. `ended` alone does not prove attendance; use non-null
      #   `joined_at` as positive evidence that the session became active.
      #   `admission_denied` is reserved for an explicit provider denial, while
      #   cancellation or another termination can end a never-admitted session as `ended`.
      #
      #   @return [Symbol, Telnyx::Models::MeetingSession::Status]
      required :status, enum: -> { Telnyx::MeetingSession::Status }

      # @!attribute status_detail
      #   A machine-readable lifecycle reason, or null. Values include left_on_request,
      #   meeting_ended, everyone_left, no_one_joined, silence_timeout,
      #   max_duration_reached, admission_timeout, admission_denied, removed_from_meeting,
      #   recording_permission_denied, meeting_not_found, meeting_not_started,
      #   meeting_access_denied, meeting_full, cancelled, cancelled_calendar_disconnected,
      #   cancelled_calendar_event_deleted, cancelled_calendar_superseded,
      #   cancelled_policy, internal_error, and other. Treat this vocabulary as
      #   extensible.
      #
      #   @return [String, nil]
      required :status_detail, String, nil?: true

      # @!attribute updated_at
      #   Timestamp of the last update to the session.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute webhook_url
      #   Webhook endpoint for session lifecycle callbacks, or null if not configured.
      #
      #   @return [String, nil]
      required :webhook_url, String, nil?: true

      # @!attribute recording_export
      #   Customer Storage recording reference. Pending is not downloadable; exported
      #   means upload was verified; failed is terminal. Download with ordinary Storage
      #   authorization. No presigned URL is returned.
      #
      #   @return [Telnyx::Models::MeetingSessionRecordingExport, nil]
      optional :recording_export, -> { Telnyx::MeetingSessionRecordingExport }, nil?: true

      # @!attribute remote_state_observed_at
      #   Optional observation time on session list items. Retrieve the individual session
      #   when current state is required.
      #
      #   @return [Time, nil]
      optional :remote_state_observed_at, Time

      # @!method initialize(id:, account_id:, assistant:, assistant_state:, assistant_state_changed_at:, avatar:, avatar_state:, avatar_state_changed_at:, bot_name:, config:, created_at:, ended_at:, failure_reason:, join_at:, joined_at:, meeting_url:, metadata:, platform:, recording:, status:, status_detail:, updated_at:, webhook_url:, recording_export: nil, remote_state_observed_at: nil, provider: :telnyx)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MeetingSession} for more details.
      #
      #   Represents a meeting session. Core serializer fields are required;
      #   platform-specific fields are optional. Nullable fields use null when absent. No
      #   actor, provider-bot, idempotency, routing, key, or internal fields are exposed.
      #
      #   @param id [String] Unique identifier for the meeting session.
      #
      #   @param account_id [String] Identifier of the owning account.
      #
      #   @param assistant [Telnyx::Models::MeetingSessionAssistant, nil] Assistant configuration if an assistant is attached, otherwise null.
      #
      #   @param assistant_state [Symbol, Telnyx::Models::MeetingSession::AssistantState, nil] Current state of the assistant, or null if no assistant is attached.
      #
      #   @param assistant_state_changed_at [Time, nil] Timestamp of the last assistant state change, or null.
      #
      #   @param avatar [Telnyx::Models::MeetingSession::Avatar, nil] The assistant's avatar, captured from its `avatar_settings` when the session was
      #
      #   @param avatar_state [Symbol, Telnyx::Models::MeetingSession::AvatarState, nil] Current state of the avatar, or null if the session has no avatar. `starting` un
      #
      #   @param avatar_state_changed_at [Time, nil] Timestamp of the last avatar state change, or null.
      #
      #   @param bot_name [String] Display name of the bot in the meeting.
      #
      #   @param config [Telnyx::Models::MeetingSession::Config]
      #
      #   @param created_at [Time] Timestamp when the session was created.
      #
      #   @param ended_at [Time, nil] Timestamp when the session ended, or null if ongoing.
      #
      #   @param failure_reason [String, nil] A machine-readable lifecycle reason, or null. Values include left_on_request, me
      #
      #   @param join_at [Time, nil] Scheduled join time, or null for immediate join.
      #
      #   @param joined_at [Time, nil] Timestamp when the session first became `active`, or null if it never became act
      #
      #   @param meeting_url [String] The meeting URL the bot joins.
      #
      #   @param metadata [Hash{Symbol=>Object}] Arbitrary key-value metadata attached to the session.
      #
      #   @param platform [Symbol, Telnyx::Models::MeetingSession::Platform] Detected meeting platform.
      #
      #   @param recording [Boolean] Whether the session is being recorded.
      #
      #   @param status [Symbol, Telnyx::Models::MeetingSession::Status] Lifecycle status. `waiting_for_admission` means the bot reached the meeting lobb
      #
      #   @param status_detail [String, nil] A machine-readable lifecycle reason, or null. Values include left_on_request, me
      #
      #   @param updated_at [Time] Timestamp of the last update to the session.
      #
      #   @param webhook_url [String, nil] Webhook endpoint for session lifecycle callbacks, or null if not configured.
      #
      #   @param recording_export [Telnyx::Models::MeetingSessionRecordingExport, nil] Customer Storage recording reference. Pending is not downloadable; exported mean
      #
      #   @param remote_state_observed_at [Time] Optional observation time on session list items. Retrieve the individual session
      #
      #   @param provider [Symbol, :telnyx] Always telnyx.

      # Current state of the assistant, or null if no assistant is attached.
      #
      # @see Telnyx::Models::MeetingSession#assistant_state
      module AssistantState
        extend Telnyx::Internal::Type::Enum

        STARTING = :starting
        CONNECTED = :connected
        FAILED = :failed
        ENDED = :ended

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::MeetingSession#avatar
      class Avatar < Telnyx::Internal::Type::BaseModel
        # @!attribute avatar_id
        #   Identifier of the avatar.
        #
        #   @return [String]
        required :avatar_id, String

        # @!attribute background_id
        #   Identifier of the avatar's background.
        #
        #   @return [String]
        required :background_id, String

        # @!attribute model
        #   Avatar rendering model, for example `foxtrot-1`.
        #
        #   @return [String]
        required :model, String

        # @!attribute provider
        #   Avatar provider identifier.
        #
        #   @return [Symbol, :telnyx]
        required :provider, const: :telnyx

        # @!method initialize(avatar_id:, background_id:, model:, provider: :telnyx)
        #   The assistant's avatar, captured from its `avatar_settings` when the session was
        #   created. For display only; later changes to the assistant do not update it.
        #
        #   @param avatar_id [String] Identifier of the avatar.
        #
        #   @param background_id [String] Identifier of the avatar's background.
        #
        #   @param model [String] Avatar rendering model, for example `foxtrot-1`.
        #
        #   @param provider [Symbol, :telnyx] Avatar provider identifier.
      end

      # Current state of the avatar, or null if the session has no avatar. `starting`
      # until the avatar's video is playing, then `connected`; `degraded` when the
      # session has fallen back to voice-only (the `avatar.degraded` event carries the
      # reason); `disconnected` when the avatar has ended.
      #
      # @see Telnyx::Models::MeetingSession#avatar_state
      module AvatarState
        extend Telnyx::Internal::Type::Enum

        STARTING = :starting
        CONNECTED = :connected
        DEGRADED = :degraded
        DISCONNECTED = :disconnected

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::MeetingSession#config
      class Config < Telnyx::Internal::Type::BaseModel
        # @!attribute barge_in
        #   When enabled, a human participant `speech_on` event interrupts and stops the
        #   current bot audio; it does not bypass admission or initiate speech. Assistant
        #   sessions reject `barge_in: true`.
        #
        #   @return [Boolean]
        required :barge_in, Telnyx::Internal::Type::Boolean

        # @!attribute chat_on_enter
        #   The message posted to chat on join, or null when unset.
        #
        #   @return [String, nil]
        required :chat_on_enter, String, nil?: true

        # @!attribute deepfake_detection
        #   Detection settings. Enabling audio or video detection is currently unsupported.
        #
        #   @return [Telnyx::Models::MeetingSession::Config::DeepfakeDetection]
        required :deepfake_detection, -> { Telnyx::MeetingSession::Config::DeepfakeDetection }

        # @!attribute speak_on_enter
        #   Text spoken on meeting entry, or null if not set.
        #
        #   @return [String, nil]
        required :speak_on_enter, String, nil?: true

        # @!attribute summarize_on_end
        #   Whether a summary artifact is generated on session end.
        #
        #   @return [Boolean]
        required :summarize_on_end, Telnyx::Internal::Type::Boolean

        # @!attribute voice
        #   Configured voice identifier, or null if not set.
        #
        #   @return [String, nil]
        required :voice, String, nil?: true

        # @!attribute leave_policy
        #   Automatic departure settings for Google Meet and Teams. Omitted fields use the
        #   default behavior. Set at creation; cannot be changed later. Zoom ignores this
        #   policy.
        #
        #   @return [Telnyx::Models::MeetingSessionLeavePolicy, nil]
        optional :leave_policy, -> { Telnyx::MeetingSessionLeavePolicy }

        # @!attribute recording
        #   Recording intent set at creation for Google Meet and Teams. Distinct from the
        #   top-level recording field, which reports current activity.
        #
        #   @return [Boolean, nil]
        optional :recording, Telnyx::Internal::Type::Boolean

        # @!attribute recording_view
        #   Non-default recording layout. Omitted for the default speaker_view layout.
        #
        #   @return [Symbol, Telnyx::Models::MeetingSession::Config::RecordingView, nil]
        optional :recording_view, enum: -> { Telnyx::MeetingSession::Config::RecordingView }

        # @!method initialize(barge_in:, chat_on_enter:, deepfake_detection:, speak_on_enter:, summarize_on_end:, voice:, leave_policy: nil, recording: nil, recording_view: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MeetingSession::Config} for more details.
        #
        #   @param barge_in [Boolean] When enabled, a human participant `speech_on` event interrupts and stops the cur
        #
        #   @param chat_on_enter [String, nil] The message posted to chat on join, or null when unset.
        #
        #   @param deepfake_detection [Telnyx::Models::MeetingSession::Config::DeepfakeDetection] Detection settings. Enabling audio or video detection is currently unsupported.
        #
        #   @param speak_on_enter [String, nil] Text spoken on meeting entry, or null if not set.
        #
        #   @param summarize_on_end [Boolean] Whether a summary artifact is generated on session end.
        #
        #   @param voice [String, nil] Configured voice identifier, or null if not set.
        #
        #   @param leave_policy [Telnyx::Models::MeetingSessionLeavePolicy] Automatic departure settings for Google Meet and Teams. Omitted fields use the d
        #
        #   @param recording [Boolean] Recording intent set at creation for Google Meet and Teams. Distinct from the to
        #
        #   @param recording_view [Symbol, Telnyx::Models::MeetingSession::Config::RecordingView] Non-default recording layout. Omitted for the default speaker_view layout.

        # @see Telnyx::Models::MeetingSession::Config#deepfake_detection
        class DeepfakeDetection < Telnyx::Internal::Type::BaseModel
          # @!attribute audio
          #
          #   @return [Boolean]
          required :audio, Telnyx::Internal::Type::Boolean

          # @!attribute video
          #
          #   @return [Boolean]
          required :video, Telnyx::Internal::Type::Boolean

          # @!method initialize(audio:, video:)
          #   Detection settings. Enabling audio or video detection is currently unsupported.
          #
          #   @param audio [Boolean]
          #   @param video [Boolean]
        end

        # Non-default recording layout. Omitted for the default speaker_view layout.
        #
        # @see Telnyx::Models::MeetingSession::Config#recording_view
        module RecordingView
          extend Telnyx::Internal::Type::Enum

          GALLERY_VIEW = :gallery_view
          SPEAKER_VIEW_NO_SIDEBAR = :speaker_view_no_sidebar

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Detected meeting platform.
      #
      # @see Telnyx::Models::MeetingSession#platform
      module Platform
        extend Telnyx::Internal::Type::Enum

        ZOOM = :zoom
        GOOGLE_MEET = :google_meet
        TEAMS = :teams
        WEBEX = :webex
        UNKNOWN = :unknown

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Lifecycle status. `waiting_for_admission` means the bot reached the meeting
      # lobby and may require host approval. `active` means the bot entered the
      # meeting/media path. `ended` alone does not prove attendance; use non-null
      # `joined_at` as positive evidence that the session became active.
      # `admission_denied` is reserved for an explicit provider denial, while
      # cancellation or another termination can end a never-admitted session as `ended`.
      #
      # @see Telnyx::Models::MeetingSession#status
      module Status
        extend Telnyx::Internal::Type::Enum

        SCHEDULED = :scheduled
        JOINING = :joining
        WAITING_FOR_ADMISSION = :waiting_for_admission
        ACTIVE = :active
        LEAVING = :leaving
        ENDED = :ended
        FAILED = :failed
        ADMISSION_DENIED = :admission_denied

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
