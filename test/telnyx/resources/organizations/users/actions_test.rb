# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Organizations::Users::ActionsTest < Telnyx::Test::ResourceTest
  def test_remove
    skip("Prism tests are disabled")

    response = @telnyx.organizations.users.actions.remove("id")

    assert_pattern do
      response => Telnyx::Models::Organizations::Users::ActionRemoveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Organizations::Users::ActionRemoveResponse::Data | nil
      }
    end
  end
end
