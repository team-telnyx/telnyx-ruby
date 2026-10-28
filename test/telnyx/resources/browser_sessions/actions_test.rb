# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::BrowserSessions::ActionsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.browser_sessions.actions.create("id", body: {type: :navigate, url: "https://example.com/"})

    assert_pattern do
      response => Telnyx::Models::BrowserSessions::ActionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::BrowserSessions::ActionResponse | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.browser_sessions.actions.retrieve("actionId", id: "id")

    assert_pattern do
      response => Telnyx::Models::BrowserSessions::ActionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::BrowserSessions::ActionResponse | nil
      }
    end
  end
end
