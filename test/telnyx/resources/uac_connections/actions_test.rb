# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::UacConnections::ActionsTest < Telnyx::Test::ResourceTest
  def test_check_registration_status
    skip("Mock server tests are disabled")

    response = @telnyx.uac_connections.actions.check_registration_status("id")

    assert_pattern do
      response => Telnyx::Models::UacConnections::ActionCheckRegistrationStatusResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::UacConnections::ActionCheckRegistrationStatusResponse::Data | nil
      }
    end
  end
end
