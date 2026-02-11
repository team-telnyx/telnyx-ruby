# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module OpenAI
        # @see Telnyx::Resources::AI::OpenAI::Embeddings#list_embedding_models
        class EmbeddingListEmbeddingModelsResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #   List of available embedding models
          #
          #   @return [Array<Telnyx::Models::AI::OpenAI::EmbeddingListEmbeddingModelsResponse::Data>]
          required :data,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::OpenAI::EmbeddingListEmbeddingModelsResponse::Data] }

          # @!attribute object
          #   The object type, always 'list'
          #
          #   @return [String]
          required :object, String

          # @!method initialize(data:, object:)
          #   @param data [Array<Telnyx::Models::AI::OpenAI::EmbeddingListEmbeddingModelsResponse::Data>] List of available embedding models
          #
          #   @param object [String] The object type, always 'list'

          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   The model identifier
            #
            #   @return [String]
            required :id, String

            # @!attribute created
            #   Unix timestamp of when the model was created
            #
            #   @return [Integer]
            required :created, Integer

            # @!attribute object
            #   The object type, always 'model'
            #
            #   @return [String]
            required :object, String

            # @!attribute owned_by
            #   The organization that owns the model
            #
            #   @return [String]
            required :owned_by, String

            # @!method initialize(id:, created:, object:, owned_by:)
            #   @param id [String] The model identifier
            #
            #   @param created [Integer] Unix timestamp of when the model was created
            #
            #   @param object [String] The object type, always 'model'
            #
            #   @param owned_by [String] The organization that owns the model
          end
        end
      end
    end
  end
end
