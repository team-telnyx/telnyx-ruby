# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::Guardrails#list
      class GuardrailListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::AgentGateways::AgentGatewayGuardrail>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AgentGateways::AgentGatewayGuardrail] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::AgentGateways::AgentGatewayGuardrail>]
      end
    end
  end
end
