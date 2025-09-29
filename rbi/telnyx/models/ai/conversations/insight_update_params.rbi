# typed: strong

module Telnyx
  module Models
    module AI
      module Conversations
        class InsightUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Conversations::InsightUpdateParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :instructions

          sig { params(instructions: String).void }
          attr_writer :instructions

          sig do
            returns(
              T.nilable(
                Telnyx::AI::Conversations::InsightUpdateParams::JsonSchema::Variants
              )
            )
          end
          attr_reader :json_schema

          sig do
            params(
              json_schema:
                Telnyx::AI::Conversations::InsightUpdateParams::JsonSchema::Variants
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
              instructions: String,
              json_schema:
                Telnyx::AI::Conversations::InsightUpdateParams::JsonSchema::Variants,
              name: String,
              webhook: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            instructions: nil,
            json_schema: nil,
            name: nil,
            webhook: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                instructions: String,
                json_schema:
                  Telnyx::AI::Conversations::InsightUpdateParams::JsonSchema::Variants,
                name: String,
                webhook: String,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          module JsonSchema
            extend Telnyx::Internal::Type::Union

            Variants = T.type_alias { T.any(String, T.anything) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::Conversations::InsightUpdateParams::JsonSchema::Variants
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
