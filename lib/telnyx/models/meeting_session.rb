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
      #   @return [Telnyx::Models::MeetingSession::Assistant, nil]
      required :assistant, -> { Telnyx::MeetingSession::Assistant }, nil?: true

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
      #   Avatar configuration if an avatar is attached, otherwise null.
      #
      #   @return [Telnyx::Models::MeetingSession::Avatar, nil]
      required :avatar, -> { Telnyx::MeetingSession::Avatar }, nil?: true

      # @!attribute avatar_state
      #   Current state of the avatar connection, or null if no avatar is attached.
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
      #   Human-readable failure reason if the session failed, or null.
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
      #   Provider handling the meeting session.
      #
      #   @return [String]
      required :provider, String

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
      #   Additional human-readable detail about the status, or null.
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

      # @!method initialize(id:, account_id:, assistant:, assistant_state:, assistant_state_changed_at:, avatar:, avatar_state:, avatar_state_changed_at:, bot_name:, config:, created_at:, ended_at:, failure_reason:, join_at:, joined_at:, meeting_url:, metadata:, platform:, provider:, recording:, status:, status_detail:, updated_at:, webhook_url:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MeetingSession} for more details.
      #
      #   Represents a meeting session. All serializer fields are present and required;
      #   nullable fields use null when absent. No actor, provider-bot, idempotency,
      #   routing, key, or internal fields are exposed.
      #
      #   @param id [String] Unique identifier for the meeting session.
      #
      #   @param account_id [String] Identifier of the owning account.
      #
      #   @param assistant [Telnyx::Models::MeetingSession::Assistant, nil] Assistant configuration if an assistant is attached, otherwise null.
      #
      #   @param assistant_state [Symbol, Telnyx::Models::MeetingSession::AssistantState, nil] Current state of the assistant, or null if no assistant is attached.
      #
      #   @param assistant_state_changed_at [Time, nil] Timestamp of the last assistant state change, or null.
      #
      #   @param avatar [Telnyx::Models::MeetingSession::Avatar, nil] Avatar configuration if an avatar is attached, otherwise null.
      #
      #   @param avatar_state [Symbol, Telnyx::Models::MeetingSession::AvatarState, nil] Current state of the avatar connection, or null if no avatar is attached.
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
      #   @param failure_reason [String, nil] Human-readable failure reason if the session failed, or null.
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
      #   @param provider [String] Provider handling the meeting session.
      #
      #   @param recording [Boolean] Whether the session is being recorded.
      #
      #   @param status [Symbol, Telnyx::Models::MeetingSession::Status] Lifecycle status. `waiting_for_admission` means the bot reached the meeting lobb
      #
      #   @param status_detail [String, nil] Additional human-readable detail about the status, or null.
      #
      #   @param updated_at [Time] Timestamp of the last update to the session.
      #
      #   @param webhook_url [String, nil] Webhook endpoint for session lifecycle callbacks, or null if not configured.

      # @see Telnyx::Models::MeetingSession#assistant
      class Assistant < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifier of the assistant.
        #
        #   @return [String]
        required :id, String

        # @!attribute audio_gate
        #   Audio gating strategy for the assistant call leg.
        #
        #   @return [Symbol, Telnyx::Models::MeetingSession::Assistant::AudioGate]
        required :audio_gate, enum: -> { Telnyx::MeetingSession::Assistant::AudioGate }

        # @!method initialize(id:, audio_gate:)
        #   Assistant configuration if an assistant is attached, otherwise null.
        #
        #   @param id [String] Identifier of the assistant.
        #
        #   @param audio_gate [Symbol, Telnyx::Models::MeetingSession::Assistant::AudioGate] Audio gating strategy for the assistant call leg.

        # Audio gating strategy for the assistant call leg.
        #
        # @see Telnyx::Models::MeetingSession::Assistant#audio_gate
        module AudioGate
          extend Telnyx::Internal::Type::Enum

          NONE = :none
          HALF_DUPLEX = :half_duplex

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

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

        # @!attribute provider
        #   Avatar provider identifier.
        #
        #   @return [Symbol, :anam]
        required :provider, const: :anam

        # @!method initialize(avatar_id:, provider: :anam)
        #   Avatar configuration if an avatar is attached, otherwise null.
        #
        #   @param avatar_id [String] Identifier of the avatar.
        #
        #   @param provider [Symbol, :anam] Avatar provider identifier.
      end

      # Current state of the avatar connection, or null if no avatar is attached.
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

        # @!method initialize(barge_in:, speak_on_enter:, summarize_on_end:, voice:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MeetingSession::Config} for more details.
        #
        #   @param barge_in [Boolean] When enabled, a human participant `speech_on` event interrupts and stops the cur
        #
        #   @param speak_on_enter [String, nil] Text spoken on meeting entry, or null if not set.
        #
        #   @param summarize_on_end [Boolean] Whether a summary artifact is generated on session end.
        #
        #   @param voice [String, nil] Configured voice identifier, or null if not set.
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
