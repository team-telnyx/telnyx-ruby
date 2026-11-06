# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      class AgentGatewayPolicyGuardrails < Telnyx::Internal::Type::BaseModel
        # @!attribute add
        #   Guardrails the policy runs in addition to its base's.
        #
        #   @return [Array<String>, nil]
        optional :add, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute remove
        #   Guardrails from its base that the policy does not run.
        #
        #   @return [Array<String>, nil]
        optional :remove, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(add: nil, remove: nil)
        #   The guardrails a policy adds to its base's, and the ones it removes from them,
        #   by name.
        #
        #   @param add [Array<String>] Guardrails the policy runs in addition to its base's.
        #
        #   @param remove [Array<String>] Guardrails from its base that the policy does not run.
      end
    end

    AgentGatewayPolicyGuardrails = AgentGateways::AgentGatewayPolicyGuardrails
  end
end
