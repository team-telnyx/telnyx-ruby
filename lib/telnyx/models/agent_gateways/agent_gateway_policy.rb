# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      class AgentGatewayPolicy < Telnyx::Internal::Type::BaseModel
        # @!attribute base
        #   A policy this one builds on, by name. The policy starts with the base's
        #   guardrails.
        #
        #   @return [String, nil]
        required :base, String, nil?: true

        # @!attribute created_at
        #   When the policy's current version was created. An update creates a new version.
        #
        #   @return [Time, nil]
        required :created_at, Time, nil?: true

        # @!attribute description
        #   What the policy is for.
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute guardrails
        #   The guardrails a policy adds to its base's, and the ones it removes from them,
        #   by name.
        #
        #   @return [Telnyx::Models::AgentGateways::AgentGatewayPolicyGuardrails]
        required :guardrails, -> { Telnyx::AgentGateways::AgentGatewayPolicyGuardrails }

        # @!attribute model
        #   A condition on the model, by name or regular expression. The policy's guardrails
        #   run only on requests for a matching model. `null` matches every model.
        #
        #   @return [String, nil]
        required :model, String, nil?: true

        # @!attribute name
        #   A name, unique on the instance. A request names the policy in its `policies`
        #   field.
        #
        #   @return [String]
        required :name, String

        # @!attribute pipeline
        #   Ordered steps that run in place of the policy's guardrails running
        #   independently.
        #
        #   @return [Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline, nil]
        required :pipeline, -> { Telnyx::AgentGateways::AgentGatewayPolicyPipeline }, nil?: true

        # @!attribute updated_at
        #   When the policy last changed.
        #
        #   @return [Time, nil]
        required :updated_at, Time, nil?: true

        # @!method initialize(base:, created_at:, description:, guardrails:, model:, name:, pipeline:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::AgentGatewayPolicy} for more details.
        #
        #   A named set of guardrails.
        #
        #   @param base [String, nil] A policy this one builds on, by name. The policy starts with the base's guardrai
        #
        #   @param created_at [Time, nil] When the policy's current version was created. An update creates a new version.
        #
        #   @param description [String, nil] What the policy is for.
        #
        #   @param guardrails [Telnyx::Models::AgentGateways::AgentGatewayPolicyGuardrails] The guardrails a policy adds to its base's, and the ones it removes from them, b
        #
        #   @param model [String, nil] A condition on the model, by name or regular expression. The policy's guardrails
        #
        #   @param name [String] A name, unique on the instance. A request names the policy in its `policies` fie
        #
        #   @param pipeline [Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline, nil] Ordered steps that run in place of the policy's guardrails running independently
        #
        #   @param updated_at [Time, nil] When the policy last changed.
      end
    end

    AgentGatewayPolicy = AgentGateways::AgentGatewayPolicy
  end
end
