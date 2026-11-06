# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::PolicyAttachments#list
      class PolicyAttachmentListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::AgentGateways::AgentGatewayPolicyAttachment>]
        required :data,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AgentGateways::AgentGatewayPolicyAttachment] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::AgentGateways::AgentGatewayPolicyAttachment>]
      end
    end
  end
end
