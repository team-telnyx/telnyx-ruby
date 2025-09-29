# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::Texml::Accounts::Calls::StreamsTest < Telnyx::Test::ResourceTest
  def test_streaming_sid_json_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.texml.accounts.calls.streams.streaming_sid_json(
        "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
        account_sid: "account_sid",
        call_sid: "call_sid"
      )

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::Calls::StreamStreamingSidJsonResponse
    end

    assert_pattern do
      response => {
        account_sid: String | nil,
        call_sid: String | nil,
        date_updated: Time | nil,
        sid: String | nil,
        status: Telnyx::Models::Texml::Accounts::Calls::StreamStreamingSidJsonResponse::Status | nil,
        uri: String | nil
      }
    end
  end
end
