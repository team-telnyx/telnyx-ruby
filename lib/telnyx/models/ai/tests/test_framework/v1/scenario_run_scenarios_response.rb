# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Scenarios#run_scenarios
            class ScenarioRunScenariosResponse < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #   ID of the created test-run batch whose results can be polled.
              #
              #   @return [Integer]
              required :id, Integer

              # @!attribute status
              #   Initial status of the run batch.
              #
              #   @return [String]
              required :status, String

              # @!method initialize(id:, status:)
              #   @param id [Integer] ID of the created test-run batch whose results can be polled.
              #
              #   @param status [String] Initial status of the run batch.
            end
          end
        end
      end
    end
  end
end
