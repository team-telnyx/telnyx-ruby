# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class ScenarioRunScenariosParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :agent_id

              sig { params(agent_id: Integer).void }
              attr_writer :agent_id

              sig { returns(T.nilable(String)) }
              attr_reader :agent_number

              sig { params(agent_number: String).void }
              attr_writer :agent_number

              sig { returns(T.nilable(String)) }
              attr_reader :assistant_id

              sig { params(assistant_id: String).void }
              attr_writer :assistant_id

              # Maximum number of concurrent simulated calls.
              sig { returns(T.nilable(Integer)) }
              attr_reader :concurrency_limit

              sig { params(concurrency_limit: Integer).void }
              attr_writer :concurrency_limit

              sig { returns(T.nilable(Integer)) }
              attr_reader :frequency

              sig { params(frequency: Integer).void }
              attr_writer :frequency

              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Mode::OrSymbol
                  )
                )
              end
              attr_reader :mode

              sig do
                params(
                  mode:
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Mode::OrSymbol
                ).void
              end
              attr_writer :mode

              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              sig { returns(T.nilable(String)) }
              attr_reader :outbound_phone_number

              sig { params(outbound_phone_number: String).void }
              attr_writer :outbound_phone_number

              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :personality_ids

              sig { params(personality_ids: T::Array[Integer]).void }
              attr_writer :personality_ids

              # Scenario IDs to run, or the literal string 'all'.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Scenarios::Variants
                  )
                )
              end
              attr_reader :scenarios

              sig do
                params(
                  scenarios:
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Scenarios::Variants
                ).void
              end
              attr_writer :scenarios

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :tags

              sig { params(tags: T::Array[String]).void }
              attr_writer :tags

              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :test_profile_ids

              sig { params(test_profile_ids: T::Array[Integer]).void }
              attr_writer :test_profile_ids

              sig do
                params(
                  agent_id: Integer,
                  agent_number: String,
                  assistant_id: String,
                  concurrency_limit: Integer,
                  frequency: Integer,
                  mode:
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Mode::OrSymbol,
                  name: String,
                  outbound_phone_number: String,
                  personality_ids: T::Array[Integer],
                  scenarios:
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Scenarios::Variants,
                  tags: T::Array[String],
                  test_profile_ids: T::Array[Integer],
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                agent_id: nil,
                agent_number: nil,
                assistant_id: nil,
                # Maximum number of concurrent simulated calls.
                concurrency_limit: nil,
                frequency: nil,
                mode: nil,
                name: nil,
                outbound_phone_number: nil,
                personality_ids: nil,
                # Scenario IDs to run, or the literal string 'all'.
                scenarios: nil,
                tags: nil,
                test_profile_ids: nil,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    agent_id: Integer,
                    agent_number: String,
                    assistant_id: String,
                    concurrency_limit: Integer,
                    frequency: Integer,
                    mode:
                      Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Mode::OrSymbol,
                    name: String,
                    outbound_phone_number: String,
                    personality_ids: T::Array[Integer],
                    scenarios:
                      Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Scenarios::Variants,
                    tags: T::Array[String],
                    test_profile_ids: T::Array[Integer],
                    request_options: Telnyx::RequestOptions
                  }
                )
              end
              def to_hash
              end

              module Mode
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Mode
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SAME_NUMBER =
                  T.let(
                    :same_number,
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Mode::TaggedSymbol
                  )
                DIFFERENT_NUMBERS =
                  T.let(
                    :different_numbers,
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Mode::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Mode::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Scenario IDs to run, or the literal string 'all'.
              module Scenarios
                extend Telnyx::Internal::Type::Union

                Variants = T.type_alias { T.any(T::Array[T.anything], String) }

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Scenarios::Variants
                    ]
                  )
                end
                def self.variants
                end

                UnionMember0Array =
                  T.let(
                    Telnyx::Internal::Type::ArrayOf[
                      Telnyx::Internal::Type::Unknown
                    ],
                    Telnyx::Internal::Type::Converter
                  )
              end
            end
          end
        end
      end
    end
  end
end
