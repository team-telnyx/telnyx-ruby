# typed: strong

module Telnyx
  module Models
    module AgentGateways
      class TeamListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AgentGateways::TeamListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::AgentGateways::AgentGatewayTeam]) }
        attr_accessor :data

        sig do
          params(
            data: T::Array[Telnyx::AgentGateways::AgentGatewayTeam::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: T::Array[Telnyx::AgentGateways::AgentGatewayTeam] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
