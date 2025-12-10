# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Clusters#list
      class ClusterListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute bucket
        #
        #   @return [String]
        required :bucket, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute finished_at
        #
        #   @return [Time]
        required :finished_at, Time

        # @!attribute min_cluster_size
        #
        #   @return [Integer]
        required :min_cluster_size, Integer

        # @!attribute min_subcluster_size
        #
        #   @return [Integer]
        required :min_subcluster_size, Integer

        # @!attribute status
        #
        #   @return [Symbol, Telnyx::Models::TaskStatus]
        required :status, enum: -> { Telnyx::TaskStatus }

        # @!attribute task_id
        #
        #   @return [String]
        required :task_id, String

        # @!method initialize(bucket:, created_at:, finished_at:, min_cluster_size:, min_subcluster_size:, status:, task_id:)
        #   @param bucket [String]
        #   @param created_at [Time]
        #   @param finished_at [Time]
        #   @param min_cluster_size [Integer]
        #   @param min_subcluster_size [Integer]
        #   @param status [Symbol, Telnyx::Models::TaskStatus]
        #   @param task_id [String]
      end
    end
  end
end
