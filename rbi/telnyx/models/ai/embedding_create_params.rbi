# typed: strong

module Telnyx
  module Models
    module AI
      class EmbeddingCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::EmbeddingCreateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :bucket_name

        sig { returns(T.nilable(Integer)) }
        attr_reader :document_chunk_overlap_size

        sig { params(document_chunk_overlap_size: Integer).void }
        attr_writer :document_chunk_overlap_size

        sig { returns(T.nilable(Integer)) }
        attr_reader :document_chunk_size

        sig { params(document_chunk_size: Integer).void }
        attr_writer :document_chunk_size

        # Supported models to vectorize and embed documents.
        sig do
          returns(
            T.nilable(
              Telnyx::AI::EmbeddingCreateParams::EmbeddingModel::OrSymbol
            )
          )
        end
        attr_reader :embedding_model

        sig do
          params(
            embedding_model:
              Telnyx::AI::EmbeddingCreateParams::EmbeddingModel::OrSymbol
          ).void
        end
        attr_writer :embedding_model

        # Supported types of custom document loaders for embeddings.
        sig do
          returns(
            T.nilable(Telnyx::AI::EmbeddingCreateParams::Loader::OrSymbol)
          )
        end
        attr_reader :loader

        sig do
          params(
            loader: Telnyx::AI::EmbeddingCreateParams::Loader::OrSymbol
          ).void
        end
        attr_writer :loader

        sig do
          params(
            bucket_name: String,
            document_chunk_overlap_size: Integer,
            document_chunk_size: Integer,
            embedding_model:
              Telnyx::AI::EmbeddingCreateParams::EmbeddingModel::OrSymbol,
            loader: Telnyx::AI::EmbeddingCreateParams::Loader::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          bucket_name:,
          document_chunk_overlap_size: nil,
          document_chunk_size: nil,
          # Supported models to vectorize and embed documents.
          embedding_model: nil,
          # Supported types of custom document loaders for embeddings.
          loader: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              bucket_name: String,
              document_chunk_overlap_size: Integer,
              document_chunk_size: Integer,
              embedding_model:
                Telnyx::AI::EmbeddingCreateParams::EmbeddingModel::OrSymbol,
              loader: Telnyx::AI::EmbeddingCreateParams::Loader::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Supported models to vectorize and embed documents.
        module EmbeddingModel
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::EmbeddingCreateParams::EmbeddingModel)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          THENLPER_GTE_LARGE =
            T.let(
              :"thenlper/gte-large",
              Telnyx::AI::EmbeddingCreateParams::EmbeddingModel::TaggedSymbol
            )
          INTFLOAT_MULTILINGUAL_E5_LARGE =
            T.let(
              :"intfloat/multilingual-e5-large",
              Telnyx::AI::EmbeddingCreateParams::EmbeddingModel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::EmbeddingCreateParams::EmbeddingModel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Supported types of custom document loaders for embeddings.
        module Loader
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::EmbeddingCreateParams::Loader)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEFAULT =
            T.let(
              :default,
              Telnyx::AI::EmbeddingCreateParams::Loader::TaggedSymbol
            )
          INTERCOM =
            T.let(
              :intercom,
              Telnyx::AI::EmbeddingCreateParams::Loader::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::AI::EmbeddingCreateParams::Loader::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
