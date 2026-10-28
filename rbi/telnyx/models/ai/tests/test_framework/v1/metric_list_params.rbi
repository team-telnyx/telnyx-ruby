# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class MetricListParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::MetricListParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Filter metrics attached to the specified test agent.
              sig { returns(T.nilable(Integer)) }
              attr_reader :agent_id

              sig { params(agent_id: Integer).void }
              attr_writer :agent_id

              # Filter metrics attached to the specified Telnyx assistant.
              sig { returns(T.nilable(String)) }
              attr_reader :assistant_id

              sig { params(assistant_id: String).void }
              attr_writer :assistant_id

              sig do
                params(
                  agent_id: Integer,
                  assistant_id: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Filter metrics attached to the specified test agent.
                agent_id: nil,
                # Filter metrics attached to the specified Telnyx assistant.
                assistant_id: nil,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    agent_id: Integer,
                    assistant_id: String,
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
