# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class TestRunResult < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(Integer) }
              attr_accessor :id

              sig { returns(Integer) }
              attr_accessor :agent

              sig { returns(Time) }
              attr_accessor :created_at

              sig { returns(String) }
              attr_accessor :name

              # Run batch status: running, completed, failed, pending, in_progress, evaluating,
              # in_queue, timeout, cancelled, or scaling_up.
              sig { returns(String) }
              attr_accessor :status

              sig { returns(Time) }
              attr_accessor :updated_at

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :agent_inbound

              sig { params(agent_inbound: T::Boolean).void }
              attr_writer :agent_inbound

              sig { returns(T.nilable(String)) }
              attr_reader :agent_name

              sig { params(agent_name: String).void }
              attr_writer :agent_name

              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::CompletedRunsCount::Variants
                  )
                )
              end
              attr_reader :completed_runs_count

              sig do
                params(
                  completed_runs_count:
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::CompletedRunsCount::Variants
                ).void
              end
              attr_writer :completed_runs_count

              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::FailedRunsCount::Variants
                  )
                )
              end
              attr_reader :failed_runs_count

              sig do
                params(
                  failed_runs_count:
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::FailedRunsCount::Variants
                ).void
              end
              attr_writer :failed_runs_count

              # Whether this batch was started by a scheduled job.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_cronjob

              sig { params(is_cronjob: T::Boolean).void }
              attr_writer :is_cronjob

              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::MetExpectedOutcomeCount::Variants
                  )
                )
              end
              attr_reader :met_expected_outcome_count

              sig do
                params(
                  met_expected_outcome_count:
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::MetExpectedOutcomeCount::Variants
                ).void
              end
              attr_writer :met_expected_outcome_count

              # Whether the batch ran as text chat rather than voice calls.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :run_as_text

              sig { params(run_as_text: T::Boolean).void }
              attr_writer :run_as_text

              sig { returns(T.nilable(String)) }
              attr_accessor :run_type

              # Per-run detail keyed by run ID.
              sig do
                returns(
                  T.nilable(
                    T::Hash[
                      Symbol,
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Run
                    ]
                  )
                )
              end
              attr_accessor :runs

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Scenario
                    ]
                  )
                )
              end
              attr_accessor :scenarios

              # Share of runs judged successful.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::SuccessRate::Variants
                  )
                )
              end
              attr_reader :success_rate

              sig do
                params(
                  success_rate:
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::SuccessRate::Variants
                ).void
              end
              attr_writer :success_rate

              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::SuccessRunsCount::Variants
                  )
                )
              end
              attr_reader :success_runs_count

              sig do
                params(
                  success_runs_count:
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::SuccessRunsCount::Variants
                ).void
              end
              attr_writer :success_runs_count

              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::TotalExpectedOutcomeCount::Variants
                  )
                )
              end
              attr_reader :total_expected_outcome_count

              sig do
                params(
                  total_expected_outcome_count:
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::TotalExpectedOutcomeCount::Variants
                ).void
              end
              attr_writer :total_expected_outcome_count

              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::TotalRunsCount::Variants
                  )
                )
              end
              attr_reader :total_runs_count

              sig do
                params(
                  total_runs_count:
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::TotalRunsCount::Variants
                ).void
              end
              attr_writer :total_runs_count

              sig do
                params(
                  id: Integer,
                  agent: Integer,
                  created_at: Time,
                  name: String,
                  status: String,
                  updated_at: Time,
                  agent_inbound: T::Boolean,
                  agent_name: String,
                  completed_runs_count:
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::CompletedRunsCount::Variants,
                  failed_runs_count:
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::FailedRunsCount::Variants,
                  is_cronjob: T::Boolean,
                  met_expected_outcome_count:
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::MetExpectedOutcomeCount::Variants,
                  run_as_text: T::Boolean,
                  run_type: T.nilable(String),
                  runs:
                    T.nilable(
                      T::Hash[
                        Symbol,
                        Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Run::OrHash
                      ]
                    ),
                  scenarios:
                    T.nilable(
                      T::Array[
                        Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Scenario::OrHash
                      ]
                    ),
                  success_rate:
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::SuccessRate::Variants,
                  success_runs_count:
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::SuccessRunsCount::Variants,
                  total_expected_outcome_count:
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::TotalExpectedOutcomeCount::Variants,
                  total_runs_count:
                    Telnyx::AI::Tests::TestFramework::V1::TestRunResult::TotalRunsCount::Variants
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                agent:,
                created_at:,
                name:,
                # Run batch status: running, completed, failed, pending, in_progress, evaluating,
                # in_queue, timeout, cancelled, or scaling_up.
                status:,
                updated_at:,
                agent_inbound: nil,
                agent_name: nil,
                completed_runs_count: nil,
                failed_runs_count: nil,
                # Whether this batch was started by a scheduled job.
                is_cronjob: nil,
                met_expected_outcome_count: nil,
                # Whether the batch ran as text chat rather than voice calls.
                run_as_text: nil,
                run_type: nil,
                # Per-run detail keyed by run ID.
                runs: nil,
                scenarios: nil,
                # Share of runs judged successful.
                success_rate: nil,
                success_runs_count: nil,
                total_expected_outcome_count: nil,
                total_runs_count: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: Integer,
                    agent: Integer,
                    created_at: Time,
                    name: String,
                    status: String,
                    updated_at: Time,
                    agent_inbound: T::Boolean,
                    agent_name: String,
                    completed_runs_count:
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::CompletedRunsCount::Variants,
                    failed_runs_count:
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::FailedRunsCount::Variants,
                    is_cronjob: T::Boolean,
                    met_expected_outcome_count:
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::MetExpectedOutcomeCount::Variants,
                    run_as_text: T::Boolean,
                    run_type: T.nilable(String),
                    runs:
                      T.nilable(
                        T::Hash[
                          Symbol,
                          Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Run
                        ]
                      ),
                    scenarios:
                      T.nilable(
                        T::Array[
                          Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Scenario
                        ]
                      ),
                    success_rate:
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::SuccessRate::Variants,
                    success_runs_count:
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::SuccessRunsCount::Variants,
                    total_expected_outcome_count:
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::TotalExpectedOutcomeCount::Variants,
                    total_runs_count:
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::TotalRunsCount::Variants
                  }
                )
              end
              def to_hash
              end

              module CompletedRunsCount
                extend Telnyx::Internal::Type::Union

                Variants = T.type_alias { T.any(Integer, String) }

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::CompletedRunsCount::Variants
                    ]
                  )
                end
                def self.variants
                end
              end

              module FailedRunsCount
                extend Telnyx::Internal::Type::Union

                Variants = T.type_alias { T.any(Integer, String) }

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::FailedRunsCount::Variants
                    ]
                  )
                end
                def self.variants
                end
              end

              module MetExpectedOutcomeCount
                extend Telnyx::Internal::Type::Union

                Variants = T.type_alias { T.any(Integer, String) }

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::MetExpectedOutcomeCount::Variants
                    ]
                  )
                end
                def self.variants
                end
              end

              class Run < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Run,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :id

                sig { params(id: Integer).void }
                attr_writer :id

                sig { returns(T.nilable(String)) }
                attr_reader :duration

                sig { params(duration: String).void }
                attr_writer :duration

                sig { returns(T.nilable(String)) }
                attr_reader :error_message

                sig { params(error_message: String).void }
                attr_writer :error_message

                sig { returns(T.nilable(String)) }
                attr_reader :evaluation_status

                sig { params(evaluation_status: String).void }
                attr_writer :evaluation_status

                sig { returns(T.nilable(String)) }
                attr_reader :executed_at

                sig { params(executed_at: String).void }
                attr_writer :executed_at

                sig { returns(T.nilable(String)) }
                attr_reader :personality_name

                sig { params(personality_name: String).void }
                attr_writer :personality_name

                sig do
                  returns(
                    T.nilable(
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Run::Scenario
                    )
                  )
                end
                attr_reader :scenario

                sig do
                  params(
                    scenario:
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Run::Scenario::OrHash
                  ).void
                end
                attr_writer :scenario

                sig { returns(T.nilable(String)) }
                attr_reader :scenario_name

                sig { params(scenario_name: String).void }
                attr_writer :scenario_name

                sig { returns(T.nilable(String)) }
                attr_reader :status

                sig { params(status: String).void }
                attr_writer :status

                sig { returns(T.nilable(T::Boolean)) }
                attr_accessor :success

                sig { returns(T.nilable(String)) }
                attr_reader :test_profile_name

                sig { params(test_profile_name: String).void }
                attr_writer :test_profile_name

                sig { returns(T.nilable(String)) }
                attr_reader :timestamp

                sig { params(timestamp: String).void }
                attr_writer :timestamp

                sig do
                  params(
                    id: Integer,
                    duration: String,
                    error_message: String,
                    evaluation_status: String,
                    executed_at: String,
                    personality_name: String,
                    scenario:
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Run::Scenario::OrHash,
                    scenario_name: String,
                    status: String,
                    success: T.nilable(T::Boolean),
                    test_profile_name: String,
                    timestamp: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  id: nil,
                  duration: nil,
                  error_message: nil,
                  evaluation_status: nil,
                  executed_at: nil,
                  personality_name: nil,
                  scenario: nil,
                  scenario_name: nil,
                  status: nil,
                  success: nil,
                  test_profile_name: nil,
                  timestamp: nil
                )
                end

                sig do
                  override.returns(
                    {
                      id: Integer,
                      duration: String,
                      error_message: String,
                      evaluation_status: String,
                      executed_at: String,
                      personality_name: String,
                      scenario:
                        Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Run::Scenario,
                      scenario_name: String,
                      status: String,
                      success: T.nilable(T::Boolean),
                      test_profile_name: String,
                      timestamp: String
                    }
                  )
                end
                def to_hash
                end

                class Scenario < Telnyx::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Run::Scenario,
                        Telnyx::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(Integer)) }
                  attr_reader :id

                  sig { params(id: Integer).void }
                  attr_writer :id

                  sig { returns(T.nilable(String)) }
                  attr_reader :expected_outcome_prompt

                  sig { params(expected_outcome_prompt: String).void }
                  attr_writer :expected_outcome_prompt

                  sig { returns(T.nilable(String)) }
                  attr_reader :name

                  sig { params(name: String).void }
                  attr_writer :name

                  sig { returns(T.nilable(String)) }
                  attr_reader :personality_name

                  sig { params(personality_name: String).void }
                  attr_writer :personality_name

                  sig do
                    params(
                      id: Integer,
                      expected_outcome_prompt: String,
                      name: String,
                      personality_name: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    id: nil,
                    expected_outcome_prompt: nil,
                    name: nil,
                    personality_name: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        id: Integer,
                        expected_outcome_prompt: String,
                        name: String,
                        personality_name: String
                      }
                    )
                  end
                  def to_hash
                  end
                end
              end

              class Scenario < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Scenario,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :id

                sig { params(id: Integer).void }
                attr_writer :id

                sig { returns(T.nilable(String)) }
                attr_reader :name

                sig { params(name: String).void }
                attr_writer :name

                sig do
                  params(id: Integer, name: String).returns(T.attached_class)
                end
                def self.new(id: nil, name: nil)
                end

                sig { override.returns({ id: Integer, name: String }) }
                def to_hash
                end
              end

              # Share of runs judged successful.
              module SuccessRate
                extend Telnyx::Internal::Type::Union

                Variants = T.type_alias { T.any(Float, String) }

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::SuccessRate::Variants
                    ]
                  )
                end
                def self.variants
                end
              end

              module SuccessRunsCount
                extend Telnyx::Internal::Type::Union

                Variants = T.type_alias { T.any(Integer, String) }

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::SuccessRunsCount::Variants
                    ]
                  )
                end
                def self.variants
                end
              end

              module TotalExpectedOutcomeCount
                extend Telnyx::Internal::Type::Union

                Variants = T.type_alias { T.any(Integer, String) }

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::TotalExpectedOutcomeCount::Variants
                    ]
                  )
                end
                def self.variants
                end
              end

              module TotalRunsCount
                extend Telnyx::Internal::Type::Union

                Variants = T.type_alias { T.any(Integer, String) }

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::TestRunResult::TotalRunsCount::Variants
                    ]
                  )
                end
                def self.variants
                end
              end
            end
          end
        end
      end
    end
  end
end
