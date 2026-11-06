# typed: strong

module Telnyx
  module Models
    module AgentGateways
      class McpServerListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AgentGateways::McpServerListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::AgentGateways::AgentGatewayMcpServer]) }
        attr_accessor :data

        sig do
          params(
            data: T::Array[Telnyx::AgentGateways::AgentGatewayMcpServer::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: T::Array[Telnyx::AgentGateways::AgentGatewayMcpServer] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
