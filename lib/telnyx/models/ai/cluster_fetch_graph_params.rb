# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Clusters#fetch_graph
      class ClusterFetchGraphParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute cluster_id
        #
        #   @return [Integer, nil]
        optional :cluster_id, Integer

        # @!method initialize(cluster_id: nil, request_options: {})
        #   @param cluster_id [Integer]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
