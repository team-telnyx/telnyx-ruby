# typed: strong

module Telnyx
  module Models
    module AgentGateways
      module Keys
        class AgentGatewayToolPermissionsResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AgentGateways::Keys::AgentGatewayToolPermissionsResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(Telnyx::AgentGateways::Keys::AgentGatewayToolPermissions)
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::AgentGateways::Keys::AgentGatewayToolPermissions::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::AgentGateways::Keys::AgentGatewayToolPermissions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              { data: Telnyx::AgentGateways::Keys::AgentGatewayToolPermissions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
