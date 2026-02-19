# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::CredentialConnections::ActionsTest < Telnyx::Test::ResourceTest
  def test_check_registration_status
    skip("Mock server tests are disabled")

    response = @telnyx.credential_connections.actions.check_registration_status("id")

    assert_pattern do
      response => Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data | nil
      }
    end
  end
end
