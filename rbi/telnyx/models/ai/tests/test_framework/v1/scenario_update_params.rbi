# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class ScenarioUpdateParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioUpdateParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(Integer) }
              attr_accessor :id

              sig { returns(T.nilable(Integer)) }
              attr_accessor :agent

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
              attr_reader :inbound_phone_number

              sig { params(inbound_phone_number: Integer).void }
              attr_writer :inbound_phone_number

              sig { returns(T.nilable(String)) }
              attr_reader :instructions

              sig { params(instructions: String).void }
              attr_writer :instructions

              sig { returns(T.nilable(Integer)) }
              attr_accessor :max_duration

              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :metrics

              sig { params(metrics: T::Array[Integer]).void }
              attr_writer :metrics

              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              sig { returns(T.nilable(Integer)) }
              attr_reader :personality

              sig { params(personality: Integer).void }
              attr_writer :personality

              sig { returns(T.nilable(Integer)) }
              attr_reader :phone_number

              sig { params(phone_number: Integer).void }
              attr_writer :phone_number

              sig { returns(T.nilable(String)) }
              attr_reader :scenario_language

              sig { params(scenario_language: String).void }
              attr_writer :scenario_language

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
                  id: Integer,
                  agent: T.nilable(Integer),
                  expected_outcome_prompt: String,
                  first_message: String,
                  folder_path: T.nilable(String),
                  inbound_phone_number: Integer,
                  instructions: String,
                  max_duration: T.nilable(Integer),
                  metrics: T::Array[Integer],
                  name: String,
                  personality: Integer,
                  phone_number: Integer,
                  scenario_language: String,
                  tags: T::Array[String],
                  test_profile: Integer,
                  tool_ids: T::Array[String],
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                agent: nil,
                expected_outcome_prompt: nil,
                first_message: nil,
                folder_path: nil,
                inbound_phone_number: nil,
                instructions: nil,
                max_duration: nil,
                metrics: nil,
                name: nil,
                personality: nil,
                phone_number: nil,
                scenario_language: nil,
                tags: nil,
                test_profile: nil,
                tool_ids: nil,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    id: Integer,
                    agent: T.nilable(Integer),
                    expected_outcome_prompt: String,
                    first_message: String,
                    folder_path: T.nilable(String),
                    inbound_phone_number: Integer,
                    instructions: String,
                    max_duration: T.nilable(Integer),
                    metrics: T::Array[Integer],
                    name: String,
                    personality: Integer,
                    phone_number: Integer,
                    scenario_language: String,
                    tags: T::Array[String],
                    test_profile: Integer,
                    tool_ids: T::Array[String],
                    request_options: Telnyx::RequestOptions
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
