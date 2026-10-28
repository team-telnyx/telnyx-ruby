# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Metrics#generate_metrics
            class MetricGenerateMetricsParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute agent_id
              #   Test agent to suggest metrics for.
              #
              #   @return [Integer]
              required :agent_id, Integer

              # @!attribute num_metrics
              #   How many metrics to suggest.
              #
              #   @return [Integer]
              required :num_metrics, Integer

              # @!attribute scenarios
              #   Scenario IDs to base the suggestions on.
              #
              #   @return [Array<Integer>, nil]
              optional :scenarios, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!method initialize(agent_id:, num_metrics:, scenarios: nil, request_options: {})
              #   @param agent_id [Integer] Test agent to suggest metrics for.
              #
              #   @param num_metrics [Integer] How many metrics to suggest.
              #
              #   @param scenarios [Array<Integer>] Scenario IDs to base the suggestions on.
              #
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
