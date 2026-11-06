# typed: strong

module Telnyx
  module Models
    class CalendarConnectionUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CalendarConnectionUpdateParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # all_meetings joins eligible events; external_organizer_excluded requires the
      # connected user to be the organizer; per_meeting requires an explicit opt-in.
      sig do
        returns(
          T.nilable(
            Telnyx::CalendarConnectionUpdateParams::AutoJoinPolicy::OrSymbol
          )
        )
      end
      attr_reader :auto_join_policy

      sig do
        params(
          auto_join_policy:
            Telnyx::CalendarConnectionUpdateParams::AutoJoinPolicy::OrSymbol
        ).void
      end
      attr_writer :auto_join_policy

      # Bot display name; null clears the override.
      sig { returns(T.nilable(String)) }
      attr_accessor :bot_name

      # Default assistant for future calendar-scheduled Google Meet and Teams sessions.
      # The saved configuration must fit within 8 KiB. Use id, audio_gate,
      # dynamic_variables, and leave_on_end; avatar is not accepted. audio_gate defaults
      # to full_duplex.
      sig do
        returns(
          T.nilable(Telnyx::CalendarConnectionUpdateParams::DefaultAssistant)
        )
      end
      attr_reader :default_assistant

      sig do
        params(
          default_assistant:
            T.nilable(
              Telnyx::CalendarConnectionUpdateParams::DefaultAssistant::OrHash
            )
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
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
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

      sig do
        override.returns(
          {
            id: String,
            auto_join_policy:
              Telnyx::CalendarConnectionUpdateParams::AutoJoinPolicy::OrSymbol,
            bot_name: T.nilable(String),
            default_assistant:
              T.nilable(
                Telnyx::CalendarConnectionUpdateParams::DefaultAssistant
              ),
            default_barge_in: T.nilable(T::Boolean),
            default_recording: T.nilable(T::Boolean),
            default_recording_export:
              T.nilable(Telnyx::MeetingSessionRecordingDestination),
            default_summarize_on_end: T.nilable(T::Boolean),
            default_voice: T.nilable(String),
            default_webhook_url: T.nilable(String),
            request_options: Telnyx::RequestOptions
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
              Telnyx::CalendarConnectionUpdateParams::AutoJoinPolicy
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL_MEETINGS =
          T.let(
            :all_meetings,
            Telnyx::CalendarConnectionUpdateParams::AutoJoinPolicy::TaggedSymbol
          )
        EXTERNAL_ORGANIZER_EXCLUDED =
          T.let(
            :external_organizer_excluded,
            Telnyx::CalendarConnectionUpdateParams::AutoJoinPolicy::TaggedSymbol
          )
        PER_MEETING =
          T.let(
            :per_meeting,
            Telnyx::CalendarConnectionUpdateParams::AutoJoinPolicy::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CalendarConnectionUpdateParams::AutoJoinPolicy::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class DefaultAssistant < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CalendarConnectionUpdateParams::DefaultAssistant,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifier of the assistant to attach.
        sig { returns(String) }
        attr_accessor :id

        # Use full_duplex (default) to allow participants to interrupt, or half_duplex to
        # pause listening while the assistant speaks. Full-duplex pricing depends on
        # participant audio usage; see the Meeting pricing guide.
        sig do
          returns(
            T.nilable(
              Telnyx::CalendarConnectionUpdateParams::DefaultAssistant::AudioGate::OrSymbol
            )
          )
        end
        attr_reader :audio_gate

        sig do
          params(
            audio_gate:
              Telnyx::CalendarConnectionUpdateParams::DefaultAssistant::AudioGate::OrSymbol
          ).void
        end
        attr_writer :audio_gate

        # Per-conversation values for the
        # [dynamic variables](/docs/inference/ai-assistants/dynamic-variables) used in the
        # Assistant's instructions, greeting, or tools. Delivered before the Assistant's
        # first utterance, so they resolve for the opening line as well as the rest of the
        # conversation. At most 63 entries; keys 1-128 characters; values must be strings.
        # The map is budgeted in aggregate at 1,047,552 bytes (1023 KiB) rather than
        # capped per value. `streaming_audio`, `ai_assistant_streaming_audio` and
        # `meeting_session_id` are reserved and rejected with `400 invalid_request`.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :dynamic_variables

        sig { params(dynamic_variables: T::Hash[Symbol, String]).void }
        attr_writer :dynamic_variables

        # Leave when the assistant conversation ends or fails. Defaults to false. Other
        # leave-policy rules and explicit leave requests still apply.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :leave_on_end

        sig { params(leave_on_end: T::Boolean).void }
        attr_writer :leave_on_end

        # Default assistant for future calendar-scheduled Google Meet and Teams sessions.
        # The saved configuration must fit within 8 KiB. Use id, audio_gate,
        # dynamic_variables, and leave_on_end; avatar is not accepted. audio_gate defaults
        # to full_duplex.
        sig do
          params(
            id: String,
            audio_gate:
              Telnyx::CalendarConnectionUpdateParams::DefaultAssistant::AudioGate::OrSymbol,
            dynamic_variables: T::Hash[Symbol, String],
            leave_on_end: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifier of the assistant to attach.
          id:,
          # Use full_duplex (default) to allow participants to interrupt, or half_duplex to
          # pause listening while the assistant speaks. Full-duplex pricing depends on
          # participant audio usage; see the Meeting pricing guide.
          audio_gate: nil,
          # Per-conversation values for the
          # [dynamic variables](/docs/inference/ai-assistants/dynamic-variables) used in the
          # Assistant's instructions, greeting, or tools. Delivered before the Assistant's
          # first utterance, so they resolve for the opening line as well as the rest of the
          # conversation. At most 63 entries; keys 1-128 characters; values must be strings.
          # The map is budgeted in aggregate at 1,047,552 bytes (1023 KiB) rather than
          # capped per value. `streaming_audio`, `ai_assistant_streaming_audio` and
          # `meeting_session_id` are reserved and rejected with `400 invalid_request`.
          dynamic_variables: nil,
          # Leave when the assistant conversation ends or fails. Defaults to false. Other
          # leave-policy rules and explicit leave requests still apply.
          leave_on_end: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              audio_gate:
                Telnyx::CalendarConnectionUpdateParams::DefaultAssistant::AudioGate::OrSymbol,
              dynamic_variables: T::Hash[Symbol, String],
              leave_on_end: T::Boolean
            }
          )
        end
        def to_hash
        end

        # Use full_duplex (default) to allow participants to interrupt, or half_duplex to
        # pause listening while the assistant speaks. Full-duplex pricing depends on
        # participant audio usage; see the Meeting pricing guide.
        module AudioGate
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::CalendarConnectionUpdateParams::DefaultAssistant::AudioGate
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HALF_DUPLEX =
            T.let(
              :half_duplex,
              Telnyx::CalendarConnectionUpdateParams::DefaultAssistant::AudioGate::TaggedSymbol
            )
          FULL_DUPLEX =
            T.let(
              :full_duplex,
              Telnyx::CalendarConnectionUpdateParams::DefaultAssistant::AudioGate::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CalendarConnectionUpdateParams::DefaultAssistant::AudioGate::TaggedSymbol
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
