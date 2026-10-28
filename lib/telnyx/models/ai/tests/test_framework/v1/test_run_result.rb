# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Results#retrieve
            class TestRunResult < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Integer]
              required :id, Integer

              # @!attribute agent
              #
              #   @return [Integer]
              required :agent, Integer

              # @!attribute created_at
              #
              #   @return [Time]
              required :created_at, Time

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!attribute status
              #   Run batch status: running, completed, failed, pending, in_progress, evaluating,
              #   in_queue, timeout, cancelled, or scaling_up.
              #
              #   @return [String]
              required :status, String

              # @!attribute updated_at
              #
              #   @return [Time]
              required :updated_at, Time

              # @!attribute agent_inbound
              #
              #   @return [Boolean, nil]
              optional :agent_inbound, Telnyx::Internal::Type::Boolean

              # @!attribute agent_name
              #
              #   @return [String, nil]
              optional :agent_name, String

              # @!attribute completed_runs_count
              #
              #   @return [Integer, String, nil]
              optional :completed_runs_count,
                       union: -> { Telnyx::AI::Tests::TestFramework::V1::TestRunResult::CompletedRunsCount }

              # @!attribute failed_runs_count
              #
              #   @return [Integer, String, nil]
              optional :failed_runs_count,
                       union: -> { Telnyx::AI::Tests::TestFramework::V1::TestRunResult::FailedRunsCount }

              # @!attribute is_cronjob
              #   Whether this batch was started by a scheduled job.
              #
              #   @return [Boolean, nil]
              optional :is_cronjob, Telnyx::Internal::Type::Boolean

              # @!attribute met_expected_outcome_count
              #
              #   @return [Integer, String, nil]
              optional :met_expected_outcome_count,
                       union: -> { Telnyx::AI::Tests::TestFramework::V1::TestRunResult::MetExpectedOutcomeCount }

              # @!attribute run_as_text
              #   Whether the batch ran as text chat rather than voice calls.
              #
              #   @return [Boolean, nil]
              optional :run_as_text, Telnyx::Internal::Type::Boolean

              # @!attribute run_type
              #
              #   @return [String, nil]
              optional :run_type, String, nil?: true

              # @!attribute runs
              #   Per-run detail keyed by run ID.
              #
              #   @return [Hash{Symbol=>Telnyx::Models::AI::Tests::TestFramework::V1::TestRunResult::Run}, nil]
              optional :runs,
                       -> {
                         Telnyx::Internal::Type::HashOf[Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Run]
                       },
                       nil?: true

              # @!attribute scenarios
              #
              #   @return [Array<Telnyx::Models::AI::Tests::TestFramework::V1::TestRunResult::Scenario>, nil]
              optional :scenarios,
                       -> {
                         Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Scenario]
                       },
                       nil?: true

              # @!attribute success_rate
              #   Share of runs judged successful.
              #
              #   @return [Float, String, nil]
              optional :success_rate, union: -> { Telnyx::AI::Tests::TestFramework::V1::TestRunResult::SuccessRate }

              # @!attribute success_runs_count
              #
              #   @return [Integer, String, nil]
              optional :success_runs_count,
                       union: -> { Telnyx::AI::Tests::TestFramework::V1::TestRunResult::SuccessRunsCount }

              # @!attribute total_expected_outcome_count
              #
              #   @return [Integer, String, nil]
              optional :total_expected_outcome_count,
                       union: -> { Telnyx::AI::Tests::TestFramework::V1::TestRunResult::TotalExpectedOutcomeCount }

              # @!attribute total_runs_count
              #
              #   @return [Integer, String, nil]
              optional :total_runs_count,
                       union: -> { Telnyx::AI::Tests::TestFramework::V1::TestRunResult::TotalRunsCount }

              # @!method initialize(id:, agent:, created_at:, name:, status:, updated_at:, agent_inbound: nil, agent_name: nil, completed_runs_count: nil, failed_runs_count: nil, is_cronjob: nil, met_expected_outcome_count: nil, run_as_text: nil, run_type: nil, runs: nil, scenarios: nil, success_rate: nil, success_runs_count: nil, total_expected_outcome_count: nil, total_runs_count: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Tests::TestFramework::V1::TestRunResult} for more details.
              #
              #   @param id [Integer]
              #
              #   @param agent [Integer]
              #
              #   @param created_at [Time]
              #
              #   @param name [String]
              #
              #   @param status [String] Run batch status: running, completed, failed, pending, in_progress, evaluating,
              #
              #   @param updated_at [Time]
              #
              #   @param agent_inbound [Boolean]
              #
              #   @param agent_name [String]
              #
              #   @param completed_runs_count [Integer, String]
              #
              #   @param failed_runs_count [Integer, String]
              #
              #   @param is_cronjob [Boolean] Whether this batch was started by a scheduled job.
              #
              #   @param met_expected_outcome_count [Integer, String]
              #
              #   @param run_as_text [Boolean] Whether the batch ran as text chat rather than voice calls.
              #
              #   @param run_type [String, nil]
              #
              #   @param runs [Hash{Symbol=>Telnyx::Models::AI::Tests::TestFramework::V1::TestRunResult::Run}, nil] Per-run detail keyed by run ID.
              #
              #   @param scenarios [Array<Telnyx::Models::AI::Tests::TestFramework::V1::TestRunResult::Scenario>, nil]
              #
              #   @param success_rate [Float, String] Share of runs judged successful.
              #
              #   @param success_runs_count [Integer, String]
              #
              #   @param total_expected_outcome_count [Integer, String]
              #
              #   @param total_runs_count [Integer, String]

              # @see Telnyx::Models::AI::Tests::TestFramework::V1::TestRunResult#completed_runs_count
              module CompletedRunsCount
                extend Telnyx::Internal::Type::Union

                variant Integer

                variant String

                # @!method self.variants
                #   @return [Array(Integer, String)]
              end

              # @see Telnyx::Models::AI::Tests::TestFramework::V1::TestRunResult#failed_runs_count
              module FailedRunsCount
                extend Telnyx::Internal::Type::Union

                variant Integer

                variant String

                # @!method self.variants
                #   @return [Array(Integer, String)]
              end

              # @see Telnyx::Models::AI::Tests::TestFramework::V1::TestRunResult#met_expected_outcome_count
              module MetExpectedOutcomeCount
                extend Telnyx::Internal::Type::Union

                variant Integer

                variant String

                # @!method self.variants
                #   @return [Array(Integer, String)]
              end

              class Run < Telnyx::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!attribute duration
                #
                #   @return [String, nil]
                optional :duration, String

                # @!attribute error_message
                #
                #   @return [String, nil]
                optional :error_message, String

                # @!attribute evaluation_status
                #
                #   @return [String, nil]
                optional :evaluation_status, String

                # @!attribute executed_at
                #
                #   @return [String, nil]
                optional :executed_at, String

                # @!attribute personality_name
                #
                #   @return [String, nil]
                optional :personality_name, String

                # @!attribute scenario
                #
                #   @return [Telnyx::Models::AI::Tests::TestFramework::V1::TestRunResult::Run::Scenario, nil]
                optional :scenario, -> { Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Run::Scenario }

                # @!attribute scenario_name
                #
                #   @return [String, nil]
                optional :scenario_name, String

                # @!attribute status
                #
                #   @return [String, nil]
                optional :status, String

                # @!attribute success
                #
                #   @return [Boolean, nil]
                optional :success, Telnyx::Internal::Type::Boolean, nil?: true

                # @!attribute test_profile_name
                #
                #   @return [String, nil]
                optional :test_profile_name, String

                # @!attribute timestamp
                #
                #   @return [String, nil]
                optional :timestamp, String

                # @!method initialize(id: nil, duration: nil, error_message: nil, evaluation_status: nil, executed_at: nil, personality_name: nil, scenario: nil, scenario_name: nil, status: nil, success: nil, test_profile_name: nil, timestamp: nil)
                #   @param id [Integer]
                #   @param duration [String]
                #   @param error_message [String]
                #   @param evaluation_status [String]
                #   @param executed_at [String]
                #   @param personality_name [String]
                #   @param scenario [Telnyx::Models::AI::Tests::TestFramework::V1::TestRunResult::Run::Scenario]
                #   @param scenario_name [String]
                #   @param status [String]
                #   @param success [Boolean, nil]
                #   @param test_profile_name [String]
                #   @param timestamp [String]

                # @see Telnyx::Models::AI::Tests::TestFramework::V1::TestRunResult::Run#scenario
                class Scenario < Telnyx::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [Integer, nil]
                  optional :id, Integer

                  # @!attribute expected_outcome_prompt
                  #
                  #   @return [String, nil]
                  optional :expected_outcome_prompt, String

                  # @!attribute name
                  #
                  #   @return [String, nil]
                  optional :name, String

                  # @!attribute personality_name
                  #
                  #   @return [String, nil]
                  optional :personality_name, String

                  # @!method initialize(id: nil, expected_outcome_prompt: nil, name: nil, personality_name: nil)
                  #   @param id [Integer]
                  #   @param expected_outcome_prompt [String]
                  #   @param name [String]
                  #   @param personality_name [String]
                end
              end

              class Scenario < Telnyx::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!attribute name
                #
                #   @return [String, nil]
                optional :name, String

                # @!method initialize(id: nil, name: nil)
                #   @param id [Integer]
                #   @param name [String]
              end

              # Share of runs judged successful.
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::TestRunResult#success_rate
              module SuccessRate
                extend Telnyx::Internal::Type::Union

                # Share of runs judged successful.
                variant Float

                # Share of runs judged successful.
                variant String

                # @!method self.variants
                #   @return [Array(Float, String)]
              end

              # @see Telnyx::Models::AI::Tests::TestFramework::V1::TestRunResult#success_runs_count
              module SuccessRunsCount
                extend Telnyx::Internal::Type::Union

                variant Integer

                variant String

                # @!method self.variants
                #   @return [Array(Integer, String)]
              end

              # @see Telnyx::Models::AI::Tests::TestFramework::V1::TestRunResult#total_expected_outcome_count
              module TotalExpectedOutcomeCount
                extend Telnyx::Internal::Type::Union

                variant Integer

                variant String

                # @!method self.variants
                #   @return [Array(Integer, String)]
              end

              # @see Telnyx::Models::AI::Tests::TestFramework::V1::TestRunResult#total_runs_count
              module TotalRunsCount
                extend Telnyx::Internal::Type::Union

                variant Integer

                variant String

                # @!method self.variants
                #   @return [Array(Integer, String)]
              end
            end
          end
        end
      end
    end
  end
end
