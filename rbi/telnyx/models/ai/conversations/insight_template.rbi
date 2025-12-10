# typed: strong

module Telnyx
  module Models
    module AI
      module Conversations
        class InsightTemplate < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Conversations::InsightTemplate,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(String) }
          attr_accessor :instructions

          sig do
            returns(
              T.nilable(
                Telnyx::AI::Conversations::InsightTemplate::InsightType::TaggedSymbol
              )
            )
          end
          attr_reader :insight_type

          sig do
            params(
              insight_type:
                Telnyx::AI::Conversations::InsightTemplate::InsightType::OrSymbol
            ).void
          end
          attr_writer :insight_type

          # If specified, the output will follow the JSON schema.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::Conversations::InsightTemplate::JsonSchema::Variants
              )
            )
          end
          attr_reader :json_schema

          sig do
            params(
              json_schema:
                Telnyx::AI::Conversations::InsightTemplate::JsonSchema::Variants
            ).void
          end
          attr_writer :json_schema

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(String)) }
          attr_reader :webhook

          sig { params(webhook: String).void }
          attr_writer :webhook

          sig do
            params(
              id: String,
              created_at: Time,
              instructions: String,
              insight_type:
                Telnyx::AI::Conversations::InsightTemplate::InsightType::OrSymbol,
              json_schema:
                Telnyx::AI::Conversations::InsightTemplate::JsonSchema::Variants,
              name: String,
              webhook: String
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            created_at:,
            instructions:,
            insight_type: nil,
            # If specified, the output will follow the JSON schema.
            json_schema: nil,
            name: nil,
            webhook: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                instructions: String,
                insight_type:
                  Telnyx::AI::Conversations::InsightTemplate::InsightType::TaggedSymbol,
                json_schema:
                  Telnyx::AI::Conversations::InsightTemplate::JsonSchema::Variants,
                name: String,
                webhook: String
              }
            )
          end
          def to_hash
          end

          module InsightType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::AI::Conversations::InsightTemplate::InsightType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CUSTOM =
              T.let(
                :custom,
                Telnyx::AI::Conversations::InsightTemplate::InsightType::TaggedSymbol
              )
            DEFAULT =
              T.let(
                :default,
                Telnyx::AI::Conversations::InsightTemplate::InsightType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::Conversations::InsightTemplate::InsightType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # If specified, the output will follow the JSON schema.
          module JsonSchema
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias { T.any(String, T::Hash[Symbol, T.anything]) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::Conversations::InsightTemplate::JsonSchema::Variants
                ]
              )
            end
            def self.variants
            end

            JsonSchemaObjectMap =
              T.let(
                Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
                Telnyx::Internal::Type::Converter
              )
          end
        end
      end
    end
  end
end
