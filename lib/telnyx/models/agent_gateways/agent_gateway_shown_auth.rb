# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      class AgentGatewayShownAuth < Telnyx::Internal::Type::BaseModel
        # @!attribute type
        #   The method's `type`.
        #
        #   @return [String]
        required :type, String

        # @!method initialize(type:)
        #   The server's outbound authentication method. Credentials are never returned.
        #
        #   @param type [String] The method's `type`.
      end
    end

    AgentGatewayShownAuth = AgentGateways::AgentGatewayShownAuth
  end
end
