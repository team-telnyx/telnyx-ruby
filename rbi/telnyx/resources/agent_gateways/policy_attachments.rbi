# typed: strong

module Telnyx
  module Resources
    class AgentGateways
      # Where an instance applies each policy.
      class PolicyAttachments
        # Applies a policy to every request, or to the requests for the models named. It
        # applies from the next request on.
        sig do
          params(
            instance_id: String,
            policy: String,
            default: T::Boolean,
            models: T::Array[String],
            priority: T.nilable(Integer),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AgentGateways::AgentGatewayPolicyAttachmentResponse)
        end
        def create(
          # The Agent Gateway's `id`.
          instance_id,
          # The policy to apply, by name.
          policy:,
          # `true` applies the policy only to the requests no other attachment matches.
          default: nil,
          # The models whose requests the policy applies to, by name. A name can use `*` as
          # a wildcard. Empty applies the policy to every request.
          models: nil,
          # An attachment with a priority applies before the others.
          priority: nil,
          request_options: {}
        )
        end

        # Lists where the instance applies each policy.
        sig do
          params(
            instance_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AgentGateways::PolicyAttachmentListResponse)
        end
        def list(
          # The Agent Gateway's `id`.
          instance_id,
          request_options: {}
        )
        end

        # Removes an attachment and returns it as it was. The policy stays.
        sig do
          params(
            attachment_id: String,
            instance_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AgentGateways::AgentGatewayPolicyAttachmentResponse)
        end
        def delete(
          # The attachment's `id`.
          attachment_id,
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
