# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class RetrievalTool < Telnyx::Internal::Type::BaseModel
        # @!attribute retrieval
        #
        #   @return [Telnyx::Models::AI::InferenceEmbeddingBucketIDs]
        required :retrieval, -> { Telnyx::AI::InferenceEmbeddingBucketIDs }

        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::AI::RetrievalTool::Type]
        required :type, enum: -> { Telnyx::AI::RetrievalTool::Type }

        # @!method initialize(retrieval:, type:)
        #   @param retrieval [Telnyx::Models::AI::InferenceEmbeddingBucketIDs]
        #   @param type [Symbol, Telnyx::Models::AI::RetrievalTool::Type]

        # @see Telnyx::Models::AI::RetrievalTool#type
        module Type
          extend Telnyx::Internal::Type::Enum

          RETRIEVAL = :retrieval

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
