# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      class AgentGatewayPolicyStep < Telnyx::Internal::Type::BaseModel
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
        #   @return [Symbol, Telnyx::Models::AgentGateways::AgentGatewayPolicyStep::OnError, nil]
        optional :on_error, enum: -> { Telnyx::AgentGateways::AgentGatewayPolicyStep::OnError }, nil?: true

        # @!attribute on_fail
        #   What happens when the guardrail fails.
        #
        #   @return [Symbol, Telnyx::Models::AgentGateways::AgentGatewayPolicyStep::OnFail, nil]
        optional :on_fail, enum: -> { Telnyx::AgentGateways::AgentGatewayPolicyStep::OnFail }

        # @!attribute on_pass
        #   What happens when the guardrail passes. `next` goes on to the next step, `allow`
        #   allows the request, `block` blocks it, and `respond` answers with `message`.
        #
        #   @return [Symbol, Telnyx::Models::AgentGateways::AgentGatewayPolicyStep::OnPass, nil]
        optional :on_pass, enum: -> { Telnyx::AgentGateways::AgentGatewayPolicyStep::OnPass }

        # @!attribute pass_data
        #   `true` hands the step's modified request, such as masked text, to the next step.
        #
        #   @return [Boolean, nil]
        optional :pass_data, Telnyx::Internal::Type::Boolean

        # @!method initialize(guardrail:, message: nil, on_error: nil, on_fail: nil, on_pass: nil, pass_data: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::AgentGatewayPolicyStep} for more details.
        #
        #   One pipeline step: a guardrail, and what happens when it passes, fails, or
        #   errors.
        #
        #   @param guardrail [String] A guardrail on the instance, by name.
        #
        #   @param message [String, nil] The response that replaces the model's when an outcome is `respond`. Required wi
        #
        #   @param on_error [Symbol, Telnyx::Models::AgentGateways::AgentGatewayPolicyStep::OnError, nil] What happens when the guardrail errors. Left out, the same as `on_fail`.
        #
        #   @param on_fail [Symbol, Telnyx::Models::AgentGateways::AgentGatewayPolicyStep::OnFail] What happens when the guardrail fails.
        #
        #   @param on_pass [Symbol, Telnyx::Models::AgentGateways::AgentGatewayPolicyStep::OnPass] What happens when the guardrail passes. `next` goes on to the next step, `allow`
        #
        #   @param pass_data [Boolean] `true` hands the step's modified request, such as masked text, to the next step.

        # What happens when the guardrail errors. Left out, the same as `on_fail`.
        #
        # @see Telnyx::Models::AgentGateways::AgentGatewayPolicyStep#on_error
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
        # @see Telnyx::Models::AgentGateways::AgentGatewayPolicyStep#on_fail
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
        # @see Telnyx::Models::AgentGateways::AgentGatewayPolicyStep#on_pass
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

    AgentGatewayPolicyStep = AgentGateways::AgentGatewayPolicyStep
  end
end
