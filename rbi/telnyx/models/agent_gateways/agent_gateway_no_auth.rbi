# typed: strong

module Telnyx
  module Models
    AgentGatewayNoAuth = AgentGateways::AgentGatewayNoAuth

    module AgentGateways
      class AgentGatewayNoAuth < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayNoAuth,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Telnyx::AgentGateways::AgentGatewayNoAuth::Type::OrSymbol)
          )
        end
        attr_reader :type

        sig do
          params(
            type: Telnyx::AgentGateways::AgentGatewayNoAuth::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # The gateway sends no credential.
        sig do
          params(
            type: Telnyx::AgentGateways::AgentGatewayNoAuth::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(type: nil)
        end

        sig do
          override.returns(
            { type: Telnyx::AgentGateways::AgentGatewayNoAuth::Type::OrSymbol }
          )
        end
        def to_hash
        end

        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AgentGateways::AgentGatewayNoAuth::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :none,
              Telnyx::AgentGateways::AgentGatewayNoAuth::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AgentGateways::AgentGatewayNoAuth::Type::TaggedSymbol
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
