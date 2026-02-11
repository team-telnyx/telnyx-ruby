# typed: strong

module Telnyx
  module Models
    module AI
      module OpenAI
        class EmbeddingCreateEmbeddingsResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::OpenAI::EmbeddingCreateEmbeddingsResponse,
                Telnyx::Internal::AnyHash
              )
            end

          # List of embedding objects
          sig do
            returns(
              T::Array[
                Telnyx::Models::AI::OpenAI::EmbeddingCreateEmbeddingsResponse::Data
              ]
            )
          end
          attr_accessor :data

          # The model used for embedding
          sig { returns(String) }
          attr_accessor :model

          # The object type, always 'list'
          sig { returns(String) }
          attr_accessor :object

          sig do
            returns(
              Telnyx::Models::AI::OpenAI::EmbeddingCreateEmbeddingsResponse::Usage
            )
          end
          attr_reader :usage

          sig do
            params(
              usage:
                Telnyx::Models::AI::OpenAI::EmbeddingCreateEmbeddingsResponse::Usage::OrHash
            ).void
          end
          attr_writer :usage

          sig do
            params(
              data:
                T::Array[
                  Telnyx::Models::AI::OpenAI::EmbeddingCreateEmbeddingsResponse::Data::OrHash
                ],
              model: String,
              object: String,
              usage:
                Telnyx::Models::AI::OpenAI::EmbeddingCreateEmbeddingsResponse::Usage::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # List of embedding objects
            data:,
            # The model used for embedding
            model:,
            # The object type, always 'list'
            object:,
            usage:
          )
          end

          sig do
            override.returns(
              {
                data:
                  T::Array[
                    Telnyx::Models::AI::OpenAI::EmbeddingCreateEmbeddingsResponse::Data
                  ],
                model: String,
                object: String,
                usage:
                  Telnyx::Models::AI::OpenAI::EmbeddingCreateEmbeddingsResponse::Usage
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::OpenAI::EmbeddingCreateEmbeddingsResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            # The embedding vector
            sig { returns(T::Array[Float]) }
            attr_accessor :embedding

            # The index of the embedding in the list of embeddings
            sig { returns(Integer) }
            attr_accessor :index

            # The object type, always 'embedding'
            sig { returns(String) }
            attr_accessor :object

            sig do
              params(
                embedding: T::Array[Float],
                index: Integer,
                object: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The embedding vector
              embedding:,
              # The index of the embedding in the list of embeddings
              index:,
              # The object type, always 'embedding'
              object:
            )
            end

            sig do
              override.returns(
                { embedding: T::Array[Float], index: Integer, object: String }
              )
            end
            def to_hash
            end
          end

          class Usage < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::OpenAI::EmbeddingCreateEmbeddingsResponse::Usage,
                  Telnyx::Internal::AnyHash
                )
              end

            # Number of tokens in the input
            sig { returns(Integer) }
            attr_accessor :prompt_tokens

            # Total number of tokens used
            sig { returns(Integer) }
            attr_accessor :total_tokens

            sig do
              params(prompt_tokens: Integer, total_tokens: Integer).returns(
                T.attached_class
              )
            end
            def self.new(
              # Number of tokens in the input
              prompt_tokens:,
              # Total number of tokens used
              total_tokens:
            )
            end

            sig do
              override.returns(
                { prompt_tokens: Integer, total_tokens: Integer }
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
