# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        class ScheduledPhoneCallEventResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute assistant_id
          #
          #   @return [String]
          required :assistant_id, String

          # @!attribute scheduled_at_fixed_datetime
          #
          #   @return [Time]
          required :scheduled_at_fixed_datetime, Time

          # @!attribute telnyx_agent_target
          #
          #   @return [String]
          required :telnyx_agent_target, String

          # @!attribute telnyx_conversation_channel
          #
          #   @return [Symbol, Telnyx::Models::AI::Assistants::ConversationChannelType]
          required :telnyx_conversation_channel, enum: -> { Telnyx::AI::Assistants::ConversationChannelType }

          # @!attribute telnyx_end_user_target
          #
          #   @return [String]
          required :telnyx_end_user_target, String

          # @!attribute call_attempts
          #
          #   @return [Array<Telnyx::Models::AI::Assistants::ScheduledPhoneCallEventResponse::CallAttempt>, nil]
          optional :call_attempts,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse::CallAttempt] }

          # @!attribute call_duration
          #   Duration of the call in seconds
          #
          #   @return [Integer, nil]
          optional :call_duration, Integer

          # @!attribute call_settings
          #   Per-call telephony overrides applied when a scheduled phone-call event
          #   dispatches. Phone-call events only. New per-call dispatch options should be
          #   added here rather than as top-level event fields.
          #
          #   @return [Telnyx::Models::AI::Assistants::ScheduledPhoneCallEventResponse::CallSettings, nil]
          optional :call_settings, -> { Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse::CallSettings }

          # @!attribute call_status
          #   Values: busy, canceled, no-answer, ringing, completed, failed, in-progress
          #
          #   @return [String, nil]
          optional :call_status, String

          # @!attribute conversation_id
          #
          #   @return [String, nil]
          optional :conversation_id, String

          # @!attribute conversation_metadata
          #
          #   @return [Hash{Symbol=>String, Integer, Boolean}, nil]
          optional :conversation_metadata,
                   -> { Telnyx::Internal::Type::HashOf[union: Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse::ConversationMetadata] }

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute dispatched_at
          #   Date time at which call was sent
          #
          #   @return [Time, nil]
          optional :dispatched_at, Time

          # @!attribute dynamic_variables
          #   A map of dynamic variable names to values. These variables can be referenced in
          #   the assistant's instructions and messages using {{variable_name}} syntax.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :dynamic_variables, Telnyx::Internal::Type::HashOf[String]

          # @!attribute errors
          #
          #   @return [Array<String>, nil]
          optional :errors, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute max_retries_client_errors
          #   Configure number of retries on client errors: busy, no-answer, failed, canceled
          #   (caller hung up before the callee answered)
          #
          #   @return [Integer, nil]
          optional :max_retries_client_errors, Integer

          # @!attribute retry_attempts
          #
          #   @return [Integer, nil]
          optional :retry_attempts, Integer

          # @!attribute retry_count
          #
          #   @return [Integer, nil]
          optional :retry_count, Integer

          # @!attribute retry_interval_secs
          #
          #   @return [Integer, nil]
          optional :retry_interval_secs, Integer

          # @!attribute scheduled_event_id
          #
          #   @return [String, nil]
          optional :scheduled_event_id, String

          # @!attribute status
          #
          #   @return [Symbol, Telnyx::Models::AI::Assistants::EventStatus, nil]
          optional :status, enum: -> { Telnyx::AI::Assistants::EventStatus }

          # @!method initialize(assistant_id:, scheduled_at_fixed_datetime:, telnyx_agent_target:, telnyx_conversation_channel:, telnyx_end_user_target:, call_attempts: nil, call_duration: nil, call_settings: nil, call_status: nil, conversation_id: nil, conversation_metadata: nil, created_at: nil, dispatched_at: nil, dynamic_variables: nil, errors: nil, max_retries_client_errors: nil, retry_attempts: nil, retry_count: nil, retry_interval_secs: nil, scheduled_event_id: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Assistants::ScheduledPhoneCallEventResponse} for more
          #   details.
          #
          #   @param assistant_id [String]
          #
          #   @param scheduled_at_fixed_datetime [Time]
          #
          #   @param telnyx_agent_target [String]
          #
          #   @param telnyx_conversation_channel [Symbol, Telnyx::Models::AI::Assistants::ConversationChannelType]
          #
          #   @param telnyx_end_user_target [String]
          #
          #   @param call_attempts [Array<Telnyx::Models::AI::Assistants::ScheduledPhoneCallEventResponse::CallAttempt>]
          #
          #   @param call_duration [Integer] Duration of the call in seconds
          #
          #   @param call_settings [Telnyx::Models::AI::Assistants::ScheduledPhoneCallEventResponse::CallSettings] Per-call telephony overrides applied when a scheduled phone-call event
          #
          #   @param call_status [String] Values: busy, canceled, no-answer, ringing, completed, failed, in-progress
          #
          #   @param conversation_id [String]
          #
          #   @param conversation_metadata [Hash{Symbol=>String, Integer, Boolean}]
          #
          #   @param created_at [Time]
          #
          #   @param dispatched_at [Time] Date time at which call was sent
          #
          #   @param dynamic_variables [Hash{Symbol=>String}] A map of dynamic variable names to values. These variables can be referenced in
          #
          #   @param errors [Array<String>]
          #
          #   @param max_retries_client_errors [Integer] Configure number of retries on client errors: busy, no-answer, failed, canceled
          #
          #   @param retry_attempts [Integer]
          #
          #   @param retry_count [Integer]
          #
          #   @param retry_interval_secs [Integer]
          #
          #   @param scheduled_event_id [String]
          #
          #   @param status [Symbol, Telnyx::Models::AI::Assistants::EventStatus]

          class CallAttempt < Telnyx::Internal::Type::BaseModel
            # @!attribute attempt_number
            #
            #   @return [Integer]
            required :attempt_number, Integer

            # @!attribute attempted_at
            #
            #   @return [Time]
            required :attempted_at, Time

            # @!attribute call_status
            #   Values: busy, canceled, no-answer, ringing, completed, failed, in-progress
            #
            #   @return [String]
            required :call_status, String

            # @!attribute call_duration
            #   Duration of the call in seconds
            #
            #   @return [Integer, nil]
            optional :call_duration, Integer

            # @!attribute telnyx_call_control_id
            #
            #   @return [String, nil]
            optional :telnyx_call_control_id, String

            # @!method initialize(attempt_number:, attempted_at:, call_status:, call_duration: nil, telnyx_call_control_id: nil)
            #   One row in `call_attempts` — captures the terminal outcome of a single dispatch.
            #
            #   @param attempt_number [Integer]
            #
            #   @param attempted_at [Time]
            #
            #   @param call_status [String] Values: busy, canceled, no-answer, ringing, completed, failed, in-progress
            #
            #   @param call_duration [Integer] Duration of the call in seconds
            #
            #   @param telnyx_call_control_id [String]
          end

          # @see Telnyx::Models::AI::Assistants::ScheduledPhoneCallEventResponse#call_settings
          class CallSettings < Telnyx::Internal::Type::BaseModel
            # @!attribute sip_region
            #   SIP region passed to Telnyx when initiating an outbound call. Values match the
            #   Telnyx TeXML `SipRegion` parameter exactly. Telnyx defaults to `US` when
            #   omitted.
            #
            #   @return [Symbol, Telnyx::Models::AI::Assistants::ScheduledPhoneCallEventResponse::CallSettings::SipRegion, nil]
            optional :sip_region,
                     enum: -> { Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse::CallSettings::SipRegion }

            # @!method initialize(sip_region: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::Assistants::ScheduledPhoneCallEventResponse::CallSettings}
            #   for more details.
            #
            #   Per-call telephony overrides applied when a scheduled phone-call event
            #   dispatches. Phone-call events only. New per-call dispatch options should be
            #   added here rather than as top-level event fields.
            #
            #   @param sip_region [Symbol, Telnyx::Models::AI::Assistants::ScheduledPhoneCallEventResponse::CallSettings::SipRegion] SIP region passed to Telnyx when initiating an outbound call. Values

            # SIP region passed to Telnyx when initiating an outbound call. Values match the
            # Telnyx TeXML `SipRegion` parameter exactly. Telnyx defaults to `US` when
            # omitted.
            #
            # @see Telnyx::Models::AI::Assistants::ScheduledPhoneCallEventResponse::CallSettings#sip_region
            module SipRegion
              extend Telnyx::Internal::Type::Enum

              US = :US
              EUROPE = :Europe
              CANADA = :Canada
              AUSTRALIA = :Australia
              MIDDLE_EAST = :"Middle East"

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          module ConversationMetadata
            extend Telnyx::Internal::Type::Union

            variant String

            variant Integer

            variant Telnyx::Internal::Type::Boolean

            # @!method self.variants
            #   @return [Array(String, Integer, Boolean)]
          end
        end
      end
    end
  end
end
