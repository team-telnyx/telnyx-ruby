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
end
