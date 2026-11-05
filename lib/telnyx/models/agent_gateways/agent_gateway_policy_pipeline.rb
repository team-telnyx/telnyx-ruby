# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      class AgentGatewayPolicyPipeline < Telnyx::Internal::Type::BaseModel
        # @!attribute hook
        #   `before_request` runs the steps on the request, and `after_request` on the
        #   model's response.
        #
        #   @return [Symbol, Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline::Hook]
        required :hook, enum: -> { Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Hook }

        # @!attribute steps
        #
        #   @return [Array<Telnyx::Models::AgentGateways::AgentGatewayPolicyStep>]
        required :steps, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AgentGateways::AgentGatewayPolicyStep] }

        # @!method initialize(hook:, steps:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline} for more details.
        #
        #   Ordered steps that run in place of the policy's guardrails running
        #   independently.
        #
        #   @param hook [Symbol, Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline::Hook] `before_request` runs the steps on the request, and `after_request` on the model
        #
        #   @param steps [Array<Telnyx::Models::AgentGateways::AgentGatewayPolicyStep>]

        # `before_request` runs the steps on the request, and `after_request` on the
        # model's response.
        #
        # @see Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline#hook
        module Hook
          extend Telnyx::Internal::Type::Enum

          BEFORE_REQUEST = :before_request
          AFTER_REQUEST = :after_request

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    AgentGatewayPolicyPipeline = AgentGateways::AgentGatewayPolicyPipeline
  end
end
