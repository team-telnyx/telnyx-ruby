# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::CallsTest < Telnyx::Test::ResourceTest
  def test_dial_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.calls.dial(
        connection_id: "7267xxxxxxxxxxxxxx",
        from: "+18005550101",
        to: "+18005550100 or sip:username@sip.telnyx.com"
      )

    assert_pattern do
      response => Telnyx::Models::CallDialResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::CallDialResponse::Data | nil
      }
    end
  end

  def test_retrieve_status
    skip("Mock server tests are disabled")

    response = @telnyx.calls.retrieve_status("call_control_id")

    assert_pattern do
      response => Telnyx::Models::CallRetrieveStatusResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::CallRetrieveStatusResponse::Data | nil
      }
    end
  end
end
