# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::OperatorConnect::ActionsTest < Telnyx::Test::ResourceTest
  def test_refresh
    skip("Mock server tests are disabled")

    response = @telnyx.operator_connect.actions.refresh

    assert_pattern do
      response => Telnyx::Models::OperatorConnect::ActionRefreshResponse
    end

    assert_pattern do
      response => {
        message: String | nil,
        success: Telnyx::Internal::Type::Boolean | nil
      }
    end
  end
end
