# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      module Keys
        # @see Telnyx::Resources::AgentGateways::Keys::ToolPermissions#create
        class AgentGatewayToolPermissionsResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::AgentGateways::Keys::AgentGatewayToolPermissions]
          required :data, -> { Telnyx::AgentGateways::Keys::AgentGatewayToolPermissions }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::AgentGateways::Keys::AgentGatewayToolPermissions]
        end
      end
    end
  end
end
