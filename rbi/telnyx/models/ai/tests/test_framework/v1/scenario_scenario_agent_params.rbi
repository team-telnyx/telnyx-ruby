# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class ScenarioScenarioAgentParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Scenario IDs to improve, or the literal string 'all'.
              sig do
                returns(
                  Telnyx::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams::Scenarios::Variants
                )
              end
              attr_accessor :scenarios

              # What the assistant should improve about the selected scenarios.
              sig { returns(String) }
              attr_accessor :user_message

              sig { returns(T.nilable(Integer)) }
              attr_accessor :agent_id

              sig { returns(T.nilable(String)) }
              attr_reader :agent_resolution_response

              sig { params(agent_resolution_response: String).void }
              attr_writer :agent_resolution_response

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :apply_changes

              sig { params(apply_changes: T::Boolean).void }
              attr_writer :apply_changes

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams::Context
                    ]
                  )
                )
              end
              attr_accessor :context

              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :knowledge_base

              sig { params(knowledge_base: T::Array[Integer]).void }
              attr_writer :knowledge_base

              sig { returns(T.nilable(Integer)) }
              attr_reader :num_scenarios

              sig { params(num_scenarios: Integer).void }
              attr_writer :num_scenarios

              sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
              attr_accessor :pending_tool_calls

              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :scenarios_needing_agent

              sig { params(scenarios_needing_agent: T::Array[Integer]).void }
              attr_writer :scenarios_needing_agent

              sig { returns(T.nilable(Integer)) }
              attr_accessor :session_id

              sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
              attr_reader :updated_scenarios

              sig do
                params(
                  updated_scenarios: T::Array[T::Hash[Symbol, T.anything]]
                ).void
              end
              attr_writer :updated_scenarios

              sig do
                params(
                  scenarios:
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams::Scenarios::Variants,
                  user_message: String,
                  agent_id: T.nilable(Integer),
                  agent_resolution_response: String,
                  apply_changes: T::Boolean,
                  context:
                    T.nilable(
                      T::Array[
                        Telnyx::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams::Context::OrHash
                      ]
                    ),
                  knowledge_base: T::Array[Integer],
                  num_scenarios: Integer,
                  pending_tool_calls:
                    T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
                  scenarios_needing_agent: T::Array[Integer],
                  session_id: T.nilable(Integer),
                  updated_scenarios: T::Array[T::Hash[Symbol, T.anything]],
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Scenario IDs to improve, or the literal string 'all'.
                scenarios:,
                # What the assistant should improve about the selected scenarios.
                user_message:,
                agent_id: nil,
                agent_resolution_response: nil,
                apply_changes: nil,
                context: nil,
                knowledge_base: nil,
                num_scenarios: nil,
                pending_tool_calls: nil,
                scenarios_needing_agent: nil,
                session_id: nil,
                updated_scenarios: nil,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    scenarios:
                      Telnyx::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams::Scenarios::Variants,
                    user_message: String,
                    agent_id: T.nilable(Integer),
                    agent_resolution_response: String,
                    apply_changes: T::Boolean,
                    context:
                      T.nilable(
                        T::Array[
                          Telnyx::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams::Context
                        ]
                      ),
                    knowledge_base: T::Array[Integer],
                    num_scenarios: Integer,
                    pending_tool_calls:
                      T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
                    scenarios_needing_agent: T::Array[Integer],
                    session_id: T.nilable(Integer),
                    updated_scenarios: T::Array[T::Hash[Symbol, T.anything]],
                    request_options: Telnyx::RequestOptions
                  }
                )
              end
              def to_hash
              end

              # Scenario IDs to improve, or the literal string 'all'.
              module Scenarios
                extend Telnyx::Internal::Type::Union

                Variants = T.type_alias { T.any(T::Array[T.anything], String) }

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams::Scenarios::Variants
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

              class Context < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams::Context,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(String)) }
                attr_reader :content

                sig { params(content: String).void }
                attr_writer :content

                sig { returns(T.nilable(String)) }
                attr_reader :role

                sig { params(role: String).void }
                attr_writer :role

                sig { returns(T.nilable(String)) }
                attr_reader :timestamp

                sig { params(timestamp: String).void }
                attr_writer :timestamp

                sig do
                  params(
                    content: String,
                    role: String,
                    timestamp: String
                  ).returns(T.attached_class)
                end
                def self.new(content: nil, role: nil, timestamp: nil)
                end

                sig do
                  override.returns(
                    { content: String, role: String, timestamp: String }
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
