# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AgentGateways::GuardrailsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.guardrails.create(
        "32ce035d-3165-4031-b1a7-a7c0c259590a",
        modes: [:before_request],
        name: "mask-pii",
        type: :content_filter
      )

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayGuardrailResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayGuardrail
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.guardrails.update(
        "9645e556-6532-4341-8cab-21b58cdef529",
        instance_id: "32ce035d-3165-4031-b1a7-a7c0c259590a"
      )

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayGuardrailResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayGuardrail
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.agent_gateways.guardrails.list("32ce035d-3165-4031-b1a7-a7c0c259590a")

    assert_pattern do
      response => Telnyx::Models::AgentGateways::GuardrailListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AgentGateways::AgentGatewayGuardrail])
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.guardrails.delete(
        "9645e556-6532-4341-8cab-21b58cdef529",
        instance_id: "32ce035d-3165-4031-b1a7-a7c0c259590a"
      )

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayGuardrailResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayGuardrail
      }
    end
  end
end
