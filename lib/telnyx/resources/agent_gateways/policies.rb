# frozen_string_literal: true

module Telnyx
  module Resources
    class AgentGateways
      # Named sets of guardrails an instance applies to requests.
      class Policies
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AgentGateways::PolicyCreateParams} for more details.
        #
        # Creates a named set of guardrails. It applies from the next request on, to the
        # requests that name it in `policies` and to those its
        # [attachments](https://developers.telnyx.com/api-reference/agent-gateway-policy-attachments/attach-a-policy)
        # match.
        #
        # @overload create(instance_id, name:, base: nil, description: nil, guardrails: nil, model: nil, pipeline: nil, request_options: {})
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param name [String] A name, unique on the instance. A request names the policy in its `policies` fie
        #
        # @param base [String, nil] A policy this one builds on, by name. The policy starts with the base's guardrai
        #
        # @param description [String, nil] What the policy is for.
        #
        # @param guardrails [Telnyx::Models::AgentGateways::AgentGatewayPolicyGuardrails] The guardrails a policy adds to its base's, and the ones it removes from them, b
        #
        # @param model [String, nil] A condition on the model, by name or regular expression. The policy's guardrails
        #
        # @param pipeline [Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline, nil] Ordered steps that run in place of the policy's guardrails running independently
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayPolicyResponse]
        #
        # @see Telnyx::Models::AgentGateways::PolicyCreateParams
        def create(instance_id, params)
          parsed, options = Telnyx::AgentGateways::PolicyCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["agent_gateways/%1$s/policies", instance_id],
            body: parsed,
            model: Telnyx::AgentGateways::AgentGatewayPolicyResponse,
            options: options
          )
        end

        # Returns one policy, in its current version.
        #
        # @overload retrieve(name, instance_id:, request_options: {})
        #
        # @param name [String] The policy's `name`.
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayPolicyResponse]
        #
        # @see Telnyx::Models::AgentGateways::PolicyRetrieveParams
        def retrieve(name, params)
          parsed, options = Telnyx::AgentGateways::PolicyRetrieveParams.dump_request(params)
          instance_id =
            parsed.delete(:instance_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["agent_gateways/%1$s/policies/%2$s", instance_id, name],
            model: Telnyx::AgentGateways::AgentGatewayPolicyResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AgentGateways::PolicyUpdateParams} for more details.
        #
        # Changes a policy, which publishes a new version of it. A field left out stays as
        # it is; `guardrails` and `pipeline` are replaced whole, and `model: null` removes
        # the condition.
        #
        # @overload update(name, instance_id:, base: nil, description: nil, guardrails: nil, model: nil, pipeline: nil, request_options: {})
        #
        # @param name [String] Path param: The policy's `name`.
        #
        # @param instance_id [String] Path param: The Agent Gateway's `id`.
        #
        # @param base [String, nil] Body param: A policy this one builds on, by name. The policy starts with the bas
        #
        # @param description [String, nil] Body param: What the policy is for.
        #
        # @param guardrails [Telnyx::Models::AgentGateways::AgentGatewayPolicyGuardrails] Body param: The guardrails a policy adds to its base's, and the ones it removes
        #
        # @param model [String, nil] Body param: A condition on the model, by name or regular expression. The policy'
        #
        # @param pipeline [Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline, nil] Body param: Ordered steps that run in place of the policy's guardrails running i
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayPolicyResponse]
        #
        # @see Telnyx::Models::AgentGateways::PolicyUpdateParams
        def update(name, params)
          parsed, options = Telnyx::AgentGateways::PolicyUpdateParams.dump_request(params)
          instance_id =
            parsed.delete(:instance_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["agent_gateways/%1$s/policies/%2$s", instance_id, name],
            body: parsed,
            model: Telnyx::AgentGateways::AgentGatewayPolicyResponse,
            options: options
          )
        end

        # Lists the instance's policies, each in its current version.
        #
        # @overload list(instance_id, request_options: {})
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::PolicyListResponse]
        #
        # @see Telnyx::Models::AgentGateways::PolicyListParams
        def list(instance_id, params = {})
          @client.request(
            method: :get,
            path: ["agent_gateways/%1$s/policies", instance_id],
            model: Telnyx::Models::AgentGateways::PolicyListResponse,
            options: params[:request_options]
          )
        end

        # Deletes a policy and every version of it, and returns it as it was. A policy
        # that an attachment names, or that another policy builds on, cannot be deleted.
        #
        # @overload delete(name, instance_id:, request_options: {})
        #
        # @param name [String] The policy's `name`.
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayPolicyResponse]
        #
        # @see Telnyx::Models::AgentGateways::PolicyDeleteParams
        def delete(name, params)
          parsed, options = Telnyx::AgentGateways::PolicyDeleteParams.dump_request(params)
          instance_id =
            parsed.delete(:instance_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["agent_gateways/%1$s/policies/%2$s", instance_id, name],
            model: Telnyx::AgentGateways::AgentGatewayPolicyResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
