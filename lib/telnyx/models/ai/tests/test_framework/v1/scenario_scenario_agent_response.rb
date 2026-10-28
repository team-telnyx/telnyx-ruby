# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Scenarios#scenario_agent
            class ScenarioScenarioAgentResponse < Telnyx::Internal::Type::BaseModel
              # @!attribute progress_id
              #
              #   @return [String]
              required :progress_id, String

              # @!attribute session_id
              #
              #   @return [Integer, nil]
              optional :session_id, Integer, nil?: true

              # @!method initialize(progress_id:, session_id: nil)
              #   @param progress_id [String]
              #   @param session_id [Integer, nil]
            end
          end
        end
      end
    end
  end
end
