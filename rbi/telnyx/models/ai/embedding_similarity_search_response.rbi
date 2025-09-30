# typed: strong

module Telnyx
  module Models
    module AI
      class EmbeddingSimilaritySearchResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::EmbeddingSimilaritySearchResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              Telnyx::Models::AI::EmbeddingSimilaritySearchResponse::Data
            ]
          )
        end
        attr_accessor :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::AI::EmbeddingSimilaritySearchResponse::Data::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Telnyx::Models::AI::EmbeddingSimilaritySearchResponse::Data
                ]
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::EmbeddingSimilaritySearchResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :distance

          sig { returns(String) }
          attr_accessor :document_chunk

          sig do
            returns(
              Telnyx::Models::AI::EmbeddingSimilaritySearchResponse::Data::Metadata
            )
          end
          attr_reader :metadata

          sig do
            params(
              metadata:
                Telnyx::Models::AI::EmbeddingSimilaritySearchResponse::Data::Metadata::OrHash
            ).void
          end
          attr_writer :metadata

          # Example document response from embedding service { "document_chunk": "your
          # status? This is Vanessa Bloome...", "distance": 0.18607724, "metadata": {
          # "source": "https://us-central-1.telnyxstorage.com/scripts/bee_movie_script.txt",
          # "checksum": "343054dd19bab39bbf6761a3d20f1daa", "embedding":
          # "openai/text-embedding-ada-002", "filename": "bee_movie_script.txt",
          # "certainty": 0.9069613814353943, "loader_metadata": {} } }
          sig do
            params(
              distance: Float,
              document_chunk: String,
              metadata:
                Telnyx::Models::AI::EmbeddingSimilaritySearchResponse::Data::Metadata::OrHash
            ).returns(T.attached_class)
          end
          def self.new(distance:, document_chunk:, metadata:)
          end

          sig do
            override.returns(
              {
                distance: Float,
                document_chunk: String,
                metadata:
                  Telnyx::Models::AI::EmbeddingSimilaritySearchResponse::Data::Metadata
              }
            )
          end
          def to_hash
          end

          class Metadata < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::EmbeddingSimilaritySearchResponse::Data::Metadata,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :checksum

            sig { returns(String) }
            attr_accessor :embedding

            sig { returns(String) }
            attr_accessor :filename

            sig { returns(String) }
            attr_accessor :source

            sig { returns(T.nilable(Float)) }
            attr_reader :certainty

            sig { params(certainty: Float).void }
            attr_writer :certainty

            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :loader_metadata

            sig { params(loader_metadata: T::Hash[Symbol, T.anything]).void }
            attr_writer :loader_metadata

            sig do
              params(
                checksum: String,
                embedding: String,
                filename: String,
                source: String,
                certainty: Float,
                loader_metadata: T::Hash[Symbol, T.anything]
              ).returns(T.attached_class)
            end
            def self.new(
              checksum:,
              embedding:,
              filename:,
              source:,
              certainty: nil,
              loader_metadata: nil
            )
            end

            sig do
              override.returns(
                {
                  checksum: String,
                  embedding: String,
                  filename: String,
                  source: String,
                  certainty: Float,
                  loader_metadata: T::Hash[Symbol, T.anything]
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
