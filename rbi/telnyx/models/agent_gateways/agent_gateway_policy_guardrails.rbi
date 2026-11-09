# typed: strong

module Telnyx
  module Models
    AgentGatewayPolicyGuardrails = AgentGateways::AgentGatewayPolicyGuardrails

    module AgentGateways
      class AgentGatewayPolicyGuardrails < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayPolicyGuardrails,
              Telnyx::Internal::AnyHash
            )
          end

        # Guardrails the policy runs in addition to its base's.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :add

        sig { params(add: T::Array[String]).void }
        attr_writer :add

        # Guardrails from its base that the policy does not run.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :remove

        sig { params(remove: T::Array[String]).void }
        attr_writer :remove

        # The guardrails a policy adds to its base's, and the ones it removes from them,
        # by name.
        sig do
          params(add: T::Array[String], remove: T::Array[String]).returns(
            T.attached_class
          )
        end
        def self.new(
          # Guardrails the policy runs in addition to its base's.
          add: nil,
          # Guardrails from its base that the policy does not run.
          remove: nil
        )
        end

        sig do
          override.returns({ add: T::Array[String], remove: T::Array[String] })
        end
        def to_hash
        end
      end
    end
  end
end
