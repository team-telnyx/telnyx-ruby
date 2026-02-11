# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class ScheduledEventCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::ScheduledEventCreateParams,
                Telnyx::Internal::AnyHash
              )
            end

          # The datetime at which the event should be scheduled. Formatted as ISO 8601.
          sig { returns(Time) }
          attr_accessor :scheduled_at_fixed_datetime

          # The phone number, SIP URI, to schedule the call or text from.
          sig { returns(String) }
          attr_accessor :telnyx_agent_target

          sig do
            returns(Telnyx::AI::Assistants::ConversationChannelType::OrSymbol)
          end
          attr_accessor :telnyx_conversation_channel

          # The phone number, SIP URI, to schedule the call or text to.
          sig { returns(String) }
          attr_accessor :telnyx_end_user_target

          # Metadata associated with the conversation. Telnyx provides several pieces of
          # metadata, but customers can also add their own.
          sig do
            returns(
              T.nilable(
                T::Hash[
                  Symbol,
                  Telnyx::AI::Assistants::ScheduledEventCreateParams::ConversationMetadata::Variants
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
                  Telnyx::AI::Assistants::ScheduledEventCreateParams::ConversationMetadata::Variants
                ]
            ).void
          end
          attr_writer :conversation_metadata

          # A map of dynamic variable names to values. These variables can be referenced in
          # the assistant's instructions and messages using {{variable_name}} syntax.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :dynamic_variables

          sig { params(dynamic_variables: T::Hash[Symbol, String]).void }
          attr_writer :dynamic_variables

          # Required for sms scheduled events. The text to be sent to the end user.
          sig { returns(T.nilable(String)) }
          attr_reader :text

          sig { params(text: String).void }
          attr_writer :text

          sig do
            params(
              scheduled_at_fixed_datetime: Time,
              telnyx_agent_target: String,
              telnyx_conversation_channel:
                Telnyx::AI::Assistants::ConversationChannelType::OrSymbol,
              telnyx_end_user_target: String,
              conversation_metadata:
                T::Hash[
                  Symbol,
                  Telnyx::AI::Assistants::ScheduledEventCreateParams::ConversationMetadata::Variants
                ],
              dynamic_variables: T::Hash[Symbol, String],
              text: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The datetime at which the event should be scheduled. Formatted as ISO 8601.
            scheduled_at_fixed_datetime:,
            # The phone number, SIP URI, to schedule the call or text from.
            telnyx_agent_target:,
            telnyx_conversation_channel:,
            # The phone number, SIP URI, to schedule the call or text to.
            telnyx_end_user_target:,
            # Metadata associated with the conversation. Telnyx provides several pieces of
            # metadata, but customers can also add their own.
            conversation_metadata: nil,
            # A map of dynamic variable names to values. These variables can be referenced in
            # the assistant's instructions and messages using {{variable_name}} syntax.
            dynamic_variables: nil,
            # Required for sms scheduled events. The text to be sent to the end user.
            text: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                scheduled_at_fixed_datetime: Time,
                telnyx_agent_target: String,
                telnyx_conversation_channel:
                  Telnyx::AI::Assistants::ConversationChannelType::OrSymbol,
                telnyx_end_user_target: String,
                conversation_metadata:
                  T::Hash[
                    Symbol,
                    Telnyx::AI::Assistants::ScheduledEventCreateParams::ConversationMetadata::Variants
                  ],
                dynamic_variables: T::Hash[Symbol, String],
                text: String,
                request_options: Telnyx::RequestOptions
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
                  Telnyx::AI::Assistants::ScheduledEventCreateParams::ConversationMetadata::Variants
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
