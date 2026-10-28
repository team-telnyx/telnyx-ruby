# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Scenarios#retrieve_generate_progress
            class ScenarioRetrieveGenerateProgressResponse < Telnyx::Internal::Type::BaseModel
              # @!attribute completed_scenarios
              #
              #   @return [Integer, nil]
              optional :completed_scenarios, Integer

              # @!attribute failed_scenarios
              #
              #   @return [Integer, nil]
              optional :failed_scenarios, Integer

              # @!attribute scenarios_list
              #
              #   @return [Array<Hash{Symbol=>Object}>, nil]
              optional :scenarios_list,
                       Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

              # @!attribute total_scenarios
              #
              #   @return [Integer, nil]
              optional :total_scenarios, Integer

              # @!method initialize(completed_scenarios: nil, failed_scenarios: nil, scenarios_list: nil, total_scenarios: nil)
              #   @param completed_scenarios [Integer]
              #   @param failed_scenarios [Integer]
              #   @param scenarios_list [Array<Hash{Symbol=>Object}>]
              #   @param total_scenarios [Integer]
            end
          end
        end
      end
    end
  end
end
