# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Clusters#compute
      class ClusterComputeResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::AI::ClusterComputeResponse::Data]
        required :data, -> { Telnyx::Models::AI::ClusterComputeResponse::Data }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::AI::ClusterComputeResponse::Data]

        # @see Telnyx::Models::AI::ClusterComputeResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute task_id
          #
          #   @return [String]
          required :task_id, String

          # @!method initialize(task_id:)
          #   @param task_id [String]
        end
      end
    end
  end
end
