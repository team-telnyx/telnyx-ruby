# typed: strong

module Telnyx
  module Models
    AgentGatewayPolicyStep = AgentGateways::AgentGatewayPolicyStep

    module AgentGateways
      class AgentGatewayPolicyStep < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayPolicyStep,
              Telnyx::Internal::AnyHash
            )
          end

        # A guardrail on the instance, by name.
        sig { returns(String) }
        attr_accessor :guardrail

        # The response that replaces the model's when an outcome is `respond`. Required
        # with `respond`.
        sig { returns(T.nilable(String)) }
        attr_accessor :message

        # What happens when the guardrail errors. Left out, the same as `on_fail`.
        sig do
          returns(
            T.nilable(
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnError::OrSymbol
            )
          )
        end
        attr_accessor :on_error

        # What happens when the guardrail fails.
        sig do
          returns(
            T.nilable(
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnFail::OrSymbol
            )
          )
        end
        attr_reader :on_fail

        sig do
          params(
            on_fail:
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnFail::OrSymbol
          ).void
        end
        attr_writer :on_fail

        # What happens when the guardrail passes. `next` goes on to the next step, `allow`
        # allows the request, `block` blocks it, and `respond` answers with `message`.
        sig do
          returns(
            T.nilable(
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnPass::OrSymbol
            )
          )
        end
        attr_reader :on_pass

        sig do
          params(
            on_pass:
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnPass::OrSymbol
          ).void
        end
        attr_writer :on_pass

        # `true` hands the step's modified request, such as masked text, to the next step.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :pass_data

        sig { params(pass_data: T::Boolean).void }
        attr_writer :pass_data

        # One pipeline step: a guardrail, and what happens when it passes, fails, or
        # errors.
        sig do
          params(
            guardrail: String,
            message: T.nilable(String),
            on_error:
              T.nilable(
                Telnyx::AgentGateways::AgentGatewayPolicyStep::OnError::OrSymbol
              ),
            on_fail:
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnFail::OrSymbol,
            on_pass:
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnPass::OrSymbol,
            pass_data: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # A guardrail on the instance, by name.
          guardrail:,
          # The response that replaces the model's when an outcome is `respond`. Required
          # with `respond`.
          message: nil,
          # What happens when the guardrail errors. Left out, the same as `on_fail`.
          on_error: nil,
          # What happens when the guardrail fails.
          on_fail: nil,
          # What happens when the guardrail passes. `next` goes on to the next step, `allow`
          # allows the request, `block` blocks it, and `respond` answers with `message`.
          on_pass: nil,
          # `true` hands the step's modified request, such as masked text, to the next step.
          pass_data: nil
        )
        end

        sig do
          override.returns(
            {
              guardrail: String,
              message: T.nilable(String),
              on_error:
                T.nilable(
                  Telnyx::AgentGateways::AgentGatewayPolicyStep::OnError::OrSymbol
                ),
              on_fail:
                Telnyx::AgentGateways::AgentGatewayPolicyStep::OnFail::OrSymbol,
              on_pass:
                Telnyx::AgentGateways::AgentGatewayPolicyStep::OnPass::OrSymbol,
              pass_data: T::Boolean
            }
          )
        end
        def to_hash
        end

        # What happens when the guardrail errors. Left out, the same as `on_fail`.
        module OnError
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::AgentGateways::AgentGatewayPolicyStep::OnError
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NEXT =
            T.let(
              :next,
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnError::TaggedSymbol
            )
          ALLOW =
            T.let(
              :allow,
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnError::TaggedSymbol
            )
          BLOCK =
            T.let(
              :block,
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnError::TaggedSymbol
            )
          RESPOND =
            T.let(
              :respond,
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnError::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AgentGateways::AgentGatewayPolicyStep::OnError::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # What happens when the guardrail fails.
        module OnFail
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::AgentGateways::AgentGatewayPolicyStep::OnFail
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NEXT =
            T.let(
              :next,
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnFail::TaggedSymbol
            )
          ALLOW =
            T.let(
              :allow,
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnFail::TaggedSymbol
            )
          BLOCK =
            T.let(
              :block,
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnFail::TaggedSymbol
            )
          RESPOND =
            T.let(
              :respond,
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnFail::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AgentGateways::AgentGatewayPolicyStep::OnFail::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # What happens when the guardrail passes. `next` goes on to the next step, `allow`
        # allows the request, `block` blocks it, and `respond` answers with `message`.
        module OnPass
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::AgentGateways::AgentGatewayPolicyStep::OnPass
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NEXT =
            T.let(
              :next,
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnPass::TaggedSymbol
            )
          ALLOW =
            T.let(
              :allow,
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnPass::TaggedSymbol
            )
          BLOCK =
            T.let(
              :block,
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnPass::TaggedSymbol
            )
          RESPOND =
            T.let(
              :respond,
              Telnyx::AgentGateways::AgentGatewayPolicyStep::OnPass::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AgentGateways::AgentGatewayPolicyStep::OnPass::TaggedSymbol
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
