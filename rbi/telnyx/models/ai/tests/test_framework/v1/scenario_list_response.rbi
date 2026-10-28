# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class ScenarioListResponse < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(Integer) }
              attr_accessor :count

              sig { returns(T.nilable(String)) }
              attr_accessor :next_

              sig { returns(T.nilable(String)) }
              attr_accessor :previous

              sig do
                returns(
                  T::Array[
                    Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse::Result
                  ]
                )
              end
              attr_accessor :results

              sig do
                params(
                  count: Integer,
                  next_: T.nilable(String),
                  previous: T.nilable(String),
                  results:
                    T::Array[
                      Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse::Result::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(count:, next_:, previous:, results:)
              end

              sig do
                override.returns(
                  {
                    count: Integer,
                    next_: T.nilable(String),
                    previous: T.nilable(String),
                    results:
                      T::Array[
                        Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse::Result
                      ]
                  }
                )
              end
              def to_hash
              end

              class Result < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse::Result,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig { returns(Integer) }
                attr_accessor :id

                # ID of the test agent the scenario runs against.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :agent

                sig { returns(Time) }
                attr_accessor :created_at

                sig { returns(String) }
                attr_accessor :name

                sig { returns(Time) }
                attr_accessor :updated_at

                sig { returns(T.nilable(T::Hash[Symbol, String])) }
                attr_accessor :dynamic_variable_values

                # What a successful conversation looks like; scored by the expected-outcome
                # metric.
                sig { returns(T.nilable(String)) }
                attr_reader :expected_outcome_prompt

                sig { params(expected_outcome_prompt: String).void }
                attr_writer :expected_outcome_prompt

                # First message the simulated caller speaks or sends.
                sig { returns(T.nilable(String)) }
                attr_reader :first_message

                sig { params(first_message: String).void }
                attr_writer :first_message

                sig { returns(T.nilable(String)) }
                attr_accessor :folder_path

                sig { returns(T.nilable(Integer)) }
                attr_accessor :inbound_phone_number

                sig { returns(T.nilable(String)) }
                attr_accessor :inbound_phone_number_data

                # What the simulated caller should do during the conversation.
                sig { returns(T.nilable(String)) }
                attr_reader :instructions

                sig { params(instructions: String).void }
                attr_writer :instructions

                sig { returns(T.nilable(Integer)) }
                attr_accessor :last_updated_by

                sig { returns(T.nilable(T::Array[String])) }
                attr_reader :metric_names

                sig { params(metric_names: T::Array[String]).void }
                attr_writer :metric_names

                # Metric IDs applied to the scenario.
                sig { returns(T.nilable(T::Array[Integer])) }
                attr_reader :metrics

                sig { params(metrics: T::Array[Integer]).void }
                attr_writer :metrics

                # ID of the test personality the caller simulates.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :personality

                sig { returns(T.nilable(String)) }
                attr_reader :personality_name

                sig { params(personality_name: String).void }
                attr_writer :personality_name

                # Outbound phone number used to place the simulated call.
                sig { returns(T.nilable(String)) }
                attr_reader :phone_number

                sig { params(phone_number: String).void }
                attr_writer :phone_number

                sig { returns(T.nilable(String)) }
                attr_accessor :scenario_language

                # Type of scenario: workflow, red_teaming_voice, or red_teaming_text.
                sig { returns(T.nilable(String)) }
                attr_reader :scenario_type

                sig { params(scenario_type: String).void }
                attr_writer :scenario_type

                sig { returns(T.nilable(T::Array[String])) }
                attr_reader :tags

                sig { params(tags: T::Array[String]).void }
                attr_writer :tags

                sig { returns(T.nilable(Integer)) }
                attr_accessor :test_profile

                sig do
                  returns(
                    T.nilable(
                      Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse::Result::TestProfileData
                    )
                  )
                end
                attr_reader :test_profile_data

                sig do
                  params(
                    test_profile_data:
                      T.nilable(
                        Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse::Result::TestProfileData::OrHash
                      )
                  ).void
                end
                attr_writer :test_profile_data

                sig { returns(T.nilable(T::Array[String])) }
                attr_reader :tool_ids

                sig { params(tool_ids: T::Array[String]).void }
                attr_writer :tool_ids

                sig do
                  params(
                    id: Integer,
                    agent: T.nilable(Integer),
                    created_at: Time,
                    name: String,
                    updated_at: Time,
                    dynamic_variable_values: T.nilable(T::Hash[Symbol, String]),
                    expected_outcome_prompt: String,
                    first_message: String,
                    folder_path: T.nilable(String),
                    inbound_phone_number: T.nilable(Integer),
                    inbound_phone_number_data: T.nilable(String),
                    instructions: String,
                    last_updated_by: T.nilable(Integer),
                    metric_names: T::Array[String],
                    metrics: T::Array[Integer],
                    personality: T.nilable(Integer),
                    personality_name: String,
                    phone_number: String,
                    scenario_language: T.nilable(String),
                    scenario_type: String,
                    tags: T::Array[String],
                    test_profile: T.nilable(Integer),
                    test_profile_data:
                      T.nilable(
                        Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse::Result::TestProfileData::OrHash
                      ),
                    tool_ids: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(
                  id:,
                  # ID of the test agent the scenario runs against.
                  agent:,
                  created_at:,
                  name:,
                  updated_at:,
                  dynamic_variable_values: nil,
                  # What a successful conversation looks like; scored by the expected-outcome
                  # metric.
                  expected_outcome_prompt: nil,
                  # First message the simulated caller speaks or sends.
                  first_message: nil,
                  folder_path: nil,
                  inbound_phone_number: nil,
                  inbound_phone_number_data: nil,
                  # What the simulated caller should do during the conversation.
                  instructions: nil,
                  last_updated_by: nil,
                  metric_names: nil,
                  # Metric IDs applied to the scenario.
                  metrics: nil,
                  # ID of the test personality the caller simulates.
                  personality: nil,
                  personality_name: nil,
                  # Outbound phone number used to place the simulated call.
                  phone_number: nil,
                  scenario_language: nil,
                  # Type of scenario: workflow, red_teaming_voice, or red_teaming_text.
                  scenario_type: nil,
                  tags: nil,
                  test_profile: nil,
                  test_profile_data: nil,
                  tool_ids: nil
                )
                end

                sig do
                  override.returns(
                    {
                      id: Integer,
                      agent: T.nilable(Integer),
                      created_at: Time,
                      name: String,
                      updated_at: Time,
                      dynamic_variable_values:
                        T.nilable(T::Hash[Symbol, String]),
                      expected_outcome_prompt: String,
                      first_message: String,
                      folder_path: T.nilable(String),
                      inbound_phone_number: T.nilable(Integer),
                      inbound_phone_number_data: T.nilable(String),
                      instructions: String,
                      last_updated_by: T.nilable(Integer),
                      metric_names: T::Array[String],
                      metrics: T::Array[Integer],
                      personality: T.nilable(Integer),
                      personality_name: String,
                      phone_number: String,
                      scenario_language: T.nilable(String),
                      scenario_type: String,
                      tags: T::Array[String],
                      test_profile: T.nilable(Integer),
                      test_profile_data:
                        T.nilable(
                          Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse::Result::TestProfileData
                        ),
                      tool_ids: T::Array[String]
                    }
                  )
                end
                def to_hash
                end

                class TestProfileData < Telnyx::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse::Result::TestProfileData,
                        Telnyx::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(Integer)) }
                  attr_reader :id

                  sig { params(id: Integer).void }
                  attr_writer :id

                  sig { returns(T.nilable(Integer)) }
                  attr_accessor :agent

                  sig { returns(T.nilable(T::Hash[Symbol, String])) }
                  attr_accessor :information

                  sig { returns(T.nilable(String)) }
                  attr_reader :name

                  sig { params(name: String).void }
                  attr_writer :name

                  sig { returns(T.nilable(Integer)) }
                  attr_accessor :project

                  sig do
                    params(
                      id: Integer,
                      agent: T.nilable(Integer),
                      information: T.nilable(T::Hash[Symbol, String]),
                      name: String,
                      project: T.nilable(Integer)
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    id: nil,
                    agent: nil,
                    information: nil,
                    name: nil,
                    project: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        id: Integer,
                        agent: T.nilable(Integer),
                        information: T.nilable(T::Hash[Symbol, String]),
                        name: String,
                        project: T.nilable(Integer)
                      }
                    )
                  end
                  def to_hash
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
