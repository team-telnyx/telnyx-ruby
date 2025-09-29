# typed: strong

module Telnyx
  module Models
    module AI
      module Conversations
        class InsightCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Conversations::InsightCreateParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :instructions

          sig { returns(String) }
          attr_accessor :name

          # If specified, the output will follow the JSON schema.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::Conversations::InsightCreateParams::JsonSchema::Variants
              )
            )
          end
          attr_reader :json_schema

          sig do
            params(
              json_schema:
                Telnyx::AI::Conversations::InsightCreateParams::JsonSchema::Variants
            ).void
          end
          attr_writer :json_schema

          sig { returns(T.nilable(String)) }
          attr_reader :webhook

          sig { params(webhook: String).void }
          attr_writer :webhook

          sig do
            params(
              instructions: String,
              name: String,
              json_schema:
                Telnyx::AI::Conversations::InsightCreateParams::JsonSchema::Variants,
              webhook: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            instructions:,
            name:,
            # If specified, the output will follow the JSON schema.
            json_schema: nil,
            webhook: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                instructions: String,
                name: String,
                json_schema:
                  Telnyx::AI::Conversations::InsightCreateParams::JsonSchema::Variants,
                webhook: String,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          # If specified, the output will follow the JSON schema.
          module JsonSchema
            extend Telnyx::Internal::Type::Union

            Variants = T.type_alias { T.any(String, T.anything) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::Conversations::InsightCreateParams::JsonSchema::Variants
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
