# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Embeddings#similarity_search
      class EmbeddingSimilaritySearchParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute bucket_name
        #
        #   @return [String]
        required :bucket_name, String

        # @!attribute query
        #
        #   @return [String]
        required :query, String

        # @!attribute num_of_docs
        #
        #   @return [Integer, nil]
        optional :num_of_docs, Integer

        # @!method initialize(bucket_name:, query:, num_of_docs: nil, request_options: {})
        #   @param bucket_name [String]
        #   @param query [String]
        #   @param num_of_docs [Integer]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
