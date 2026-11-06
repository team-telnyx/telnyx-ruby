# typed: strong

module Telnyx
  module Models
    AgentGatewayAPIResponse = AgentGateways::AgentGatewayAPIResponse

    module AgentGateways
      class AgentGatewayAPIResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayAPIResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::AgentGateways::AgentGatewayAPI) }
        attr_reader :data

        sig do
          params(data: Telnyx::AgentGateways::AgentGatewayAPI::OrHash).void
        end
        attr_writer :data

        sig do
          params(data: Telnyx::AgentGateways::AgentGatewayAPI::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig do
          override.returns({ data: Telnyx::AgentGateways::AgentGatewayAPI })
        end
        def to_hash
        end
      end
    end
  end
end
