# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Assistants::ToolsTest < Telnyx::Test::ResourceTest
  def test_test__required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.tools.test_("tool_id", assistant_id: "assistant_id")

    assert_pattern do
      response => Telnyx::Models::AI::Assistants::ToolTestResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::Assistants::ToolTestResponse::Data
      }
    end
  end
end
