# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::Texml::Accounts::Calls::SiprecTest < Telnyx::Test::ResourceTest
  def test_siprec_sid_json_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.texml.accounts.calls.siprec.siprec_sid_json(
        "siprec_sid",
        account_sid: "account_sid",
        call_sid: "call_sid"
      )

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonResponse
    end

    assert_pattern do
      response => {
        account_sid: String | nil,
        call_sid: String | nil,
        date_updated: String | nil,
        error_code: String | nil,
        sid: String | nil,
        status: Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonResponse::Status | nil,
        uri: String | nil
      }
    end
  end
end
