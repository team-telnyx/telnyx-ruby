# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AgentGateways#create
    class AgentGatewayResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   An Agent Gateway instance on a WireGuard Interface.
      #
      #   @return [Telnyx::Models::AgentGateway]
      required :data, -> { Telnyx::AgentGateway }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::AgentGateway] An Agent Gateway instance on a WireGuard Interface.
    end
  end
end
