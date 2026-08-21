# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Embeddings#url
      class EmbeddingURLParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute bucket_name
        #   Name of the bucket to store the embeddings. This bucket must already exist.
        #
        #   @return [String]
        required :bucket_name, String

        # @!attribute url
        #   The URL of the webpage to embed
        #
        #   @return [String]
        required :url, String

        # @!attribute idempotency_key
        #
        #   @return [String, nil]
        optional :idempotency_key, String

        # @!method initialize(bucket_name:, url:, idempotency_key: nil, request_options: {})
        #   @param bucket_name [String] Name of the bucket to store the embeddings. This bucket must already exist.
        #
        #   @param url [String] The URL of the webpage to embed
        #
        #   @param idempotency_key [String]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
