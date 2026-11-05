# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::Keys#list
      class KeyListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::AgentGateways::AgentGatewayKey>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AgentGateways::AgentGatewayKey] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::AgentGateways::AgentGatewayKey>]
      end
    end
  end
end
