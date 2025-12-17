# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Messages::RcsTest < Telnyx::Test::ResourceTest
  def test_generate_deeplink
    skip("Prism tests are disabled")

    response = @telnyx.messages.rcs.generate_deeplink("agent_id")

    assert_pattern do
      response => Telnyx::Models::Messages::RcGenerateDeeplinkResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Messages::RcGenerateDeeplinkResponse::Data
      }
    end
  end

  def test_send__required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messages.rcs.send_(
        agent_id: "Agent007",
        agent_message: {},
        messaging_profile_id: "messaging_profile_id",
        to: "+13125551234"
      )

    assert_pattern do
      response => Telnyx::Models::Messages::RcSendResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Messages::RcSendResponse::Data | nil
      }
    end
  end
end
