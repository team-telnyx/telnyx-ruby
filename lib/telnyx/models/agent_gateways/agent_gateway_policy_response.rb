# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::Policies#create
      class AgentGatewayPolicyResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   A named set of guardrails.
        #
        #   @return [Telnyx::Models::AgentGateways::AgentGatewayPolicy]
        required :data, -> { Telnyx::AgentGateways::AgentGatewayPolicy }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::AgentGateways::AgentGatewayPolicy] A named set of guardrails.
      end
    end

    AgentGatewayPolicyResponse = AgentGateways::AgentGatewayPolicyResponse
  end
end
