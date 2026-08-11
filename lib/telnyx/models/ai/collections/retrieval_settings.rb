# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Collections
        class RetrievalSettings < Telnyx::Internal::Type::BaseModel
          # @!attribute retrieval_type
          #   Retrieval strategy. `vector` runs semantic similarity search; `hybrid` combines
          #   vector similarity with keyword matching; `keyword` runs lexical (BM25) matching.
          #
          #   @return [Symbol, Telnyx::Models::AI::Collections::RetrievalSettings::RetrievalType, nil]
          optional :retrieval_type, enum: -> { Telnyx::AI::Collections::RetrievalSettings::RetrievalType }

          # @!attribute top_k
          #   Number of top results to retrieve (1–50).
          #
          #   @return [Integer, nil]
          optional :top_k, Integer

          # @!method initialize(retrieval_type: nil, top_k: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Collections::RetrievalSettings} for more details.
          #
          #   How documents are retrieved when searching the collection.
          #
          #   @param retrieval_type [Symbol, Telnyx::Models::AI::Collections::RetrievalSettings::RetrievalType] Retrieval strategy. `vector` runs semantic similarity search; `hybrid` combines
          #
          #   @param top_k [Integer] Number of top results to retrieve (1–50).

          # Retrieval strategy. `vector` runs semantic similarity search; `hybrid` combines
          # vector similarity with keyword matching; `keyword` runs lexical (BM25) matching.
          #
          # @see Telnyx::Models::AI::Collections::RetrievalSettings#retrieval_type
          module RetrievalType
            extend Telnyx::Internal::Type::Enum

            VECTOR = :vector
            HYBRID = :hybrid
            KEYWORD = :keyword

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
