# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MesssagesTest < Telnyx::Test::ResourceTest
  def test_rcs_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messsages.rcs(
        agent_id: "Agent007",
        agent_message: {},
        messaging_profile_id: "messaging_profile_id",
        to: "+13125551234"
      )

    assert_pattern do
      response => Telnyx::Models::MesssageRcsResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::MesssageRcsResponse::Data | nil
      }
    end
  end
end
