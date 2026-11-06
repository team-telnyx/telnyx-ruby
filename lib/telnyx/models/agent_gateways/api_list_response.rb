# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::APIs#list
      class APIListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::AgentGateways::AgentGatewayAPI>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AgentGateways::AgentGatewayAPI] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::AgentGateways::AgentGatewayAPI>]
      end
    end
  end
end
