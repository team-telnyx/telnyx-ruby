# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Missions::McpServersTest < Telnyx::Test::ResourceTest
  def test_create_mcp_server
    skip("Prism tests are disabled")

    response = @telnyx.ai.missions.mcp_servers.create_mcp_server("mission_id")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end

  def test_delete_mcp_server_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.missions.mcp_servers.delete_mcp_server("mcp_server_id", mission_id: "mission_id")

    assert_pattern do
      response => nil
    end
  end

  def test_get_mcp_server_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.missions.mcp_servers.get_mcp_server("mcp_server_id", mission_id: "mission_id")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end

  def test_list_mcp_servers
    skip("Prism tests are disabled")

    response = @telnyx.ai.missions.mcp_servers.list_mcp_servers("mission_id")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end

  def test_update_mcp_server_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.missions.mcp_servers.update_mcp_server("mcp_server_id", mission_id: "mission_id")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end
end
