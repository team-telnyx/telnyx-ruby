# typed: strong

module Telnyx
  module Models
    AgentGatewayPolicyAttachmentResponse =
      AgentGateways::AgentGatewayPolicyAttachmentResponse

    module AgentGateways
      class AgentGatewayPolicyAttachmentResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayPolicyAttachmentResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Where an instance applies a policy.
        sig { returns(Telnyx::AgentGateways::AgentGatewayPolicyAttachment) }
        attr_reader :data

        sig do
          params(
            data: Telnyx::AgentGateways::AgentGatewayPolicyAttachment::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::AgentGateways::AgentGatewayPolicyAttachment::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Where an instance applies a policy.
          data:
        )
        end

        sig do
          override.returns(
            { data: Telnyx::AgentGateways::AgentGatewayPolicyAttachment }
          )
        end
        def to_hash
        end
      end
    end
  end
end
