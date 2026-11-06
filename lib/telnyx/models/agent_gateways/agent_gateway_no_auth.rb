# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      class AgentGatewayNoAuth < Telnyx::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::AgentGateways::AgentGatewayNoAuth::Type, nil]
        optional :type, enum: -> { Telnyx::AgentGateways::AgentGatewayNoAuth::Type }

        # @!method initialize(type: nil)
        #   The gateway sends no credential.
        #
        #   @param type [Symbol, Telnyx::Models::AgentGateways::AgentGatewayNoAuth::Type]

        # @see Telnyx::Models::AgentGateways::AgentGatewayNoAuth#type
        module Type
          extend Telnyx::Internal::Type::Enum

          NONE = :none

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    AgentGatewayNoAuth = AgentGateways::AgentGatewayNoAuth
  end
end
