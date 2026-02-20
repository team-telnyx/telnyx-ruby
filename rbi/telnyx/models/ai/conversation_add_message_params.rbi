# typed: strong

module Telnyx
  module Models
    module AI
      class ConversationAddMessageParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::ConversationAddMessageParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :role

        sig { returns(T.nilable(String)) }
        attr_reader :content

        sig { params(content: String).void }
        attr_writer :content

        sig do
          returns(
            T.nilable(
              T::Hash[
                Symbol,
                Telnyx::AI::ConversationAddMessageParams::Metadata::Variants
              ]
            )
          )
        end
        attr_reader :metadata

        sig do
          params(
            metadata:
              T::Hash[
                Symbol,
                Telnyx::AI::ConversationAddMessageParams::Metadata::Variants
              ]
          ).void
        end
        attr_writer :metadata

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(Time)) }
        attr_reader :sent_at

        sig { params(sent_at: Time).void }
        attr_writer :sent_at

        sig { returns(T.nilable(String)) }
        attr_reader :tool_call_id

        sig { params(tool_call_id: String).void }
        attr_writer :tool_call_id

        sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
        attr_reader :tool_calls

        sig { params(tool_calls: T::Array[T::Hash[Symbol, T.anything]]).void }
        attr_writer :tool_calls

        sig do
          returns(
            T.nilable(
              Telnyx::AI::ConversationAddMessageParams::ToolChoice::Variants
            )
          )
        end
        attr_reader :tool_choice

        sig do
          params(
            tool_choice:
              Telnyx::AI::ConversationAddMessageParams::ToolChoice::Variants
          ).void
        end
        attr_writer :tool_choice

        sig do
          params(
            role: String,
            content: String,
            metadata:
              T::Hash[
                Symbol,
                Telnyx::AI::ConversationAddMessageParams::Metadata::Variants
              ],
            name: String,
            sent_at: Time,
            tool_call_id: String,
            tool_calls: T::Array[T::Hash[Symbol, T.anything]],
            tool_choice:
              Telnyx::AI::ConversationAddMessageParams::ToolChoice::Variants,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          role:,
          content: nil,
          metadata: nil,
          name: nil,
          sent_at: nil,
          tool_call_id: nil,
          tool_calls: nil,
          tool_choice: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              role: String,
              content: String,
              metadata:
                T::Hash[
                  Symbol,
                  Telnyx::AI::ConversationAddMessageParams::Metadata::Variants
                ],
              name: String,
              sent_at: Time,
              tool_call_id: String,
              tool_calls: T::Array[T::Hash[Symbol, T.anything]],
              tool_choice:
                Telnyx::AI::ConversationAddMessageParams::ToolChoice::Variants,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Metadata
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                String,
                Integer,
                T::Boolean,
                T::Array[
                  Telnyx::AI::ConversationAddMessageParams::Metadata::UnionArrayVariant3::Variants
                ]
              )
            end

          module UnionArrayVariant3
            extend Telnyx::Internal::Type::Union

            Variants = T.type_alias { T.any(String, Integer, T::Boolean) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::ConversationAddMessageParams::Metadata::UnionArrayVariant3::Variants
                ]
              )
            end
            def self.variants
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::ConversationAddMessageParams::Metadata::Variants
              ]
            )
          end
          def self.variants
          end

          UnionArrayVariant3Array =
            T.let(
              Telnyx::Internal::Type::ArrayOf[
                union:
                  Telnyx::AI::ConversationAddMessageParams::Metadata::UnionArrayVariant3
              ],
              Telnyx::Internal::Type::Converter
            )
        end

        module ToolChoice
          extend Telnyx::Internal::Type::Union

          Variants = T.type_alias { T.any(String, T::Hash[Symbol, T.anything]) }

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::ConversationAddMessageParams::ToolChoice::Variants
              ]
            )
          end
          def self.variants
          end

          ToolChoiceObjectMap =
            T.let(
              Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
              Telnyx::Internal::Type::Converter
            )
        end
      end
    end
  end
end
