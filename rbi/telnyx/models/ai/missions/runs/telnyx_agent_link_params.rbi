# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          class TelnyxAgentLinkParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Missions::Runs::TelnyxAgentLinkParams,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :mission_id

            # The Telnyx AI agent ID to link
            sig { returns(String) }
            attr_accessor :telnyx_agent_id

            sig do
              params(
                mission_id: String,
                telnyx_agent_id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              mission_id:,
              # The Telnyx AI agent ID to link
              telnyx_agent_id:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  mission_id: String,
                  telnyx_agent_id: String,
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
