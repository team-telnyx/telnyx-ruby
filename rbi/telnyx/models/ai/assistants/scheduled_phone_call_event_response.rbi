# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class ScheduledPhoneCallEventResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :assistant_id

          sig { returns(Time) }
          attr_accessor :scheduled_at_fixed_datetime

          sig { returns(String) }
          attr_accessor :telnyx_agent_target

          sig do
            returns(
              Telnyx::AI::Assistants::ConversationChannelType::TaggedSymbol
            )
          end
          attr_accessor :telnyx_conversation_channel

          sig { returns(String) }
          attr_accessor :telnyx_end_user_target

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse::CallAttempt
                ]
              )
            )
          end
          attr_reader :call_attempts

          sig do
            params(
              call_attempts:
                T::Array[
                  Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse::CallAttempt::OrHash
                ]
            ).void
          end
          attr_writer :call_attempts

          # Duration of the call in seconds
          sig { returns(T.nilable(Integer)) }
          attr_reader :call_duration

          sig { params(call_duration: Integer).void }
          attr_writer :call_duration

          # Per-call telephony overrides applied when a scheduled phone-call event
          # dispatches. Phone-call events only. New per-call dispatch options should be
          # added here rather than as top-level event fields.
          sig do
            returns(T.nilable(Telnyx::AI::Assistants::ScheduledCallSettings))
          end
          attr_reader :call_settings

          sig do
            params(
              call_settings:
                Telnyx::AI::Assistants::ScheduledCallSettings::OrHash
            ).void
          end
          attr_writer :call_settings

          # Values: busy, canceled, no-answer, ringing, completed, failed, in-progress
          sig { returns(T.nilable(String)) }
          attr_reader :call_status

          sig { params(call_status: String).void }
          attr_writer :call_status

          sig { returns(T.nilable(String)) }
          attr_reader :conversation_id

          sig { params(conversation_id: String).void }
          attr_writer :conversation_id

          sig do
            returns(
              T.nilable(
                T::Hash[
                  Symbol,
                  Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse::ConversationMetadata::Variants
                ]
              )
            )
          end
          attr_reader :conversation_metadata

          sig do
            params(
              conversation_metadata:
                T::Hash[
                  Symbol,
                  Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse::ConversationMetadata::Variants
                ]
            ).void
          end
          attr_writer :conversation_metadata

          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          # Date time at which call was sent
          sig { returns(T.nilable(Time)) }
          attr_reader :dispatched_at

          sig { params(dispatched_at: Time).void }
          attr_writer :dispatched_at

          # A map of dynamic variable names to values. These variables can be referenced in
          # the assistant's instructions and messages using {{variable_name}} syntax.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :dynamic_variables

          sig { params(dynamic_variables: T::Hash[Symbol, String]).void }
          attr_writer :dynamic_variables

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :errors

          sig { params(errors: T::Array[String]).void }
          attr_writer :errors

          # Configure number of retries on client errors: busy, no-answer, failed, canceled
          # (caller hung up before the callee answered)
          sig { returns(T.nilable(Integer)) }
          attr_reader :max_retries_client_errors

          sig { params(max_retries_client_errors: Integer).void }
          attr_writer :max_retries_client_errors

          sig { returns(T.nilable(Integer)) }
          attr_reader :retry_attempts

          sig { params(retry_attempts: Integer).void }
          attr_writer :retry_attempts

          sig { returns(T.nilable(Integer)) }
          attr_reader :retry_count

          sig { params(retry_count: Integer).void }
          attr_writer :retry_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :retry_interval_secs

          sig { params(retry_interval_secs: Integer).void }
          attr_writer :retry_interval_secs

          sig { returns(T.nilable(String)) }
          attr_reader :scheduled_event_id

          sig { params(scheduled_event_id: String).void }
          attr_writer :scheduled_event_id

          sig do
            returns(
              T.nilable(Telnyx::AI::Assistants::EventStatus::TaggedSymbol)
            )
          end
          attr_reader :status

          sig do
            params(status: Telnyx::AI::Assistants::EventStatus::OrSymbol).void
          end
          attr_writer :status

          sig do
            params(
              assistant_id: String,
              scheduled_at_fixed_datetime: Time,
              telnyx_agent_target: String,
              telnyx_conversation_channel:
                Telnyx::AI::Assistants::ConversationChannelType::OrSymbol,
              telnyx_end_user_target: String,
              call_attempts:
                T::Array[
                  Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse::CallAttempt::OrHash
                ],
              call_duration: Integer,
              call_settings:
                Telnyx::AI::Assistants::ScheduledCallSettings::OrHash,
              call_status: String,
              conversation_id: String,
              conversation_metadata:
                T::Hash[
                  Symbol,
                  Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse::ConversationMetadata::Variants
                ],
              created_at: Time,
              dispatched_at: Time,
              dynamic_variables: T::Hash[Symbol, String],
              errors: T::Array[String],
              max_retries_client_errors: Integer,
              retry_attempts: Integer,
              retry_count: Integer,
              retry_interval_secs: Integer,
              scheduled_event_id: String,
              status: Telnyx::AI::Assistants::EventStatus::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            assistant_id:,
            scheduled_at_fixed_datetime:,
            telnyx_agent_target:,
            telnyx_conversation_channel:,
            telnyx_end_user_target:,
            call_attempts: nil,
            # Duration of the call in seconds
            call_duration: nil,
            # Per-call telephony overrides applied when a scheduled phone-call event
            # dispatches. Phone-call events only. New per-call dispatch options should be
            # added here rather than as top-level event fields.
            call_settings: nil,
            # Values: busy, canceled, no-answer, ringing, completed, failed, in-progress
            call_status: nil,
            conversation_id: nil,
            conversation_metadata: nil,
            created_at: nil,
            # Date time at which call was sent
            dispatched_at: nil,
            # A map of dynamic variable names to values. These variables can be referenced in
            # the assistant's instructions and messages using {{variable_name}} syntax.
            dynamic_variables: nil,
            errors: nil,
            # Configure number of retries on client errors: busy, no-answer, failed, canceled
            # (caller hung up before the callee answered)
            max_retries_client_errors: nil,
            retry_attempts: nil,
            retry_count: nil,
            retry_interval_secs: nil,
            scheduled_event_id: nil,
            status: nil
          )
          end

          sig do
            override.returns(
              {
                assistant_id: String,
                scheduled_at_fixed_datetime: Time,
                telnyx_agent_target: String,
                telnyx_conversation_channel:
                  Telnyx::AI::Assistants::ConversationChannelType::TaggedSymbol,
                telnyx_end_user_target: String,
                call_attempts:
                  T::Array[
                    Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse::CallAttempt
                  ],
                call_duration: Integer,
                call_settings: Telnyx::AI::Assistants::ScheduledCallSettings,
                call_status: String,
                conversation_id: String,
                conversation_metadata:
                  T::Hash[
                    Symbol,
                    Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse::ConversationMetadata::Variants
                  ],
                created_at: Time,
                dispatched_at: Time,
                dynamic_variables: T::Hash[Symbol, String],
                errors: T::Array[String],
                max_retries_client_errors: Integer,
                retry_attempts: Integer,
                retry_count: Integer,
                retry_interval_secs: Integer,
                scheduled_event_id: String,
                status: Telnyx::AI::Assistants::EventStatus::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class CallAttempt < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse::CallAttempt,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Integer) }
            attr_accessor :attempt_number

            sig { returns(Time) }
            attr_accessor :attempted_at

            # Values: busy, canceled, no-answer, ringing, completed, failed, in-progress
            sig { returns(String) }
            attr_accessor :call_status

            # Duration of the call in seconds
            sig { returns(T.nilable(Integer)) }
            attr_reader :call_duration

            sig { params(call_duration: Integer).void }
            attr_writer :call_duration

            sig { returns(T.nilable(String)) }
            attr_reader :telnyx_call_control_id

            sig { params(telnyx_call_control_id: String).void }
            attr_writer :telnyx_call_control_id

            # One row in `call_attempts` — captures the terminal outcome of a single dispatch.
            sig do
              params(
                attempt_number: Integer,
                attempted_at: Time,
                call_status: String,
                call_duration: Integer,
                telnyx_call_control_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              attempt_number:,
              attempted_at:,
              # Values: busy, canceled, no-answer, ringing, completed, failed, in-progress
              call_status:,
              # Duration of the call in seconds
              call_duration: nil,
              telnyx_call_control_id: nil
            )
            end

            sig do
              override.returns(
                {
                  attempt_number: Integer,
                  attempted_at: Time,
                  call_status: String,
                  call_duration: Integer,
                  telnyx_call_control_id: String
                }
              )
            end
            def to_hash
            end
          end

          module ConversationMetadata
            extend Telnyx::Internal::Type::Union

            Variants = T.type_alias { T.any(String, Integer, T::Boolean) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse::ConversationMetadata::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
