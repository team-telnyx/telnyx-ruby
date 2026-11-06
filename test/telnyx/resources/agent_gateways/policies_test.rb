# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AgentGateways::PoliciesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.policies.create("32ce035d-3165-4031-b1a7-a7c0c259590a", name: "baseline")

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayPolicyResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayPolicy
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.policies.retrieve("strict", instance_id: "32ce035d-3165-4031-b1a7-a7c0c259590a")

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayPolicyResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayPolicy
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.policies.update("strict", instance_id: "32ce035d-3165-4031-b1a7-a7c0c259590a")

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayPolicyResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayPolicy
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.agent_gateways.policies.list("32ce035d-3165-4031-b1a7-a7c0c259590a")

    assert_pattern do
      response => Telnyx::Models::AgentGateways::PolicyListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AgentGateways::AgentGatewayPolicy])
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.policies.delete("strict", instance_id: "32ce035d-3165-4031-b1a7-a7c0c259590a")

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayPolicyResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayPolicy
      }
    end
  end
end
