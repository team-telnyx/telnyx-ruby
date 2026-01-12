# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Clusters#retrieve
      class ClusterRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::AI::ClusterRetrieveResponse::Data]
        required :data, -> { Telnyx::Models::AI::ClusterRetrieveResponse::Data }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::AI::ClusterRetrieveResponse::Data]

        # @see Telnyx::Models::AI::ClusterRetrieveResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute bucket
          #
          #   @return [String]
          required :bucket, String

          # @!attribute clusters
          #
          #   @return [Array<Telnyx::Models::AI::RecursiveCluster>]
          required :clusters, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::RecursiveCluster] }

          # @!attribute status
          #
          #   @return [Symbol, Telnyx::Models::Messaging10dlc::TaskStatus]
          required :status, enum: -> { Telnyx::Messaging10dlc::TaskStatus }

          # @!method initialize(bucket:, clusters:, status:)
          #   @param bucket [String]
          #   @param clusters [Array<Telnyx::Models::AI::RecursiveCluster>]
          #   @param status [Symbol, Telnyx::Models::Messaging10dlc::TaskStatus]
        end
      end
    end
  end
end
