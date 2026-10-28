# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module Schedules
          module V1
            class CronJobRetrieveCronJobsParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::Schedules::V1::CronJobRetrieveCronJobsParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Filter jobs belonging to the specified test agent.
              sig { returns(T.nilable(Integer)) }
              attr_reader :agent_id

              sig { params(agent_id: Integer).void }
              attr_writer :agent_id

              sig do
                params(
                  agent_id: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Filter jobs belonging to the specified test agent.
                agent_id: nil,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  { agent_id: Integer, request_options: Telnyx::RequestOptions }
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
