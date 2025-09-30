# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Embeddings#list
      class EmbeddingListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::AI::EmbeddingListResponse::Data>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::EmbeddingListResponse::Data] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::AI::EmbeddingListResponse::Data>]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute status
          #   Status of an embeddings task.
          #
          #   @return [Symbol, Telnyx::Models::AI::BackgroundTaskStatus]
          required :status, enum: -> { Telnyx::AI::BackgroundTaskStatus }

          # @!attribute task_id
          #
          #   @return [String]
          required :task_id, String

          # @!attribute task_name
          #
          #   @return [String]
          required :task_name, String

          # @!attribute user_id
          #
          #   @return [String]
          required :user_id, String

          # @!attribute bucket
          #
          #   @return [String, nil]
          optional :bucket, String

          # @!attribute finished_at
          #
          #   @return [Time, nil]
          optional :finished_at, Time

          # @!method initialize(created_at:, status:, task_id:, task_name:, user_id:, bucket: nil, finished_at: nil)
          #   @param created_at [Time]
          #
          #   @param status [Symbol, Telnyx::Models::AI::BackgroundTaskStatus] Status of an embeddings task.
          #
          #   @param task_id [String]
          #
          #   @param task_name [String]
          #
          #   @param user_id [String]
          #
          #   @param bucket [String]
          #
          #   @param finished_at [Time]
        end
      end
    end
  end
end
