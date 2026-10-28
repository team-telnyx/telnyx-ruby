# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class ScenarioDeleteParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioDeleteParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(Integer) }
              attr_accessor :id

              sig do
                params(
                  id: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(id:, request_options: {})
              end

              sig do
                override.returns(
                  { id: Integer, request_options: Telnyx::RequestOptions }
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
