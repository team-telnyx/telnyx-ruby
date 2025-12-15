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

  def test_whatsapp_required_params
    skip("Prism tests are disabled")

    response = @telnyx.messsages.whatsapp(from: "+13125551234", to: "+13125551234", whatsapp_message: {})

    assert_pattern do
      response => Telnyx::Models::MesssageWhatsappResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::MesssageWhatsappResponse::Data | nil
      }
    end
  end
end
