# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::APIs#create
      class AgentGatewayAPIResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::AgentGateways::AgentGatewayAPI]
        required :data, -> { Telnyx::AgentGateways::AgentGatewayAPI }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::AgentGateways::AgentGatewayAPI]
      end
    end

    AgentGatewayAPIResponse = AgentGateways::AgentGatewayAPIResponse
  end
end
