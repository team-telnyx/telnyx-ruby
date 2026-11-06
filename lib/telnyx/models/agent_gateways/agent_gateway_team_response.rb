# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::Teams#create
      class AgentGatewayTeamResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   A team on an instance: a model list, a budget, and rate limits that its keys
        #   share.
        #
        #   @return [Telnyx::Models::AgentGateways::AgentGatewayTeam]
        required :data, -> { Telnyx::AgentGateways::AgentGatewayTeam }

        # @!method initialize(data:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::AgentGatewayTeamResponse} for more details.
        #
        #   @param data [Telnyx::Models::AgentGateways::AgentGatewayTeam] A team on an instance: a model list, a budget, and rate limits that its keys sha
      end
    end

    AgentGatewayTeamResponse = AgentGateways::AgentGatewayTeamResponse
  end
end
