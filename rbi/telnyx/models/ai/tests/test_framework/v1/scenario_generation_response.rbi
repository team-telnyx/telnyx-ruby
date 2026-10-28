# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class ScenarioGenerationResponse < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerationResponse,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Identifier to poll generation progress with.
              sig { returns(String) }
              attr_accessor :progress_id

              sig { params(progress_id: String).returns(T.attached_class) }
              def self.new(
                # Identifier to poll generation progress with.
                progress_id:
              )
              end

              sig { override.returns({ progress_id: String }) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
