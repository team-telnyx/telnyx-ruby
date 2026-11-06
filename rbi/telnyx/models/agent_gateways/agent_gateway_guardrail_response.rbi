# typed: strong

module Telnyx
  module Models
    AgentGatewayGuardrailResponse = AgentGateways::AgentGatewayGuardrailResponse

    module AgentGateways
      class AgentGatewayGuardrailResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayGuardrailResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::AgentGateways::AgentGatewayGuardrail) }
        attr_reader :data

        sig do
          params(
            data: Telnyx::AgentGateways::AgentGatewayGuardrail::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::AgentGateways::AgentGatewayGuardrail::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: Telnyx::AgentGateways::AgentGatewayGuardrail }
          )
        end
        def to_hash
        end
      end
    end
  end
end
