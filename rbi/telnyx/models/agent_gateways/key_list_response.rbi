# typed: strong

module Telnyx
  module Models
    module AgentGateways
      class KeyListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AgentGateways::KeyListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::AgentGateways::AgentGatewayKey]) }
        attr_accessor :data

        sig do
          params(
            data: T::Array[Telnyx::AgentGateways::AgentGatewayKey::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: T::Array[Telnyx::AgentGateways::AgentGatewayKey] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
