# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AgentGateways::McpServersTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.mcp_servers.create(
        "32ce035d-3165-4031-b1a7-a7c0c259590a",
        name: "orders",
        url: "http://10.40.3.7:9000/mcp"
      )

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayMcpServerResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayMcpServer
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.mcp_servers.update(
        "88d5a97b-4080-4855-8bac-a39811b1dc24",
        instance_id: "32ce035d-3165-4031-b1a7-a7c0c259590a"
      )

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayMcpServerResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayMcpServer
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.agent_gateways.mcp_servers.list("32ce035d-3165-4031-b1a7-a7c0c259590a")

    assert_pattern do
      response => Telnyx::Models::AgentGateways::McpServerListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AgentGateways::AgentGatewayMcpServer])
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.mcp_servers.delete(
        "88d5a97b-4080-4855-8bac-a39811b1dc24",
        instance_id: "32ce035d-3165-4031-b1a7-a7c0c259590a"
      )

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayMcpServerResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayMcpServer
      }
    end
  end
end
