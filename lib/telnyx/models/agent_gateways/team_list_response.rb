# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::Teams#list
      class TeamListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::AgentGateways::AgentGatewayTeam>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AgentGateways::AgentGatewayTeam] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::AgentGateways::AgentGatewayTeam>]
      end
    end
  end
end
