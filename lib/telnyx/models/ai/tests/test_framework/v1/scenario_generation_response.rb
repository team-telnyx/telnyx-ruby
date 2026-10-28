# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Metrics#generate_metrics
            class ScenarioGenerationResponse < Telnyx::Internal::Type::BaseModel
              # @!attribute progress_id
              #   Identifier to poll generation progress with.
              #
              #   @return [String]
              required :progress_id, String

              # @!method initialize(progress_id:)
              #   @param progress_id [String] Identifier to poll generation progress with.
            end
          end
        end
      end
    end
  end
end
