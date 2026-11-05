# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      class AgentGatewayPolicyPipeline < Telnyx::Internal::Type::BaseModel
        # @!attribute hook
        #   `before_request` runs the steps on the request, and `after_request` on the
        #   model's response.
        #
        #   @return [Symbol, Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline::Hook]
        required :hook, enum: -> { Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Hook }

        # @!attribute steps
        #
        #   @return [Array<Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline::Step>]
        required :steps,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step] }

        # @!method initialize(hook:, steps:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline} for more details.
        #
        #   Ordered steps that run in place of the policy's guardrails running
        #   independently.
        #
        #   @param hook [Symbol, Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline::Hook] `before_request` runs the steps on the request, and `after_request` on the model
        #
        #   @param steps [Array<Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline::Step>]

        # `before_request` runs the steps on the request, and `after_request` on the
        # model's response.
        #
        # @see Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline#hook
        module Hook
          extend Telnyx::Internal::Type::Enum

          BEFORE_REQUEST = :before_request
          AFTER_REQUEST = :after_request

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Step < Telnyx::Internal::Type::BaseModel
          # @!attribute guardrail
          #   A guardrail on the instance, by name.
          #
          #   @return [String]
          required :guardrail, String

          # @!attribute message
          #   The response that replaces the model's when an outcome is `respond`. Required
          #   with `respond`.
          #
          #   @return [String, nil]
          optional :message, String, nil?: true

          # @!attribute on_error
          #   What happens when the guardrail errors. Left out, the same as `on_fail`.
          #
          #   @return [Symbol, Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline::Step::OnError, nil]
          optional :on_error,
                   enum: -> { Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnError },
                   nil?: true

          # @!attribute on_fail
          #   What happens when the guardrail fails.
          #
          #   @return [Symbol, Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline::Step::OnFail, nil]
          optional :on_fail, enum: -> { Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnFail }

          # @!attribute on_pass
          #   What happens when the guardrail passes. `next` goes on to the next step, `allow`
          #   allows the request, `block` blocks it, and `respond` answers with `message`.
          #
          #   @return [Symbol, Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline::Step::OnPass, nil]
          optional :on_pass, enum: -> { Telnyx::AgentGateways::AgentGatewayPolicyPipeline::Step::OnPass }

          # @!attribute pass_data
          #   `true` hands the step's modified request, such as masked text, to the next step.
          #
          #   @return [Boolean, nil]
          optional :pass_data, Telnyx::Internal::Type::Boolean

          # @!method initialize(guardrail:, message: nil, on_error: nil, on_fail: nil, on_pass: nil, pass_data: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline::Step} for more
          #   details.
          #
          #   One pipeline step: a guardrail, and what happens when it passes, fails, or
          #   errors.
          #
          #   @param guardrail [String] A guardrail on the instance, by name.
          #
          #   @param message [String, nil] The response that replaces the model's when an outcome is `respond`. Required wi
          #
          #   @param on_error [Symbol, Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline::Step::OnError, nil] What happens when the guardrail errors. Left out, the same as `on_fail`.
          #
          #   @param on_fail [Symbol, Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline::Step::OnFail] What happens when the guardrail fails.
          #
          #   @param on_pass [Symbol, Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline::Step::OnPass] What happens when the guardrail passes. `next` goes on to the next step, `allow`
          #
          #   @param pass_data [Boolean] `true` hands the step's modified request, such as masked text, to the next step.

          # What happens when the guardrail errors. Left out, the same as `on_fail`.
          #
          # @see Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline::Step#on_error
          module OnError
            extend Telnyx::Internal::Type::Enum

            NEXT = :next
            ALLOW = :allow
            BLOCK = :block
            RESPOND = :respond

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # What happens when the guardrail fails.
          #
          # @see Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline::Step#on_fail
          module OnFail
            extend Telnyx::Internal::Type::Enum

            NEXT = :next
            ALLOW = :allow
            BLOCK = :block
            RESPOND = :respond

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # What happens when the guardrail passes. `next` goes on to the next step, `allow`
          # allows the request, `block` blocks it, and `respond` answers with `message`.
          #
          # @see Telnyx::Models::AgentGateways::AgentGatewayPolicyPipeline::Step#on_pass
          module OnPass
            extend Telnyx::Internal::Type::Enum

            NEXT = :next
            ALLOW = :allow
            BLOCK = :block
            RESPOND = :respond

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end

    AgentGatewayPolicyPipeline = AgentGateways::AgentGatewayPolicyPipeline
  end
end
