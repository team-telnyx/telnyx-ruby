# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::Texml::Accounts::Calls::RecordingsTest < Telnyx::Test::ResourceTest
  def test_recording_sid_json_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.texml.accounts.calls.recordings.recording_sid_json(
        "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
        account_sid: "account_sid",
        call_sid: "call_sid"
      )

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse
    end

    assert_pattern do
      response => {
        account_sid: String | nil,
        call_sid: String | nil,
        channels: Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse::Channels | nil,
        conference_sid: String | nil,
        date_created: Time | nil,
        date_updated: Time | nil,
        duration: String | nil,
        error_code: String | nil,
        price: String | nil,
        price_unit: String | nil,
        sid: String | nil,
        source: Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse::Source | nil,
        start_time: Time | nil,
        track: Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse::Track | nil,
        uri: String | nil
      }
    end
  end
end
