# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Embeddings#similarity_search
      class EmbeddingSimilaritySearchResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::AI::EmbeddingSimilaritySearchResponse::Data>]
        required :data,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::EmbeddingSimilaritySearchResponse::Data] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::AI::EmbeddingSimilaritySearchResponse::Data>]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute distance
          #
          #   @return [Float]
          required :distance, Float

          # @!attribute document_chunk
          #
          #   @return [String]
          required :document_chunk, String

          # @!attribute metadata
          #
          #   @return [Telnyx::Models::AI::EmbeddingSimilaritySearchResponse::Data::Metadata]
          required :metadata, -> { Telnyx::Models::AI::EmbeddingSimilaritySearchResponse::Data::Metadata }

          # @!method initialize(distance:, document_chunk:, metadata:)
          #   Example document response from embedding service { "document_chunk": "your
          #   status? This is Vanessa Bloome...", "distance": 0.18607724, "metadata": {
          #   "source": "https://us-central-1.telnyxstorage.com/scripts/bee_movie_script.txt",
          #   "checksum": "343054dd19bab39bbf6761a3d20f1daa", "embedding":
          #   "openai/text-embedding-ada-002", "filename": "bee_movie_script.txt",
          #   "certainty": 0.9069613814353943, "loader_metadata": {} } }
          #
          #   @param distance [Float]
          #   @param document_chunk [String]
          #   @param metadata [Telnyx::Models::AI::EmbeddingSimilaritySearchResponse::Data::Metadata]

          # @see Telnyx::Models::AI::EmbeddingSimilaritySearchResponse::Data#metadata
          class Metadata < Telnyx::Internal::Type::BaseModel
            # @!attribute checksum
            #
            #   @return [String]
            required :checksum, String

            # @!attribute embedding
            #
            #   @return [String]
            required :embedding, String

            # @!attribute filename
            #
            #   @return [String]
            required :filename, String

            # @!attribute source
            #
            #   @return [String]
            required :source, String

            # @!attribute certainty
            #
            #   @return [Float, nil]
            optional :certainty, Float

            # @!attribute loader_metadata
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :loader_metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!method initialize(checksum:, embedding:, filename:, source:, certainty: nil, loader_metadata: nil)
            #   @param checksum [String]
            #   @param embedding [String]
            #   @param filename [String]
            #   @param source [String]
            #   @param certainty [Float]
            #   @param loader_metadata [Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
