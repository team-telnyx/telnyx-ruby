# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Clusters#fetch_graph
      class ClusterFetchGraphParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute task_id
        #
        #   @return [String]
        required :task_id, String

        # @!attribute cluster_id
        #
        #   @return [Integer, nil]
        optional :cluster_id, Integer

        # @!method initialize(task_id:, cluster_id: nil, request_options: {})
        #   @param task_id [String]
        #   @param cluster_id [Integer]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
