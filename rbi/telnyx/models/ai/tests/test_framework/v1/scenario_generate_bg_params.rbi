# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class ScenarioGenerateBgParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerateBgParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              # How many scenarios to generate.
              sig { returns(Integer) }
              attr_accessor :num_scenarios

              sig { returns(T.nilable(Integer)) }
              attr_reader :agent_id

              sig { params(agent_id: Integer).void }
              attr_writer :agent_id

              # Optional guidance steering scenario generation.
              sig { returns(T.nilable(String)) }
              attr_reader :extra_instructions

              sig { params(extra_instructions: String).void }
              attr_writer :extra_instructions

              sig { returns(T.nilable(String)) }
              attr_reader :first_message

              sig { params(first_message: String).void }
              attr_writer :first_message

              sig { returns(T.nilable(String)) }
              attr_accessor :folder_path

              # Whether to generate expected-outcome prompts for the scenarios.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :generate_expected_outcomes

              sig { params(generate_expected_outcomes: T::Boolean).void }
              attr_writer :generate_expected_outcomes

              sig { returns(T.nilable(Integer)) }
              attr_accessor :inbound_phone_number

              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :personalities

              sig { params(personalities: T::Array[Integer]).void }
              attr_writer :personalities

              # Type of scenario to generate.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerateBgParams::ScenarioType::OrSymbol
                  )
                )
              end
              attr_reader :scenario_type

              sig do
                params(
                  scenario_type:
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerateBgParams::ScenarioType::OrSymbol
                ).void
              end
              attr_writer :scenario_type

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :tags

              sig { params(tags: T::Array[String]).void }
              attr_writer :tags

              sig { returns(T.nilable(Integer)) }
              attr_reader :test_profile

              sig { params(test_profile: Integer).void }
              attr_writer :test_profile

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :tool_ids

              sig { params(tool_ids: T::Array[String]).void }
              attr_writer :tool_ids

              sig do
                params(
                  num_scenarios: Integer,
                  agent_id: Integer,
                  extra_instructions: String,
                  first_message: String,
                  folder_path: T.nilable(String),
                  generate_expected_outcomes: T::Boolean,
                  inbound_phone_number: T.nilable(Integer),
                  personalities: T::Array[Integer],
                  scenario_type:
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerateBgParams::ScenarioType::OrSymbol,
                  tags: T::Array[String],
                  test_profile: Integer,
                  tool_ids: T::Array[String],
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # How many scenarios to generate.
                num_scenarios:,
                agent_id: nil,
                # Optional guidance steering scenario generation.
                extra_instructions: nil,
                first_message: nil,
                folder_path: nil,
                # Whether to generate expected-outcome prompts for the scenarios.
                generate_expected_outcomes: nil,
                inbound_phone_number: nil,
                personalities: nil,
                # Type of scenario to generate.
                scenario_type: nil,
                tags: nil,
                test_profile: nil,
                tool_ids: nil,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    num_scenarios: Integer,
                    agent_id: Integer,
                    extra_instructions: String,
                    first_message: String,
                    folder_path: T.nilable(String),
                    generate_expected_outcomes: T::Boolean,
                    inbound_phone_number: T.nilable(Integer),
                    personalities: T::Array[Integer],
                    scenario_type:
                      Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerateBgParams::ScenarioType::OrSymbol,
                    tags: T::Array[String],
                    test_profile: Integer,
                    tool_ids: T::Array[String],
                    request_options: Telnyx::RequestOptions
                  }
                )
              end
              def to_hash
              end

              # Type of scenario to generate.
              module ScenarioType
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerateBgParams::ScenarioType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                WORKFLOW =
                  T.let(
                    :workflow,
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerateBgParams::ScenarioType::TaggedSymbol
                  )
                RED_TEAMING_VOICE =
                  T.let(
                    :red_teaming_voice,
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerateBgParams::ScenarioType::TaggedSymbol
                  )
                RED_TEAMING_TEXT =
                  T.let(
                    :red_teaming_text,
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerateBgParams::ScenarioType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerateBgParams::ScenarioType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end
      end
    end
  end
end
