# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Embeddings#retrieve
      class EmbeddingRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::AI::EmbeddingRetrieveResponse::Data]
        required :data, -> { Telnyx::Models::AI::EmbeddingRetrieveResponse::Data }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::AI::EmbeddingRetrieveResponse::Data]

        # @see Telnyx::Models::AI::EmbeddingRetrieveResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute finished_at
          #
          #   @return [String, nil]
          optional :finished_at, String

          # @!attribute status
          #   Status of an embeddings task.
          #
          #   @return [Symbol, Telnyx::Models::AI::BackgroundTaskStatus, nil]
          optional :status, enum: -> { Telnyx::AI::BackgroundTaskStatus }

          # @!attribute task_id
          #
          #   @return [String, nil]
          optional :task_id, String

          # @!attribute task_name
          #
          #   @return [String, nil]
          optional :task_name, String

          # @!method initialize(created_at: nil, finished_at: nil, status: nil, task_id: nil, task_name: nil)
          #   @param created_at [String]
          #
          #   @param finished_at [String]
          #
          #   @param status [Symbol, Telnyx::Models::AI::BackgroundTaskStatus] Status of an embeddings task.
          #
          #   @param task_id [String]
          #
          #   @param task_name [String]
        end
      end
    end
  end
end
