# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::Policies#create
      class PolicyCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute instance_id
        #
        #   @return [String]
        required :instance_id, String

        # @!attribute name
        #   A name, unique on the instance. A request names the policy in its `policies`
        #   field.
        #
        #   @return [String]
        required :name, String

        # @!attribute base
        #   A policy this one builds on, by name. The policy starts with the base's
        #   guardrails.
        #
        #   @return [String, nil]
        optional :base, String, nil?: true

        # @!attribute description
        #   What the policy is for.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute guardrails
        #   The guardrails a policy adds to its base's, and the ones it removes from them,
        #   by name.
        #
        #   @return [Telnyx::Models::AgentGateways::AgentGatewayPolicyGuardrails, nil]
        optional :guardrails, -> { Telnyx::AgentGateways::AgentGatewayPolicyGuardrails }

        # @!attribute model
        #   A condition on the model, by name or regular expression. The policy's guardrails
        #   run only on requests for a matching model. `null` matches every model.
        #
        #   @return [String, nil]
        optional :model, String, nil?: true

        # @!attribute pipeline
        #   Ordered steps that run in place of the policy's guardrails running
        #   independently.
        #
        #   @return [Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline, nil]
        optional :pipeline, -> { Telnyx::AgentGateways::AgentGatewayPolicyPipeline }, nil?: true

        # @!method initialize(instance_id:, name:, base: nil, description: nil, guardrails: nil, model: nil, pipeline: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::PolicyCreateParams} for more details.
        #
        #   @param instance_id [String]
        #
        #   @param name [String] A name, unique on the instance. A request names the policy in its `policies` fie
        #
        #   @param base [String, nil] A policy this one builds on, by name. The policy starts with the base's guardrai
        #
        #   @param description [String, nil] What the policy is for.
        #
        #   @param guardrails [Telnyx::Models::AgentGateways::AgentGatewayPolicyGuardrails] The guardrails a policy adds to its base's, and the ones it removes from them, b
        #
        #   @param model [String, nil] A condition on the model, by name or regular expression. The policy's guardrails
        #
        #   @param pipeline [Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline, nil] Ordered steps that run in place of the policy's guardrails running independently
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
