# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class ScenarioScenarioAgentResponse < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioScenarioAgentResponse,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :progress_id

              sig { returns(T.nilable(Integer)) }
              attr_accessor :session_id

              sig do
                params(
                  progress_id: String,
                  session_id: T.nilable(Integer)
                ).returns(T.attached_class)
              end
              def self.new(progress_id:, session_id: nil)
              end

              sig do
                override.returns(
                  { progress_id: String, session_id: T.nilable(Integer) }
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
