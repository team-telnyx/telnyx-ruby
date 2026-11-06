# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::Policies#list
      class PolicyListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::AgentGateways::AgentGatewayPolicy>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AgentGateways::AgentGatewayPolicy] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::AgentGateways::AgentGatewayPolicy>]
      end
    end
  end
end
