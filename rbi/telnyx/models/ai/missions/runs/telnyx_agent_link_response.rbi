# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          class TelnyxAgentLinkResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Missions::Runs::TelnyxAgentLinkResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                Telnyx::Models::AI::Missions::Runs::TelnyxAgentLinkResponse::Data
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Telnyx::Models::AI::Missions::Runs::TelnyxAgentLinkResponse::Data::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  Telnyx::Models::AI::Missions::Runs::TelnyxAgentLinkResponse::Data::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data:)
            end

            sig do
              override.returns(
                {
                  data:
                    Telnyx::Models::AI::Missions::Runs::TelnyxAgentLinkResponse::Data
                }
              )
            end
            def to_hash
            end

            class Data < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Missions::Runs::TelnyxAgentLinkResponse::Data,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(Time) }
              attr_accessor :created_at

              sig { returns(String) }
              attr_accessor :run_id

              sig { returns(String) }
              attr_accessor :telnyx_agent_id

              sig do
                params(
                  created_at: Time,
                  run_id: String,
                  telnyx_agent_id: String
                ).returns(T.attached_class)
              end
              def self.new(created_at:, run_id:, telnyx_agent_id:)
              end

              sig do
                override.returns(
                  { created_at: Time, run_id: String, telnyx_agent_id: String }
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
