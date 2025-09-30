# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Texml::CallsTest < Telnyx::Test::ResourceTest
  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.texml.calls.update("call_sid")

    assert_pattern do
      response => Telnyx::Models::Texml::CallUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Texml::CallUpdateResponse::Data | nil
      }
    end
  end

  def test_initiate_required_params
    skip("Prism tests are disabled")

    response = @telnyx.texml.calls.initiate("application_id", from: "+13120001234", to: "+13121230000")

    assert_pattern do
      response => Telnyx::Models::Texml::CallInitiateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Texml::CallInitiateResponse::Data | nil
      }
    end
  end
end
