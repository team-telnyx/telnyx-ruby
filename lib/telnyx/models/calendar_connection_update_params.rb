# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CalendarConnections#update
    class CalendarConnectionUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute auto_join_policy
      #   all_meetings joins eligible events; external_organizer_excluded requires the
      #   connected user to be the organizer; per_meeting requires an explicit opt-in.
      #
      #   @return [Symbol, Telnyx::Models::CalendarConnectionUpdateParams::AutoJoinPolicy, nil]
      optional :auto_join_policy, enum: -> { Telnyx::CalendarConnectionUpdateParams::AutoJoinPolicy }

      # @!attribute bot_name
      #   Bot display name; null clears the override.
      #
      #   @return [String, nil]
      optional :bot_name, String, nil?: true

      # @!attribute default_assistant
      #   Default assistant for future calendar-scheduled Google Meet and Teams sessions.
      #   The saved configuration must fit within 8 KiB. Use id, audio_gate,
      #   dynamic_variables, and leave_on_end; avatar is not accepted. audio_gate defaults
      #   to full_duplex.
      #
      #   @return [Telnyx::Models::CalendarConnectionUpdateParams::DefaultAssistant, nil]
      optional :default_assistant, -> { Telnyx::CalendarConnectionUpdateParams::DefaultAssistant }, nil?: true

      # @!attribute default_barge_in
      #   Default manual speech interruption. Cannot be true with default_assistant.
      #
      #   @return [Boolean, nil]
      optional :default_barge_in, Telnyx::Internal::Type::Boolean, nil?: true

      # @!attribute default_recording
      #   Google Meet and Teams recording intent. When null, recording is enabled only if
      #   a destination is set. True requires default_recording_export; false cannot be
      #   combined with a destination.
      #
      #   @return [Boolean, nil]
      optional :default_recording, Telnyx::Internal::Type::Boolean, nil?: true

      # @!attribute default_recording_export
      #   Customer-owned Telnyx Storage destination for recording exports. Uses the
      #   authenticated organization and user; do not supply credentials, region,
      #   organization ID or object key.
      #
      #   @return [Telnyx::Models::MeetingSessionRecordingDestination, nil]
      optional :default_recording_export, -> { Telnyx::MeetingSessionRecordingDestination }, nil?: true

      # @!attribute default_summarize_on_end
      #   Generate a summary when each future session transcript finalizes.
      #
      #   @return [Boolean, nil]
      optional :default_summarize_on_end, Telnyx::Internal::Type::Boolean, nil?: true

      # @!attribute default_voice
      #   Manual-speech voice; must be null when default_assistant is set.
      #
      #   @return [String, nil]
      optional :default_voice, String, nil?: true

      # @!attribute default_webhook_url
      #   HTTPS destination for future session webhooks. Null clears the default. A
      #   non-null update returns webhook_secret once; save it to verify signatures for
      #   sessions created with this default. Existing sessions retain their original
      #   signing secret.
      #
      #   @return [String, nil]
      optional :default_webhook_url, String, nil?: true

      # @!method initialize(id:, auto_join_policy: nil, bot_name: nil, default_assistant: nil, default_barge_in: nil, default_recording: nil, default_recording_export: nil, default_summarize_on_end: nil, default_voice: nil, default_webhook_url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CalendarConnectionUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param auto_join_policy [Symbol, Telnyx::Models::CalendarConnectionUpdateParams::AutoJoinPolicy] all_meetings joins eligible events; external_organizer_excluded requires the con
      #
      #   @param bot_name [String, nil] Bot display name; null clears the override.
      #
      #   @param default_assistant [Telnyx::Models::CalendarConnectionUpdateParams::DefaultAssistant, nil] Default assistant for future calendar-scheduled Google Meet and Teams sessions.
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
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # all_meetings joins eligible events; external_organizer_excluded requires the
      # connected user to be the organizer; per_meeting requires an explicit opt-in.
      module AutoJoinPolicy
        extend Telnyx::Internal::Type::Enum

        ALL_MEETINGS = :all_meetings
        EXTERNAL_ORGANIZER_EXCLUDED = :external_organizer_excluded
        PER_MEETING = :per_meeting

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class DefaultAssistant < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifier of the assistant to attach.
        #
        #   @return [String]
        required :id, String

        # @!attribute audio_gate
        #   Use full_duplex (default) to allow participants to interrupt, or half_duplex to
        #   pause listening while the assistant speaks. Full-duplex pricing depends on
        #   participant audio usage; see the Meeting pricing guide.
        #
        #   @return [Symbol, Telnyx::Models::CalendarConnectionUpdateParams::DefaultAssistant::AudioGate, nil]
        optional :audio_gate, enum: -> { Telnyx::CalendarConnectionUpdateParams::DefaultAssistant::AudioGate }

        # @!attribute dynamic_variables
        #   Per-conversation values for the
        #   [dynamic variables](/docs/inference/ai-assistants/dynamic-variables) used in the
        #   Assistant's instructions, greeting, or tools. Delivered before the Assistant's
        #   first utterance, so they resolve for the opening line as well as the rest of the
        #   conversation. At most 63 entries; keys 1-128 characters; values must be strings.
        #   The map is budgeted in aggregate at 1,047,552 bytes (1023 KiB) rather than
        #   capped per value. `streaming_audio`, `ai_assistant_streaming_audio` and
        #   `meeting_session_id` are reserved and rejected with `400 invalid_request`.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :dynamic_variables, Telnyx::Internal::Type::HashOf[String]

        # @!attribute leave_on_end
        #   Leave when the assistant conversation ends or fails. Defaults to false. Other
        #   leave-policy rules and explicit leave requests still apply.
        #
        #   @return [Boolean, nil]
        optional :leave_on_end, Telnyx::Internal::Type::Boolean

        # @!method initialize(id:, audio_gate: nil, dynamic_variables: nil, leave_on_end: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::CalendarConnectionUpdateParams::DefaultAssistant} for more
        #   details.
        #
        #   Default assistant for future calendar-scheduled Google Meet and Teams sessions.
        #   The saved configuration must fit within 8 KiB. Use id, audio_gate,
        #   dynamic_variables, and leave_on_end; avatar is not accepted. audio_gate defaults
        #   to full_duplex.
        #
        #   @param id [String] Identifier of the assistant to attach.
        #
        #   @param audio_gate [Symbol, Telnyx::Models::CalendarConnectionUpdateParams::DefaultAssistant::AudioGate] Use full_duplex (default) to allow participants to interrupt, or half_duplex to
        #
        #   @param dynamic_variables [Hash{Symbol=>String}] Per-conversation values for the [dynamic variables](/docs/inference/ai-assistant
        #
        #   @param leave_on_end [Boolean] Leave when the assistant conversation ends or fails. Defaults to false. Other le

        # Use full_duplex (default) to allow participants to interrupt, or half_duplex to
        # pause listening while the assistant speaks. Full-duplex pricing depends on
        # participant audio usage; see the Meeting pricing guide.
        #
        # @see Telnyx::Models::CalendarConnectionUpdateParams::DefaultAssistant#audio_gate
        module AudioGate
          extend Telnyx::Internal::Type::Enum

          HALF_DUPLEX = :half_duplex
          FULL_DUPLEX = :full_duplex

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
