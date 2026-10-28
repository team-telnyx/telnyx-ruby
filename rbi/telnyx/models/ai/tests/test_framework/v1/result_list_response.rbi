# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class ResultListResponse < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_accessor :next_

              sig { returns(T.nilable(String)) }
              attr_accessor :previous

              sig do
                returns(
                  T::Array[
                    Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result
                  ]
                )
              end
              attr_accessor :results

              sig { returns(T.nilable(Integer)) }
              attr_reader :count

              sig { params(count: Integer).void }
              attr_writer :count

              sig do
                params(
                  next_: T.nilable(String),
                  previous: T.nilable(String),
                  results:
                    T::Array[
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::OrHash
                    ],
                  count: Integer
                ).returns(T.attached_class)
              end
              def self.new(next_:, previous:, results:, count: nil)
              end

              sig do
                override.returns(
                  {
                    next_: T.nilable(String),
                    previous: T.nilable(String),
                    results:
                      T::Array[
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result
                      ],
                    count: Integer
                  }
                )
              end
              def to_hash
              end

              class Result < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result,
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
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::CompletedRunsCount::Variants
                    )
                  )
                end
                attr_reader :completed_runs_count

                sig do
                  params(
                    completed_runs_count:
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::CompletedRunsCount::Variants
                  ).void
                end
                attr_writer :completed_runs_count

                sig do
                  returns(
                    T.nilable(
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::FailedRunsCount::Variants
                    )
                  )
                end
                attr_reader :failed_runs_count

                sig do
                  params(
                    failed_runs_count:
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::FailedRunsCount::Variants
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
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::MetExpectedOutcomeCount::Variants
                    )
                  )
                end
                attr_reader :met_expected_outcome_count

                sig do
                  params(
                    met_expected_outcome_count:
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::MetExpectedOutcomeCount::Variants
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

                # Run summaries in this batch. Retrieve the batch for detail keyed by run ID.
                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::Run
                      ]
                    )
                  )
                end
                attr_accessor :runs

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::Scenario
                      ]
                    )
                  )
                end
                attr_accessor :scenarios

                # Share of runs judged successful.
                sig do
                  returns(
                    T.nilable(
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::SuccessRate::Variants
                    )
                  )
                end
                attr_reader :success_rate

                sig do
                  params(
                    success_rate:
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::SuccessRate::Variants
                  ).void
                end
                attr_writer :success_rate

                sig do
                  returns(
                    T.nilable(
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::SuccessRunsCount::Variants
                    )
                  )
                end
                attr_reader :success_runs_count

                sig do
                  params(
                    success_runs_count:
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::SuccessRunsCount::Variants
                  ).void
                end
                attr_writer :success_runs_count

                sig do
                  returns(
                    T.nilable(
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::TotalExpectedOutcomeCount::Variants
                    )
                  )
                end
                attr_reader :total_expected_outcome_count

                sig do
                  params(
                    total_expected_outcome_count:
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::TotalExpectedOutcomeCount::Variants
                  ).void
                end
                attr_writer :total_expected_outcome_count

                sig do
                  returns(
                    T.nilable(
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::TotalRunsCount::Variants
                    )
                  )
                end
                attr_reader :total_runs_count

                sig do
                  params(
                    total_runs_count:
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::TotalRunsCount::Variants
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
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::CompletedRunsCount::Variants,
                    failed_runs_count:
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::FailedRunsCount::Variants,
                    is_cronjob: T::Boolean,
                    met_expected_outcome_count:
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::MetExpectedOutcomeCount::Variants,
                    run_as_text: T::Boolean,
                    run_type: T.nilable(String),
                    runs:
                      T.nilable(
                        T::Array[
                          Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::Run::OrHash
                        ]
                      ),
                    scenarios:
                      T.nilable(
                        T::Array[
                          Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::Scenario::OrHash
                        ]
                      ),
                    success_rate:
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::SuccessRate::Variants,
                    success_runs_count:
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::SuccessRunsCount::Variants,
                    total_expected_outcome_count:
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::TotalExpectedOutcomeCount::Variants,
                    total_runs_count:
                      Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::TotalRunsCount::Variants
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
                  # Run summaries in this batch. Retrieve the batch for detail keyed by run ID.
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
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::CompletedRunsCount::Variants,
                      failed_runs_count:
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::FailedRunsCount::Variants,
                      is_cronjob: T::Boolean,
                      met_expected_outcome_count:
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::MetExpectedOutcomeCount::Variants,
                      run_as_text: T::Boolean,
                      run_type: T.nilable(String),
                      runs:
                        T.nilable(
                          T::Array[
                            Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::Run
                          ]
                        ),
                      scenarios:
                        T.nilable(
                          T::Array[
                            Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::Scenario
                          ]
                        ),
                      success_rate:
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::SuccessRate::Variants,
                      success_runs_count:
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::SuccessRunsCount::Variants,
                      total_expected_outcome_count:
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::TotalExpectedOutcomeCount::Variants,
                      total_runs_count:
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::TotalRunsCount::Variants
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
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::CompletedRunsCount::Variants
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
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::FailedRunsCount::Variants
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
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::MetExpectedOutcomeCount::Variants
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
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::Run,
                        Telnyx::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(Integer)) }
                  attr_reader :id

                  sig { params(id: Integer).void }
                  attr_writer :id

                  sig { returns(T.nilable(String)) }
                  attr_accessor :inbound_number

                  sig { returns(T.nilable(String)) }
                  attr_accessor :number

                  sig { returns(T.nilable(Integer)) }
                  attr_reader :scenario

                  sig { params(scenario: Integer).void }
                  attr_writer :scenario

                  sig { returns(T.nilable(String)) }
                  attr_reader :scenario_name

                  sig { params(scenario_name: String).void }
                  attr_writer :scenario_name

                  sig { returns(T.nilable(String)) }
                  attr_reader :status

                  sig { params(status: String).void }
                  attr_writer :status

                  sig do
                    params(
                      id: Integer,
                      inbound_number: T.nilable(String),
                      number: T.nilable(String),
                      scenario: Integer,
                      scenario_name: String,
                      status: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    id: nil,
                    inbound_number: nil,
                    number: nil,
                    scenario: nil,
                    scenario_name: nil,
                    status: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        id: Integer,
                        inbound_number: T.nilable(String),
                        number: T.nilable(String),
                        scenario: Integer,
                        scenario_name: String,
                        status: String
                      }
                    )
                  end
                  def to_hash
                  end
                end

                class Scenario < Telnyx::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::Scenario,
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
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::SuccessRate::Variants
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
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::SuccessRunsCount::Variants
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
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::TotalExpectedOutcomeCount::Variants
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
                        Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result::TotalRunsCount::Variants
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
end
