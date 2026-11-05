# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::Guardrails#create
      class AgentGatewayGuardrailResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::AgentGateways::AgentGatewayGuardrail]
        required :data, -> { Telnyx::AgentGateways::AgentGatewayGuardrail }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::AgentGateways::AgentGatewayGuardrail]
      end
    end

    AgentGatewayGuardrailResponse = AgentGateways::AgentGatewayGuardrailResponse
  end
end
