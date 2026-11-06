# typed: strong

module Telnyx
  module Models
    AgentGatewayMcpServerResponse = AgentGateways::AgentGatewayMcpServerResponse

    module AgentGateways
      class AgentGatewayMcpServerResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayMcpServerResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::AgentGateways::AgentGatewayMcpServer) }
        attr_reader :data

        sig do
          params(
            data: Telnyx::AgentGateways::AgentGatewayMcpServer::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::AgentGateways::AgentGatewayMcpServer::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: Telnyx::AgentGateways::AgentGatewayMcpServer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
