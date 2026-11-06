# typed: strong

module Telnyx
  module Models
    module AgentGateways
      class APIListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AgentGateways::APIListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::AgentGateways::AgentGatewayAPI]) }
        attr_accessor :data

        sig do
          params(
            data: T::Array[Telnyx::AgentGateways::AgentGatewayAPI::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: T::Array[Telnyx::AgentGateways::AgentGatewayAPI] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
