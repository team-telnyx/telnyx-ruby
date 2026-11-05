# typed: strong

module Telnyx
  module Resources
    class AgentGateways
      # Named sets of guardrails an instance applies to requests.
      class Policies
        # Creates a named set of guardrails. It applies from the next request on, to the
        # requests that name it in `policies` and to those its
        # [attachments](https://developers.telnyx.com/api-reference/agent-gateway-policy-attachments/attach-a-policy)
        # match.
        sig do
          params(
            instance_id: String,
            name: String,
            base: T.nilable(String),
            description: T.nilable(String),
            guardrails:
              Telnyx::AgentGateways::AgentGatewayPolicyGuardrails::OrHash,
            model: T.nilable(String),
            pipeline:
              T.nilable(
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::OrHash
              ),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AgentGateways::AgentGatewayPolicyResponse)
        end
        def create(
          # The Agent Gateway's `id`.
          instance_id,
          # A name, unique on the instance. A request names the policy in its `policies`
          # field.
          name:,
          # A policy this one builds on, by name. The policy starts with the base's
          # guardrails.
          base: nil,
          # What the policy is for.
          description: nil,
          # The guardrails a policy adds to its base's, and the ones it removes from them,
          # by name.
          guardrails: nil,
          # A condition on the model, by name or regular expression. The policy's guardrails
          # run only on requests for a matching model. `null` matches every model.
          model: nil,
          # Ordered steps that run in place of the policy's guardrails running
          # independently.
          pipeline: nil,
          request_options: {}
        )
        end

        # Returns one policy, in its current version.
        sig do
          params(
            name: String,
            instance_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AgentGateways::AgentGatewayPolicyResponse)
        end
        def retrieve(
          # The policy's `name`.
          name,
          # The Agent Gateway's `id`.
          instance_id:,
          request_options: {}
        )
        end

        # Changes a policy, which publishes a new version of it. A field left out stays as
        # it is; `guardrails` and `pipeline` are replaced whole, and `model: null` removes
        # the condition.
        sig do
          params(
            name: String,
            instance_id: String,
            base: T.nilable(String),
            description: T.nilable(String),
            guardrails:
              Telnyx::AgentGateways::AgentGatewayPolicyGuardrails::OrHash,
            model: T.nilable(String),
            pipeline:
              T.nilable(
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::OrHash
              ),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AgentGateways::AgentGatewayPolicyResponse)
        end
        def update(
          # Path param: The policy's `name`.
          name,
          # Path param: The Agent Gateway's `id`.
          instance_id:,
          # Body param: A policy this one builds on, by name. The policy starts with the
          # base's guardrails.
          base: nil,
          # Body param: What the policy is for.
          description: nil,
          # Body param: The guardrails a policy adds to its base's, and the ones it removes
          # from them, by name.
          guardrails: nil,
          # Body param: A condition on the model, by name or regular expression. The
          # policy's guardrails run only on requests for a matching model. `null` matches
          # every model.
          model: nil,
          # Body param: Ordered steps that run in place of the policy's guardrails running
          # independently.
          pipeline: nil,
          request_options: {}
        )
        end

        # Lists the instance's policies, each in its current version.
        sig do
          params(
            instance_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AgentGateways::PolicyListResponse)
        end
        def list(
          # The Agent Gateway's `id`.
          instance_id,
          request_options: {}
        )
        end

        # Deletes a policy and every version of it, and returns it as it was. A policy
        # that an attachment names, or that another policy builds on, cannot be deleted.
        sig do
          params(
            name: String,
            instance_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AgentGateways::AgentGatewayPolicyResponse)
        end
        def delete(
          # The policy's `name`.
          name,
          # The Agent Gateway's `id`.
          instance_id:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
