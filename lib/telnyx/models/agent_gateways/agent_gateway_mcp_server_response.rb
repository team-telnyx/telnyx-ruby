# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::McpServers#create
      class AgentGatewayMcpServerResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::AgentGateways::AgentGatewayMcpServer]
        required :data, -> { Telnyx::AgentGateways::AgentGatewayMcpServer }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::AgentGateways::AgentGatewayMcpServer]
      end
    end

    AgentGatewayMcpServerResponse = AgentGateways::AgentGatewayMcpServerResponse
  end
end
