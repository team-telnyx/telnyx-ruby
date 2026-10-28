# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Results#list
            class ResultListResponse < Telnyx::Internal::Type::BaseModel
              # @!attribute next_
              #
              #   @return [String, nil]
              required :next_, String, api_name: :next, nil?: true

              # @!attribute previous
              #
              #   @return [String, nil]
              required :previous, String, nil?: true

              # @!attribute results
              #
              #   @return [Array<Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result>]
              required :results,
                       -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result] }

              # @!attribute count
              #
              #   @return [Integer, nil]
              optional :count, Integer

              # @!method initialize(next_:, previous:, results:, count: nil)
              #   @param next_ [String, nil]
              #   @param previous [String, nil]
              #   @param results [Array<Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result>]
              #   @param count [Integer]

              class Result < Telnyx::Internal::Type::BaseModel
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
                         union: -> { Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::CompletedRunsCount }

                # @!attribute failed_runs_count
                #
                #   @return [Integer, String, nil]
                optional :failed_runs_count,
                         union: -> { Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::FailedRunsCount }

                # @!attribute is_cronjob
                #   Whether this batch was started by a scheduled job.
                #
                #   @return [Boolean, nil]
                optional :is_cronjob, Telnyx::Internal::Type::Boolean

                # @!attribute met_expected_outcome_count
                #
                #   @return [Integer, String, nil]
                optional :met_expected_outcome_count,
                         union: -> { Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::MetExpectedOutcomeCount }

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
                #   Run summaries in this batch. Retrieve the batch for detail keyed by run ID.
                #
                #   @return [Array<Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::Run>, nil]
                optional :runs,
                         -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::Run] },
                         nil?: true

                # @!attribute scenarios
                #
                #   @return [Array<Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::Scenario>, nil]
                optional :scenarios,
                         -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::Scenario] },
                         nil?: true

                # @!attribute success_rate
                #   Share of runs judged successful.
                #
                #   @return [Float, String, nil]
                optional :success_rate,
                         union: -> { Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::SuccessRate }

                # @!attribute success_runs_count
                #
                #   @return [Integer, String, nil]
                optional :success_runs_count,
                         union: -> { Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::SuccessRunsCount }

                # @!attribute total_expected_outcome_count
                #
                #   @return [Integer, String, nil]
                optional :total_expected_outcome_count,
                         union: -> { Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::TotalExpectedOutcomeCount }

                # @!attribute total_runs_count
                #
                #   @return [Integer, String, nil]
                optional :total_runs_count,
                         union: -> { Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::TotalRunsCount }

                # @!method initialize(id:, agent:, created_at:, name:, status:, updated_at:, agent_inbound: nil, agent_name: nil, completed_runs_count: nil, failed_runs_count: nil, is_cronjob: nil, met_expected_outcome_count: nil, run_as_text: nil, run_type: nil, runs: nil, scenarios: nil, success_rate: nil, success_runs_count: nil, total_expected_outcome_count: nil, total_runs_count: nil)
                #   Some parameter documentations has been truncated, see
                #   {Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result} for
                #   more details.
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
                #   @param runs [Array<Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::Run>, nil] Run summaries in this batch. Retrieve the batch for detail keyed by run ID.
                #
                #   @param scenarios [Array<Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::Scenario>, nil]
                #
                #   @param success_rate [Float, String] Share of runs judged successful.
                #
                #   @param success_runs_count [Integer, String]
                #
                #   @param total_expected_outcome_count [Integer, String]
                #
                #   @param total_runs_count [Integer, String]

                # @see Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result#completed_runs_count
                module CompletedRunsCount
                  extend Telnyx::Internal::Type::Union

                  variant Integer

                  variant String

                  # @!method self.variants
                  #   @return [Array(Integer, String)]
                end

                # @see Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result#failed_runs_count
                module FailedRunsCount
                  extend Telnyx::Internal::Type::Union

                  variant Integer

                  variant String

                  # @!method self.variants
                  #   @return [Array(Integer, String)]
                end

                # @see Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result#met_expected_outcome_count
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

                  # @!attribute inbound_number
                  #
                  #   @return [String, nil]
                  optional :inbound_number, String, nil?: true

                  # @!attribute number
                  #
                  #   @return [String, nil]
                  optional :number, String, nil?: true

                  # @!attribute scenario
                  #
                  #   @return [Integer, nil]
                  optional :scenario, Integer

                  # @!attribute scenario_name
                  #
                  #   @return [String, nil]
                  optional :scenario_name, String

                  # @!attribute status
                  #
                  #   @return [String, nil]
                  optional :status, String

                  # @!method initialize(id: nil, inbound_number: nil, number: nil, scenario: nil, scenario_name: nil, status: nil)
                  #   @param id [Integer]
                  #   @param inbound_number [String, nil]
                  #   @param number [String, nil]
                  #   @param scenario [Integer]
                  #   @param scenario_name [String]
                  #   @param status [String]
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
                # @see Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result#success_rate
                module SuccessRate
                  extend Telnyx::Internal::Type::Union

                  # Share of runs judged successful.
                  variant Float

                  # Share of runs judged successful.
                  variant String

                  # @!method self.variants
                  #   @return [Array(Float, String)]
                end

                # @see Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result#success_runs_count
                module SuccessRunsCount
                  extend Telnyx::Internal::Type::Union

                  variant Integer

                  variant String

                  # @!method self.variants
                  #   @return [Array(Integer, String)]
                end

                # @see Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result#total_expected_outcome_count
                module TotalExpectedOutcomeCount
                  extend Telnyx::Internal::Type::Union

                  variant Integer

                  variant String

                  # @!method self.variants
                  #   @return [Array(Integer, String)]
                end

                # @see Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result#total_runs_count
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
end
