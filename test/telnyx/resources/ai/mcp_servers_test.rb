# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AI::McpServersTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.mcp_servers.create(name: "name", type: "type", url: "url")

    assert_pattern do
      response => Telnyx::Models::AI::McpServerCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        name: String,
        type: String,
        url: String,
        allowed_tools: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        api_key_ref: String | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.ai.mcp_servers.retrieve("mcp_server_id")

    assert_pattern do
      response => Telnyx::Models::AI::McpServerRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        name: String,
        type: String,
        url: String,
        allowed_tools: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        api_key_ref: String | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.ai.mcp_servers.update("mcp_server_id")

    assert_pattern do
      response => Telnyx::Models::AI::McpServerUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        name: String,
        type: String,
        url: String,
        allowed_tools: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        api_key_ref: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.ai.mcp_servers.list

    assert_pattern do
      response => ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::McpServerListResponseItem])
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.ai.mcp_servers.delete("mcp_server_id")

    assert_pattern do
      response => nil
    end
  end
end
