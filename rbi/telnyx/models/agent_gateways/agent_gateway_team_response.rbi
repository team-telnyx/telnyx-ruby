# typed: strong

module Telnyx
  module Models
    AgentGatewayTeamResponse = AgentGateways::AgentGatewayTeamResponse

    module AgentGateways
      class AgentGatewayTeamResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayTeamResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # A team on an instance: a model list, a budget, and rate limits that its keys
        # share.
        sig { returns(Telnyx::AgentGateways::AgentGatewayTeam) }
        attr_reader :data

        sig do
          params(data: Telnyx::AgentGateways::AgentGatewayTeam::OrHash).void
        end
        attr_writer :data

        sig do
          params(data: Telnyx::AgentGateways::AgentGatewayTeam::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # A team on an instance: a model list, a budget, and rate limits that its keys
          # share.
          data:
        )
        end

        sig do
          override.returns({ data: Telnyx::AgentGateways::AgentGatewayTeam })
        end
        def to_hash
        end
      end
    end
  end
end
