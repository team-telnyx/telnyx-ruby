# typed: strong

module Telnyx
  module Models
    AgentGatewayPassthroughAuth = AgentGateways::AgentGatewayPassthroughAuth

    module AgentGateways
      class AgentGatewayPassthroughAuth < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayPassthroughAuth,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::AgentGateways::AgentGatewayPassthroughAuth::Type::OrSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type:
              Telnyx::AgentGateways::AgentGatewayPassthroughAuth::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # The gateway forwards the agent's own `Authorization` header to the server
        # unchanged.
        sig do
          params(
            type:
              Telnyx::AgentGateways::AgentGatewayPassthroughAuth::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(type: nil)
        end

        sig do
          override.returns(
            {
              type:
                Telnyx::AgentGateways::AgentGatewayPassthroughAuth::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::AgentGateways::AgentGatewayPassthroughAuth::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PASSTHROUGH =
            T.let(
              :passthrough,
              Telnyx::AgentGateways::AgentGatewayPassthroughAuth::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AgentGateways::AgentGatewayPassthroughAuth::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
