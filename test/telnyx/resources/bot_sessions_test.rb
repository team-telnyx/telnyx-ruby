# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::BotSessionsTest < Telnyx::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.bot_sessions.list(
        email: "agent-owner@example.com",
        portal_redirect_token: "01890a7e-e2f7-7c3d-8dbb-9a2c5f3d1e0b"
      )

    assert_pattern do
      response => Telnyx::Models::BotSessionListResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::BotSessionListResponse::Data
      }
    end
  end
end
