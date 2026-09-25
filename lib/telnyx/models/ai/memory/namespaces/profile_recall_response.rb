# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles#recall
          class ProfileRecallResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Array<Telnyx::Models::AI::Memory::Namespaces::ProfileRecallResponse::Data>]
            required :data,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Memory::Namespaces::ProfileRecallResponse::Data] }

            # @!method initialize(data:)
            #   @param data [Array<Telnyx::Models::AI::Memory::Namespaces::ProfileRecallResponse::Data>]

            class Data < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute text
              #
              #   @return [String]
              required :text, String

              # @!attribute recorded_at
              #
              #   @return [String, nil]
              optional :recorded_at, String, nil?: true

              # @!attribute score
              #   Relevance, 0-1. Null where the deployment's reranker is a passthrough; results
              #   are in rank order either way.
              #
              #   @return [Float, nil]
              optional :score, Float, nil?: true

              # @!method initialize(id:, text:, recorded_at: nil, score: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Memory::Namespaces::ProfileRecallResponse::Data} for more
              #   details.
              #
              #   @param id [String]
              #
              #   @param text [String]
              #
              #   @param recorded_at [String, nil]
              #
              #   @param score [Float, nil] Relevance, 0-1. Null where the deployment's reranker is a passthrough; results a
            end
          end
        end
      end
    end
  end
end
