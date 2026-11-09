# typed: strong

module Telnyx
  module Models
    AgentGatewayPolicyResponse = AgentGateways::AgentGatewayPolicyResponse

    module AgentGateways
      class AgentGatewayPolicyResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayPolicyResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # A named set of guardrails.
        sig { returns(Telnyx::AgentGateways::AgentGatewayPolicy) }
        attr_reader :data

        sig do
          params(data: Telnyx::AgentGateways::AgentGatewayPolicy::OrHash).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::AgentGateways::AgentGatewayPolicy::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A named set of guardrails.
          data:
        )
        end

        sig do
          override.returns({ data: Telnyx::AgentGateways::AgentGatewayPolicy })
        end
        def to_hash
        end
      end
    end
  end
end
