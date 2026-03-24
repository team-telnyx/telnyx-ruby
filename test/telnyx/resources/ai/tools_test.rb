# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AI::ToolsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tools.create(display_name: "display_name", type: "type")

    assert_pattern do
      response => Telnyx::Models::AI::ToolCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        tool_definition: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]),
        type: String,
        created_at: String | nil,
        display_name: String | nil,
        timeout_ms: Integer | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tools.retrieve("tool_id")

    assert_pattern do
      response => Telnyx::Models::AI::ToolRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        tool_definition: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]),
        type: String,
        created_at: String | nil,
        display_name: String | nil,
        timeout_ms: Integer | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tools.update("tool_id")

    assert_pattern do
      response => Telnyx::Models::AI::ToolUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        tool_definition: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]),
        type: String,
        created_at: String | nil,
        display_name: String | nil,
        timeout_ms: Integer | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tools.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::AI::ToolListResponse
    end

    assert_pattern do
      row => {
        id: String,
        tool_definition: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]),
        type: String,
        created_at: String | nil,
        display_name: String | nil,
        timeout_ms: Integer | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tools.delete("tool_id")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end
end
