# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      class AgentGatewayPassthroughAuth < Telnyx::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::AgentGateways::AgentGatewayPassthroughAuth::Type, nil]
        optional :type, enum: -> { Telnyx::AgentGateways::AgentGatewayPassthroughAuth::Type }

        # @!method initialize(type: nil)
        #   The gateway forwards the agent's own `Authorization` header to the server
        #   unchanged.
        #
        #   @param type [Symbol, Telnyx::Models::AgentGateways::AgentGatewayPassthroughAuth::Type]

        # @see Telnyx::Models::AgentGateways::AgentGatewayPassthroughAuth#type
        module Type
          extend Telnyx::Internal::Type::Enum

          PASSTHROUGH = :passthrough

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    AgentGatewayPassthroughAuth = AgentGateways::AgentGatewayPassthroughAuth
  end
end
