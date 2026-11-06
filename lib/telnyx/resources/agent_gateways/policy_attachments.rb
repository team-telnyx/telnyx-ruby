# frozen_string_literal: true

module Telnyx
  module Resources
    class AgentGateways
      # Where an instance applies each policy.
      class PolicyAttachments
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AgentGateways::PolicyAttachmentCreateParams} for more details.
        #
        # Applies a policy to every request, or to the requests for the models named. It
        # applies from the next request on.
        #
        # @overload create(instance_id, policy:, default: nil, models: nil, priority: nil, request_options: {})
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param policy [String] The policy to apply, by name.
        #
        # @param default [Boolean] `true` applies the policy only to the requests no other attachment matches.
        #
        # @param models [Array<String>] The models whose requests the policy applies to, by name. A name can use `*` as
        #
        # @param priority [Integer, nil] An attachment with a priority applies before the others.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayPolicyAttachmentResponse]
        #
        # @see Telnyx::Models::AgentGateways::PolicyAttachmentCreateParams
        def create(instance_id, params)
          parsed, options = Telnyx::AgentGateways::PolicyAttachmentCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["agent_gateways/%1$s/policy_attachments", instance_id],
            body: parsed,
            model: Telnyx::AgentGateways::AgentGatewayPolicyAttachmentResponse,
            options: options
          )
        end

        # Lists where the instance applies each policy.
        #
        # @overload list(instance_id, request_options: {})
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::PolicyAttachmentListResponse]
        #
        # @see Telnyx::Models::AgentGateways::PolicyAttachmentListParams
        def list(instance_id, params = {})
          @client.request(
            method: :get,
            path: ["agent_gateways/%1$s/policy_attachments", instance_id],
            model: Telnyx::Models::AgentGateways::PolicyAttachmentListResponse,
            options: params[:request_options]
          )
        end

        # Removes an attachment and returns it as it was. The policy stays.
        #
        # @overload delete(attachment_id, instance_id:, request_options: {})
        #
        # @param attachment_id [String] The attachment's `id`.
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayPolicyAttachmentResponse]
        #
        # @see Telnyx::Models::AgentGateways::PolicyAttachmentDeleteParams
        def delete(attachment_id, params)
          parsed, options = Telnyx::AgentGateways::PolicyAttachmentDeleteParams.dump_request(params)
          instance_id =
            parsed.delete(:instance_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["agent_gateways/%1$s/policy_attachments/%2$s", instance_id, attachment_id],
            model: Telnyx::AgentGateways::AgentGatewayPolicyAttachmentResponse,
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
