# typed: strong

module Telnyx
  module Models
    module AI
      module OpenAI
        class EmbeddingListEmbeddingModelsResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::OpenAI::EmbeddingListEmbeddingModelsResponse,
                Telnyx::Internal::AnyHash
              )
            end

          # List of available embedding models
          sig do
            returns(
              T::Array[
                Telnyx::Models::AI::OpenAI::EmbeddingListEmbeddingModelsResponse::Data
              ]
            )
          end
          attr_accessor :data

          # The object type, always 'list'
          sig { returns(String) }
          attr_accessor :object

          sig do
            params(
              data:
                T::Array[
                  Telnyx::Models::AI::OpenAI::EmbeddingListEmbeddingModelsResponse::Data::OrHash
                ],
              object: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of available embedding models
            data:,
            # The object type, always 'list'
            object:
          )
          end

          sig do
            override.returns(
              {
                data:
                  T::Array[
                    Telnyx::Models::AI::OpenAI::EmbeddingListEmbeddingModelsResponse::Data
                  ],
                object: String
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::OpenAI::EmbeddingListEmbeddingModelsResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            # The model identifier
            sig { returns(String) }
            attr_accessor :id

            # Unix timestamp of when the model was created
            sig { returns(Integer) }
            attr_accessor :created

            # The object type, always 'model'
            sig { returns(String) }
            attr_accessor :object

            # The organization that owns the model
            sig { returns(String) }
            attr_accessor :owned_by

            sig do
              params(
                id: String,
                created: Integer,
                object: String,
                owned_by: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The model identifier
              id:,
              # Unix timestamp of when the model was created
              created:,
              # The object type, always 'model'
              object:,
              # The organization that owns the model
              owned_by:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  created: Integer,
                  object: String,
                  owned_by: String
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
