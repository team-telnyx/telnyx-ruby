# typed: strong

module Telnyx
  module Models
    AgentGatewayPolicyPipeline = AgentGateways::AgentGatewayPolicyPipeline

    module AgentGateways
      class AgentGatewayPolicyPipeline < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayPolicyPipeline,
              Telnyx::Internal::AnyHash
            )
          end

        # `before_request` runs the steps on the request, and `after_request` on the
        # model's response.
        sig do
          returns(
            Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Hook::OrSymbol
          )
        end
        attr_accessor :hook

        sig { returns(T::Array[Telnyx::AgentGateways::AgentGatewayPolicyStep]) }
        attr_accessor :steps

        # Ordered steps that run in place of the policy's guardrails running
        # independently.
        sig do
          params(
            hook:
              Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Hook::OrSymbol,
            steps:
              T::Array[Telnyx::AgentGateways::AgentGatewayPolicyStep::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # `before_request` runs the steps on the request, and `after_request` on the
          # model's response.
          hook:,
          steps:
        )
        end

        sig do
          override.returns(
            {
              hook:
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Hook::OrSymbol,
              steps: T::Array[Telnyx::AgentGateways::AgentGatewayPolicyStep]
            }
          )
        end
        def to_hash
        end

        # `before_request` runs the steps on the request, and `after_request` on the
        # model's response.
        module Hook
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Hook
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BEFORE_REQUEST =
            T.let(
              :before_request,
              Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Hook::TaggedSymbol
            )
          AFTER_REQUEST =
            T.let(
              :after_request,
              Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Hook::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Hook::TaggedSymbol
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
