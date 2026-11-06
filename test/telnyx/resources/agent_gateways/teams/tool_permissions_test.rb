# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AgentGateways::Teams::ToolPermissionsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.teams.tool_permissions.create(
        "d7b21324-a2bf-406c-ba49-c6ec4d23d476",
        instance_id: "32ce035d-3165-4031-b1a7-a7c0c259590a",
        servers: [{id: "88d5a97b-4080-4855-8bac-a39811b1dc24"}]
      )

    assert_pattern do
      response => Telnyx::AgentGateways::Keys::AgentGatewayToolPermissionsResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::Keys::AgentGatewayToolPermissions
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.teams.tool_permissions.list(
        "d7b21324-a2bf-406c-ba49-c6ec4d23d476",
        instance_id: "32ce035d-3165-4031-b1a7-a7c0c259590a"
      )

    assert_pattern do
      response => Telnyx::AgentGateways::Keys::AgentGatewayToolPermissionsResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::Keys::AgentGatewayToolPermissions
      }
    end
  end
end
