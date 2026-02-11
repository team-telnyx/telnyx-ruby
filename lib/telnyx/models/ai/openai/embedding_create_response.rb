# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module OpenAI
        # @see Telnyx::Resources::AI::OpenAI::Embeddings#create
        class EmbeddingCreateResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #   List of embedding objects
          #
          #   @return [Array<Telnyx::Models::AI::OpenAI::EmbeddingCreateResponse::Data>]
          required :data,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::OpenAI::EmbeddingCreateResponse::Data] }

          # @!attribute model
          #   The model used for embedding
          #
          #   @return [String]
          required :model, String

          # @!attribute object
          #   The object type, always 'list'
          #
          #   @return [String]
          required :object, String

          # @!attribute usage
          #
          #   @return [Telnyx::Models::AI::OpenAI::EmbeddingCreateResponse::Usage]
          required :usage, -> { Telnyx::Models::AI::OpenAI::EmbeddingCreateResponse::Usage }

          # @!method initialize(data:, model:, object:, usage:)
          #   @param data [Array<Telnyx::Models::AI::OpenAI::EmbeddingCreateResponse::Data>] List of embedding objects
          #
          #   @param model [String] The model used for embedding
          #
          #   @param object [String] The object type, always 'list'
          #
          #   @param usage [Telnyx::Models::AI::OpenAI::EmbeddingCreateResponse::Usage]

          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute embedding
            #   The embedding vector
            #
            #   @return [Array<Float>]
            required :embedding, Telnyx::Internal::Type::ArrayOf[Float]

            # @!attribute index
            #   The index of the embedding in the list of embeddings
            #
            #   @return [Integer]
            required :index, Integer

            # @!attribute object
            #   The object type, always 'embedding'
            #
            #   @return [String]
            required :object, String

            # @!method initialize(embedding:, index:, object:)
            #   @param embedding [Array<Float>] The embedding vector
            #
            #   @param index [Integer] The index of the embedding in the list of embeddings
            #
            #   @param object [String] The object type, always 'embedding'
          end

          # @see Telnyx::Models::AI::OpenAI::EmbeddingCreateResponse#usage
          class Usage < Telnyx::Internal::Type::BaseModel
            # @!attribute prompt_tokens
            #   Number of tokens in the input
            #
            #   @return [Integer]
            required :prompt_tokens, Integer

            # @!attribute total_tokens
            #   Total number of tokens used
            #
            #   @return [Integer]
            required :total_tokens, Integer

            # @!method initialize(prompt_tokens:, total_tokens:)
            #   @param prompt_tokens [Integer] Number of tokens in the input
            #
            #   @param total_tokens [Integer] Total number of tokens used
          end
        end
      end
    end
  end
end
