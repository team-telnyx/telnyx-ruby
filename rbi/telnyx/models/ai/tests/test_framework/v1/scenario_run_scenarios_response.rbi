# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class ScenarioRunScenariosResponse < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRunScenariosResponse,
                    Telnyx::Internal::AnyHash
                  )
                end

              # ID of the created test-run batch whose results can be polled.
              sig { returns(Integer) }
              attr_accessor :id

              # Initial status of the run batch.
              sig { returns(String) }
              attr_accessor :status

              sig do
                params(id: Integer, status: String).returns(T.attached_class)
              end
              def self.new(
                # ID of the created test-run batch whose results can be polled.
                id:,
                # Initial status of the run batch.
                status:
              )
              end

              sig { override.returns({ id: Integer, status: String }) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
