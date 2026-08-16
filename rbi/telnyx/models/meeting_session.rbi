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
      sig { returns(T.nilable(Telnyx::MeetingSession::Assistant)) }
      attr_reader :assistant

      sig do
        params(
          assistant: T.nilable(Telnyx::MeetingSession::Assistant::OrHash)
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

      # Avatar configuration if an avatar is attached, otherwise null.
      sig { returns(T.nilable(Telnyx::MeetingSession::Avatar)) }
      attr_reader :avatar

      sig do
        params(avatar: T.nilable(Telnyx::MeetingSession::Avatar::OrHash)).void
      end
      attr_writer :avatar

      # Current state of the avatar connection, or null if no avatar is attached.
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

      # Human-readable failure reason if the session failed, or null.
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

      # Provider handling the meeting session.
      sig { returns(String) }
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

      # Additional human-readable detail about the status, or null.
      sig { returns(T.nilable(String)) }
      attr_accessor :status_detail

      # Timestamp of the last update to the session.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Webhook endpoint for session lifecycle callbacks, or null if not configured.
      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_url

      # Represents a meeting session. All serializer fields are present and required;
      # nullable fields use null when absent. No actor, provider-bot, idempotency,
      # routing, key, or internal fields are exposed.
      sig do
        params(
          id: String,
          account_id: String,
          assistant: T.nilable(Telnyx::MeetingSession::Assistant::OrHash),
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
          provider: String,
          recording: T::Boolean,
          status: Telnyx::MeetingSession::Status::OrSymbol,
          status_detail: T.nilable(String),
          updated_at: Time,
          webhook_url: T.nilable(String)
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
        # Avatar configuration if an avatar is attached, otherwise null.
        avatar:,
        # Current state of the avatar connection, or null if no avatar is attached.
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
        # Human-readable failure reason if the session failed, or null.
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
        # Provider handling the meeting session.
        provider:,
        # Whether the session is being recorded.
        recording:,
        # Lifecycle status. `waiting_for_admission` means the bot reached the meeting
        # lobby and may require host approval. `active` means the bot entered the
        # meeting/media path. `ended` alone does not prove attendance; use non-null
        # `joined_at` as positive evidence that the session became active.
        # `admission_denied` is reserved for an explicit provider denial, while
        # cancellation or another termination can end a never-admitted session as `ended`.
        status:,
        # Additional human-readable detail about the status, or null.
        status_detail:,
        # Timestamp of the last update to the session.
        updated_at:,
        # Webhook endpoint for session lifecycle callbacks, or null if not configured.
        webhook_url:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            assistant: T.nilable(Telnyx::MeetingSession::Assistant),
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
            provider: String,
            recording: T::Boolean,
            status: Telnyx::MeetingSession::Status::TaggedSymbol,
            status_detail: T.nilable(String),
            updated_at: Time,
            webhook_url: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Assistant < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::MeetingSession::Assistant, Telnyx::Internal::AnyHash)
          end

        # Identifier of the assistant.
        sig { returns(String) }
        attr_accessor :id

        # Audio gating strategy for the assistant call leg.
        sig do
          returns(Telnyx::MeetingSession::Assistant::AudioGate::TaggedSymbol)
        end
        attr_accessor :audio_gate

        # Assistant configuration if an assistant is attached, otherwise null.
        sig do
          params(
            id: String,
            audio_gate: Telnyx::MeetingSession::Assistant::AudioGate::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifier of the assistant.
          id:,
          # Audio gating strategy for the assistant call leg.
          audio_gate:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              audio_gate:
                Telnyx::MeetingSession::Assistant::AudioGate::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Audio gating strategy for the assistant call leg.
        module AudioGate
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::MeetingSession::Assistant::AudioGate)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :none,
              Telnyx::MeetingSession::Assistant::AudioGate::TaggedSymbol
            )
          HALF_DUPLEX =
            T.let(
              :half_duplex,
              Telnyx::MeetingSession::Assistant::AudioGate::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MeetingSession::Assistant::AudioGate::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
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

        # Avatar provider identifier.
        sig { returns(Symbol) }
        attr_accessor :provider

        # Avatar configuration if an avatar is attached, otherwise null.
        sig do
          params(avatar_id: String, provider: Symbol).returns(T.attached_class)
        end
        def self.new(
          # Identifier of the avatar.
          avatar_id:,
          # Avatar provider identifier.
          provider: :anam
        )
        end

        sig { override.returns({ avatar_id: String, provider: Symbol }) }
        def to_hash
        end
      end

      # Current state of the avatar connection, or null if no avatar is attached.
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

        # Text spoken on meeting entry, or null if not set.
        sig { returns(T.nilable(String)) }
        attr_accessor :speak_on_enter

        # Whether a summary artifact is generated on session end.
        sig { returns(T::Boolean) }
        attr_accessor :summarize_on_end

        # Configured voice identifier, or null if not set.
        sig { returns(T.nilable(String)) }
        attr_accessor :voice

        sig do
          params(
            barge_in: T::Boolean,
            speak_on_enter: T.nilable(String),
            summarize_on_end: T::Boolean,
            voice: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # When enabled, a human participant `speech_on` event interrupts and stops the
          # current bot audio; it does not bypass admission or initiate speech. Assistant
          # sessions reject `barge_in: true`.
          barge_in:,
          # Text spoken on meeting entry, or null if not set.
          speak_on_enter:,
          # Whether a summary artifact is generated on session end.
          summarize_on_end:,
          # Configured voice identifier, or null if not set.
          voice:
        )
        end

        sig do
          override.returns(
            {
              barge_in: T::Boolean,
              speak_on_enter: T.nilable(String),
              summarize_on_end: T::Boolean,
              voice: T.nilable(String)
            }
          )
        end
        def to_hash
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
