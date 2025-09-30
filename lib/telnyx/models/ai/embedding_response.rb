# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Embeddings#create
      class EmbeddingResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::AI::EmbeddingResponse::Data]
        required :data, -> { Telnyx::AI::EmbeddingResponse::Data }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::AI::EmbeddingResponse::Data]

        # @see Telnyx::Models::AI::EmbeddingResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute finished_at
          #
          #   @return [String, nil]
          optional :finished_at, String, nil?: true

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String

          # @!attribute task_id
          #
          #   @return [String, nil]
          optional :task_id, String

          # @!attribute task_name
          #
          #   @return [String, nil]
          optional :task_name, String

          # @!attribute user_id
          #
          #   @return [String, nil]
          optional :user_id, String

          # @!method initialize(created_at: nil, finished_at: nil, status: nil, task_id: nil, task_name: nil, user_id: nil)
          #   @param created_at [String]
          #   @param finished_at [String, nil]
          #   @param status [String]
          #   @param task_id [String]
          #   @param task_name [String]
          #   @param user_id [String]
        end
      end
    end
  end
end
