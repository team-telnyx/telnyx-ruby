# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Missions::ToolsTest < Telnyx::Test::ResourceTest
  def test_create_tool
    skip("Mock server tests are disabled")

    response = @telnyx.ai.missions.tools.create_tool("mission_id")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end

  def test_delete_tool_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.missions.tools.delete_tool("tool_id", mission_id: "mission_id")

    assert_pattern do
      response => nil
    end
  end

  def test_get_tool_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.missions.tools.get_tool("tool_id", mission_id: "mission_id")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end

  def test_list_tools
    skip("Mock server tests are disabled")

    response = @telnyx.ai.missions.tools.list_tools("mission_id")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end

  def test_update_tool_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.missions.tools.update_tool("tool_id", mission_id: "mission_id")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end
end
