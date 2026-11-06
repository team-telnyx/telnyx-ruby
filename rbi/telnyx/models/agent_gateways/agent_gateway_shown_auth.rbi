# typed: strong

module Telnyx
  module Models
    AgentGatewayShownAuth = AgentGateways::AgentGatewayShownAuth

    module AgentGateways
      class AgentGatewayShownAuth < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayShownAuth,
              Telnyx::Internal::AnyHash
            )
          end

        # The method's `type`.
        sig { returns(String) }
        attr_accessor :type

        # The server's outbound authentication method. Credentials are never returned.
        sig { params(type: String).returns(T.attached_class) }
        def self.new(
          # The method's `type`.
          type:
        )
        end

        sig { override.returns({ type: String }) }
        def to_hash
        end
      end
    end
  end
end
