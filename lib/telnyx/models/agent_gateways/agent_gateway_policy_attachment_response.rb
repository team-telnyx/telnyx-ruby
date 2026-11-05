# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::PolicyAttachments#create
      class AgentGatewayPolicyAttachmentResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   Where an instance applies a policy.
        #
        #   @return [Telnyx::Models::AgentGateways::AgentGatewayPolicyAttachment]
        required :data, -> { Telnyx::AgentGateways::AgentGatewayPolicyAttachment }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::AgentGateways::AgentGatewayPolicyAttachment] Where an instance applies a policy.
      end
    end

    AgentGatewayPolicyAttachmentResponse = AgentGateways::AgentGatewayPolicyAttachmentResponse
  end
end
