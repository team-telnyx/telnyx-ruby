# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantSendSMSParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AssistantSendSMSParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :from

        sig { returns(String) }
        attr_accessor :text

        sig { returns(String) }
        attr_accessor :to

        sig do
          returns(
            T.nilable(
              T::Hash[
                Symbol,
                Telnyx::AI::AssistantSendSMSParams::ConversationMetadata::Variants
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
                Telnyx::AI::AssistantSendSMSParams::ConversationMetadata::Variants
              ]
          ).void
        end
        attr_writer :conversation_metadata

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :should_create_conversation

        sig { params(should_create_conversation: T::Boolean).void }
        attr_writer :should_create_conversation

        sig do
          params(
            from: String,
            text: String,
            to: String,
            conversation_metadata:
              T::Hash[
                Symbol,
                Telnyx::AI::AssistantSendSMSParams::ConversationMetadata::Variants
              ],
            should_create_conversation: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          from:,
          text:,
          to:,
          conversation_metadata: nil,
          should_create_conversation: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              from: String,
              text: String,
              to: String,
              conversation_metadata:
                T::Hash[
                  Symbol,
                  Telnyx::AI::AssistantSendSMSParams::ConversationMetadata::Variants
                ],
              should_create_conversation: T::Boolean,
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
                Telnyx::AI::AssistantSendSMSParams::ConversationMetadata::Variants
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
