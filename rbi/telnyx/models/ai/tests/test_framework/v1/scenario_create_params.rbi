# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class ScenarioCreateParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioCreateParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :name

              # ID of the personality the caller simulates.
              sig { returns(Integer) }
              attr_accessor :personality

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

              sig { returns(T.nilable(String)) }
              attr_reader :instructions

              sig { params(instructions: String).void }
              attr_writer :instructions

              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :metrics

              sig { params(metrics: T::Array[Integer]).void }
              attr_writer :metrics

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :tags

              sig { params(tags: T::Array[String]).void }
              attr_writer :tags

              sig { returns(T.nilable(Integer)) }
              attr_reader :test_profile

              sig { params(test_profile: Integer).void }
              attr_writer :test_profile

              sig do
                params(
                  name: String,
                  personality: Integer,
                  agent: T.nilable(Integer),
                  expected_outcome_prompt: String,
                  first_message: String,
                  folder_path: T.nilable(String),
                  instructions: String,
                  metrics: T::Array[Integer],
                  tags: T::Array[String],
                  test_profile: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                name:,
                # ID of the personality the caller simulates.
                personality:,
                agent: nil,
                expected_outcome_prompt: nil,
                first_message: nil,
                folder_path: nil,
                instructions: nil,
                metrics: nil,
                tags: nil,
                test_profile: nil,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    name: String,
                    personality: Integer,
                    agent: T.nilable(Integer),
                    expected_outcome_prompt: String,
                    first_message: String,
                    folder_path: T.nilable(String),
                    instructions: String,
                    metrics: T::Array[Integer],
                    tags: T::Array[String],
                    test_profile: Integer,
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
