# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class ScenarioRetrieveGenerateProgressResponse < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveGenerateProgressResponse,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :completed_scenarios

              sig { params(completed_scenarios: Integer).void }
              attr_writer :completed_scenarios

              sig { returns(T.nilable(Integer)) }
              attr_reader :failed_scenarios

              sig { params(failed_scenarios: Integer).void }
              attr_writer :failed_scenarios

              sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
              attr_reader :scenarios_list

              sig do
                params(
                  scenarios_list: T::Array[T::Hash[Symbol, T.anything]]
                ).void
              end
              attr_writer :scenarios_list

              sig { returns(T.nilable(Integer)) }
              attr_reader :total_scenarios

              sig { params(total_scenarios: Integer).void }
              attr_writer :total_scenarios

              sig do
                params(
                  completed_scenarios: Integer,
                  failed_scenarios: Integer,
                  scenarios_list: T::Array[T::Hash[Symbol, T.anything]],
                  total_scenarios: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                completed_scenarios: nil,
                failed_scenarios: nil,
                scenarios_list: nil,
                total_scenarios: nil
              )
              end

              sig do
                override.returns(
                  {
                    completed_scenarios: Integer,
                    failed_scenarios: Integer,
                    scenarios_list: T::Array[T::Hash[Symbol, T.anything]],
                    total_scenarios: Integer
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
