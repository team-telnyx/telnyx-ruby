# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class EvaluatorScenarioDetail < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(Integer) }
              attr_accessor :id

              sig { returns(T.nilable(Integer)) }
              attr_accessor :agent

              sig { returns(String) }
              attr_accessor :name

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_accessor :dynamic_variable_values

              sig { returns(T.nilable(String)) }
              attr_reader :expected_outcome_prompt

              sig { params(expected_outcome_prompt: String).void }
              attr_writer :expected_outcome_prompt

              sig { returns(T.nilable(String)) }
              attr_reader :first_message

              sig { params(first_message: String).void }
              attr_writer :first_message

              sig { returns(T.nilable(String)) }
              attr_accessor :folder_path

              sig { returns(T.nilable(Integer)) }
              attr_accessor :inbound_phone_number

              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::InboundPhoneNumberData
                  )
                )
              end
              attr_reader :inbound_phone_number_data

              sig do
                params(
                  inbound_phone_number_data:
                    T.nilable(
                      Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::InboundPhoneNumberData::OrHash
                    )
                ).void
              end
              attr_writer :inbound_phone_number_data

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_accessor :information_fields

              sig { returns(T.nilable(String)) }
              attr_reader :instructions

              sig { params(instructions: String).void }
              attr_writer :instructions

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_predefined

              sig { params(is_predefined: T::Boolean).void }
              attr_writer :is_predefined

              sig { returns(T.nilable(Integer)) }
              attr_accessor :max_duration

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :metric_names

              sig { params(metric_names: T::Array[String]).void }
              attr_writer :metric_names

              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :metrics

              sig { params(metrics: T::Array[Integer]).void }
              attr_writer :metrics

              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::OutboundPhoneNumberData
                  )
                )
              end
              attr_reader :outbound_phone_number_data

              sig do
                params(
                  outbound_phone_number_data:
                    T.nilable(
                      Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::OutboundPhoneNumberData::OrHash
                    )
                ).void
              end
              attr_writer :outbound_phone_number_data

              sig { returns(T.nilable(Integer)) }
              attr_accessor :personality

              sig { returns(T.nilable(String)) }
              attr_reader :personality_name

              sig { params(personality_name: String).void }
              attr_writer :personality_name

              sig { returns(T.nilable(String)) }
              attr_reader :phone_number

              sig { params(phone_number: String).void }
              attr_writer :phone_number

              sig { returns(T.nilable(Integer)) }
              attr_accessor :project

              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :runs

              sig { params(runs: T::Array[Integer]).void }
              attr_writer :runs

              sig { returns(T.nilable(String)) }
              attr_accessor :scenario_language

              sig { returns(T.nilable(String)) }
              attr_reader :scenario_type

              sig { params(scenario_type: String).void }
              attr_writer :scenario_type

              sig { returns(T.nilable(String)) }
              attr_reader :simulation_description

              sig { params(simulation_description: String).void }
              attr_writer :simulation_description

              sig { returns(T.nilable(String)) }
              attr_reader :suite_type

              sig { params(suite_type: String).void }
              attr_writer :suite_type

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :tags

              sig { params(tags: T::Array[String]).void }
              attr_writer :tags

              sig { returns(T.nilable(Integer)) }
              attr_accessor :test_profile

              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::TestProfileData
                  )
                )
              end
              attr_reader :test_profile_data

              sig do
                params(
                  test_profile_data:
                    T.nilable(
                      Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::TestProfileData::OrHash
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
                  name: String,
                  dynamic_variable_values: T.nilable(T::Hash[Symbol, String]),
                  expected_outcome_prompt: String,
                  first_message: String,
                  folder_path: T.nilable(String),
                  inbound_phone_number: T.nilable(Integer),
                  inbound_phone_number_data:
                    T.nilable(
                      Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::InboundPhoneNumberData::OrHash
                    ),
                  information_fields: T.nilable(T::Hash[Symbol, String]),
                  instructions: String,
                  is_predefined: T::Boolean,
                  max_duration: T.nilable(Integer),
                  metric_names: T::Array[String],
                  metrics: T::Array[Integer],
                  outbound_phone_number_data:
                    T.nilable(
                      Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::OutboundPhoneNumberData::OrHash
                    ),
                  personality: T.nilable(Integer),
                  personality_name: String,
                  phone_number: String,
                  project: T.nilable(Integer),
                  runs: T::Array[Integer],
                  scenario_language: T.nilable(String),
                  scenario_type: String,
                  simulation_description: String,
                  suite_type: String,
                  tags: T::Array[String],
                  test_profile: T.nilable(Integer),
                  test_profile_data:
                    T.nilable(
                      Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::TestProfileData::OrHash
                    ),
                  tool_ids: T::Array[String]
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                agent:,
                name:,
                dynamic_variable_values: nil,
                expected_outcome_prompt: nil,
                first_message: nil,
                folder_path: nil,
                inbound_phone_number: nil,
                inbound_phone_number_data: nil,
                information_fields: nil,
                instructions: nil,
                is_predefined: nil,
                max_duration: nil,
                metric_names: nil,
                metrics: nil,
                outbound_phone_number_data: nil,
                personality: nil,
                personality_name: nil,
                phone_number: nil,
                project: nil,
                runs: nil,
                scenario_language: nil,
                scenario_type: nil,
                simulation_description: nil,
                suite_type: nil,
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
                    name: String,
                    dynamic_variable_values: T.nilable(T::Hash[Symbol, String]),
                    expected_outcome_prompt: String,
                    first_message: String,
                    folder_path: T.nilable(String),
                    inbound_phone_number: T.nilable(Integer),
                    inbound_phone_number_data:
                      T.nilable(
                        Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::InboundPhoneNumberData
                      ),
                    information_fields: T.nilable(T::Hash[Symbol, String]),
                    instructions: String,
                    is_predefined: T::Boolean,
                    max_duration: T.nilable(Integer),
                    metric_names: T::Array[String],
                    metrics: T::Array[Integer],
                    outbound_phone_number_data:
                      T.nilable(
                        Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::OutboundPhoneNumberData
                      ),
                    personality: T.nilable(Integer),
                    personality_name: String,
                    phone_number: String,
                    project: T.nilable(Integer),
                    runs: T::Array[Integer],
                    scenario_language: T.nilable(String),
                    scenario_type: String,
                    simulation_description: String,
                    suite_type: String,
                    tags: T::Array[String],
                    test_profile: T.nilable(Integer),
                    test_profile_data:
                      T.nilable(
                        Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::TestProfileData
                      ),
                    tool_ids: T::Array[String]
                  }
                )
              end
              def to_hash
              end

              class InboundPhoneNumberData < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::InboundPhoneNumberData,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :id

                sig { params(id: Integer).void }
                attr_writer :id

                sig { returns(T.nilable(String)) }
                attr_reader :number

                sig { params(number: String).void }
                attr_writer :number

                sig { returns(T.nilable(String)) }
                attr_reader :phone_number_id

                sig { params(phone_number_id: String).void }
                attr_writer :phone_number_id

                sig do
                  params(
                    id: Integer,
                    number: String,
                    phone_number_id: String
                  ).returns(T.attached_class)
                end
                def self.new(id: nil, number: nil, phone_number_id: nil)
                end

                sig do
                  override.returns(
                    { id: Integer, number: String, phone_number_id: String }
                  )
                end
                def to_hash
                end
              end

              class OutboundPhoneNumberData < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::OutboundPhoneNumberData,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :id

                sig { params(id: Integer).void }
                attr_writer :id

                sig { returns(T.nilable(String)) }
                attr_reader :number

                sig { params(number: String).void }
                attr_writer :number

                sig { returns(T.nilable(String)) }
                attr_reader :phone_number_id

                sig { params(phone_number_id: String).void }
                attr_writer :phone_number_id

                sig do
                  params(
                    id: Integer,
                    number: String,
                    phone_number_id: String
                  ).returns(T.attached_class)
                end
                def self.new(id: nil, number: nil, phone_number_id: nil)
                end

                sig do
                  override.returns(
                    { id: Integer, number: String, phone_number_id: String }
                  )
                end
                def to_hash
                end
              end

              class TestProfileData < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::TestProfileData,
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
