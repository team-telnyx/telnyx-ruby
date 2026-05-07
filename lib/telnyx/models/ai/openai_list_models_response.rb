# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::OpenAI#list_models
      class OpenAIListModelsResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::AI::OpenAIListModelsResponse::Data>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::OpenAIListModelsResponse::Data] }

        # @!attribute object
        #
        #   @return [String, nil]
        optional :object, String

        # @!method initialize(data:, object: nil)
        #   @param data [Array<Telnyx::Models::AI::OpenAIListModelsResponse::Data>]
        #   @param object [String]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute created
          #
          #   @return [Integer]
          required :created, Integer

          # @!attribute owned_by
          #
          #   @return [String]
          required :owned_by, String

          # @!attribute object
          #
          #   @return [String, nil]
          optional :object, String

          # @!method initialize(id:, created:, owned_by:, object: nil)
          #   @param id [String]
          #   @param created [Integer]
          #   @param owned_by [String]
          #   @param object [String]
        end
      end
    end
  end
end
