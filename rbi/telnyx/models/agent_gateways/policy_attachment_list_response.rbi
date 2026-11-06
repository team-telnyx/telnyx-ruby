# typed: strong

module Telnyx
  module Models
    module AgentGateways
      class PolicyAttachmentListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AgentGateways::PolicyAttachmentListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[Telnyx::AgentGateways::AgentGatewayPolicyAttachment])
        end
        attr_accessor :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::AgentGateways::AgentGatewayPolicyAttachment::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[Telnyx::AgentGateways::AgentGatewayPolicyAttachment]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
