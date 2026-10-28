# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Tunnels::ActionsTest < Telnyx::Test::ResourceTest
  def test_rotate_token
    skip("Mock server tests are disabled")

    response = @telnyx.tunnels.actions.rotate_token("62d438d2-8a51-4c5e-9d0c-1f6b2a7e4c39")

    assert_pattern do
      response => Telnyx::Models::Tunnels::ActionRotateTokenResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TunnelWithToken | nil
      }
    end
  end
end
