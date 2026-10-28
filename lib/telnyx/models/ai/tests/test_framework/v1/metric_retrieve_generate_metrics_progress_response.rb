# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Metrics#retrieve_generate_metrics_progress
            class MetricRetrieveGenerateMetricsProgressResponse < Telnyx::Internal::Type::BaseModel
              # @!attribute agent_id
              #
              #   @return [Integer]
              required :agent_id, Integer

              # @!attribute current_step
              #
              #   @return [String]
              required :current_step, String

              # @!attribute error
              #
              #   @return [String, nil]
              required :error, String, nil?: true

              # @!attribute metrics
              #
              #   @return [Array<Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Metric>]
              required :metrics,
                       -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Metric] }

              # @!attribute status
              #
              #   @return [Symbol, Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Status]
              required :status,
                       enum: -> { Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Status }

              # @!method initialize(agent_id:, current_step:, error:, metrics:, status:)
              #   @param agent_id [Integer]
              #   @param current_step [String]
              #   @param error [String, nil]
              #   @param metrics [Array<Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Metric>]
              #   @param status [Symbol, Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Status]

              class Metric < Telnyx::Internal::Type::BaseModel
                # @!attribute agent
                #
                #   @return [Integer, nil]
                optional :agent, Integer

                # @!attribute description
                #
                #   @return [String, nil]
                optional :description, String

                # @!attribute eval_type
                #
                #   @return [String, nil]
                optional :eval_type, String

                # @!attribute name
                #
                #   @return [String, nil]
                optional :name, String

                # @!attribute scenarios
                #
                #   @return [Array<Integer>, nil]
                optional :scenarios, Telnyx::Internal::Type::ArrayOf[Integer]

                # @!method initialize(agent: nil, description: nil, eval_type: nil, name: nil, scenarios: nil)
                #   @param agent [Integer]
                #   @param description [String]
                #   @param eval_type [String]
                #   @param name [String]
                #   @param scenarios [Array<Integer>]
              end

              # @see Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse#status
              module Status
                extend Telnyx::Internal::Type::Enum

                QUEUED = :queued
                PROCESSING = :processing
                COMPLETED = :completed
                FAILED = :failed

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end
      end
    end
  end
end
