# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::Keys#update
      class AgentGatewayKeyResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   A key on an instance, without its value.
        #
        #   @return [Telnyx::Models::AgentGateways::AgentGatewayKey]
        required :data, -> { Telnyx::AgentGateways::AgentGatewayKey }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::AgentGateways::AgentGatewayKey] A key on an instance, without its value.
      end
    end

    AgentGatewayKeyResponse = AgentGateways::AgentGatewayKeyResponse
  end
end
