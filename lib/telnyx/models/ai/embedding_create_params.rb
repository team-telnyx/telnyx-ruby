# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Embeddings#create
      class EmbeddingCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute bucket_name
        #
        #   @return [String]
        required :bucket_name, String

        # @!attribute document_chunk_overlap_size
        #
        #   @return [Integer, nil]
        optional :document_chunk_overlap_size, Integer

        # @!attribute document_chunk_size
        #
        #   @return [Integer, nil]
        optional :document_chunk_size, Integer

        # @!attribute embedding_model
        #   Supported models to vectorize and embed documents.
        #
        #   @return [Symbol, Telnyx::Models::AI::EmbeddingCreateParams::EmbeddingModel, nil]
        optional :embedding_model, enum: -> { Telnyx::AI::EmbeddingCreateParams::EmbeddingModel }

        # @!attribute loader
        #   Supported types of custom document loaders for embeddings.
        #
        #   @return [Symbol, Telnyx::Models::AI::EmbeddingCreateParams::Loader, nil]
        optional :loader, enum: -> { Telnyx::AI::EmbeddingCreateParams::Loader }

        # @!method initialize(bucket_name:, document_chunk_overlap_size: nil, document_chunk_size: nil, embedding_model: nil, loader: nil, request_options: {})
        #   @param bucket_name [String]
        #
        #   @param document_chunk_overlap_size [Integer]
        #
        #   @param document_chunk_size [Integer]
        #
        #   @param embedding_model [Symbol, Telnyx::Models::AI::EmbeddingCreateParams::EmbeddingModel] Supported models to vectorize and embed documents.
        #
        #   @param loader [Symbol, Telnyx::Models::AI::EmbeddingCreateParams::Loader] Supported types of custom document loaders for embeddings.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Supported models to vectorize and embed documents.
        module EmbeddingModel
          extend Telnyx::Internal::Type::Enum

          THENLPER_GTE_LARGE = :"thenlper/gte-large"
          INTFLOAT_MULTILINGUAL_E5_LARGE = :"intfloat/multilingual-e5-large"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Supported types of custom document loaders for embeddings.
        module Loader
          extend Telnyx::Internal::Type::Enum

          DEFAULT = :default
          INTERCOM = :intercom

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
