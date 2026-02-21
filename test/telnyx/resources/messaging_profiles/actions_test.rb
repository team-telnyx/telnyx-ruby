# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::MessagingProfiles::ActionsTest < Telnyx::Test::ResourceTest
  def test_regenerate_secret
    skip("Mock server tests are disabled")

    response = @telnyx.messaging_profiles.actions.regenerate_secret("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::MessagingProfiles::ActionRegenerateSecretResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MessagingProfile | nil
      }
    end
  end
end
