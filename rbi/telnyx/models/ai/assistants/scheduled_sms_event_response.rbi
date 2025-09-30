# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class ScheduledSMSEventResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::ScheduledSMSEventResponse,
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

          sig { returns(String) }
          attr_accessor :text

          sig { returns(T.nilable(String)) }
          attr_reader :conversation_id

          sig { params(conversation_id: String).void }
          attr_writer :conversation_id

          sig do
            returns(
              T.nilable(
                T::Hash[
                  Symbol,
                  Telnyx::AI::Assistants::ScheduledSMSEventResponse::ConversationMetadata::Variants
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
                  Telnyx::AI::Assistants::ScheduledSMSEventResponse::ConversationMetadata::Variants
                ]
            ).void
          end
          attr_writer :conversation_metadata

          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :errors

          sig { params(errors: T::Array[String]).void }
          attr_writer :errors

          sig { returns(T.nilable(Integer)) }
          attr_reader :retry_count

          sig { params(retry_count: Integer).void }
          attr_writer :retry_count

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
              text: String,
              conversation_id: String,
              conversation_metadata:
                T::Hash[
                  Symbol,
                  Telnyx::AI::Assistants::ScheduledSMSEventResponse::ConversationMetadata::Variants
                ],
              created_at: Time,
              errors: T::Array[String],
              retry_count: Integer,
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
            text:,
            conversation_id: nil,
            conversation_metadata: nil,
            created_at: nil,
            errors: nil,
            retry_count: nil,
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
                text: String,
                conversation_id: String,
                conversation_metadata:
                  T::Hash[
                    Symbol,
                    Telnyx::AI::Assistants::ScheduledSMSEventResponse::ConversationMetadata::Variants
                  ],
                created_at: Time,
                errors: T::Array[String],
                retry_count: Integer,
                scheduled_event_id: String,
                status: Telnyx::AI::Assistants::EventStatus::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module ConversationMetadata
            extend Telnyx::Internal::Type::Union

            Variants = T.type_alias { T.any(String, Integer, T::Boolean) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::Assistants::ScheduledSMSEventResponse::ConversationMetadata::Variants
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
