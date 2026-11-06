# typed: strong

module Telnyx
  module Models
    AgentGatewayKeyResponse = AgentGateways::AgentGatewayKeyResponse

    module AgentGateways
      class AgentGatewayKeyResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayKeyResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # A key on an instance, without its value.
        sig { returns(Telnyx::AgentGateways::AgentGatewayKey) }
        attr_reader :data

        sig do
          params(data: Telnyx::AgentGateways::AgentGatewayKey::OrHash).void
        end
        attr_writer :data

        sig do
          params(data: Telnyx::AgentGateways::AgentGatewayKey::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # A key on an instance, without its value.
          data:
        )
        end

        sig do
          override.returns({ data: Telnyx::AgentGateways::AgentGatewayKey })
        end
        def to_hash
        end
      end
    end
  end
end
