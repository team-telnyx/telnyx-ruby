# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Texml::CallsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.texml.calls.create("1234567890", from: "+13120001234", to: "+13121230000")

    assert_pattern do
      response => Telnyx::Models::Texml::CallCreateResponse
    end

    assert_pattern do
      response => {
        call_sid: String,
        from: String,
        status: Telnyx::Models::Texml::CallCreateResponse::Status,
        to: String
      }
    end
  end
end
