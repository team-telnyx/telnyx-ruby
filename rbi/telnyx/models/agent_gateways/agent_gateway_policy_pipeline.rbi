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

        sig do
          returns(
            T::Array[Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step]
          )
        end
        attr_accessor :steps

        # Ordered steps that run in place of the policy's guardrails running
        # independently.
        sig do
          params(
            hook:
              Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Hook::OrSymbol,
            steps:
              T::Array[
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OrHash
              ]
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
              steps:
                T::Array[
                  Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step
                ]
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

        class Step < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step,
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
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnError::OrSymbol
              )
            )
          end
          attr_accessor :on_error

          # What happens when the guardrail fails.
          sig do
            returns(
              T.nilable(
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnFail::OrSymbol
              )
            )
          end
          attr_reader :on_fail

          sig do
            params(
              on_fail:
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnFail::OrSymbol
            ).void
          end
          attr_writer :on_fail

          # What happens when the guardrail passes. `next` goes on to the next step, `allow`
          # allows the request, `block` blocks it, and `respond` answers with `message`.
          sig do
            returns(
              T.nilable(
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnPass::OrSymbol
              )
            )
          end
          attr_reader :on_pass

          sig do
            params(
              on_pass:
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnPass::OrSymbol
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
                  Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnError::OrSymbol
                ),
              on_fail:
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnFail::OrSymbol,
              on_pass:
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnPass::OrSymbol,
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
                    Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnError::OrSymbol
                  ),
                on_fail:
                  Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnFail::OrSymbol,
                on_pass:
                  Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnPass::OrSymbol,
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
                  Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnError
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NEXT =
              T.let(
                :next,
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnError::TaggedSymbol
              )
            ALLOW =
              T.let(
                :allow,
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnError::TaggedSymbol
              )
            BLOCK =
              T.let(
                :block,
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnError::TaggedSymbol
              )
            RESPOND =
              T.let(
                :respond,
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnError::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnError::TaggedSymbol
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
                  Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnFail
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NEXT =
              T.let(
                :next,
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnFail::TaggedSymbol
              )
            ALLOW =
              T.let(
                :allow,
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnFail::TaggedSymbol
              )
            BLOCK =
              T.let(
                :block,
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnFail::TaggedSymbol
              )
            RESPOND =
              T.let(
                :respond,
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnFail::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnFail::TaggedSymbol
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
                  Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnPass
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NEXT =
              T.let(
                :next,
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnPass::TaggedSymbol
              )
            ALLOW =
              T.let(
                :allow,
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnPass::TaggedSymbol
              )
            BLOCK =
              T.let(
                :block,
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnPass::TaggedSymbol
              )
            RESPOND =
              T.let(
                :respond,
                Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnPass::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnPass::TaggedSymbol
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
end
