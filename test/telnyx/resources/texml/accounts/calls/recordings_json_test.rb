# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::Texml::Accounts::Calls::RecordingsJsonTest < Telnyx::Test::ResourceTest
  def test_recordings_json_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.texml.accounts.calls.recordings_json.recordings_json("call_sid", account_sid: "account_sid")

    assert_pattern do
      response => Telnyx::Texml::Accounts::Calls::TexmlCreateCallRecordingResponseBody
    end

    assert_pattern do
      response => {
        account_sid: String | nil,
        call_sid: String | nil,
        channels: Telnyx::Texml::Accounts::Calls::TwimlRecordingChannels | nil,
        conference_sid: String | nil,
        date_created: Time | nil,
        date_updated: Time | nil,
        duration: String | nil,
        error_code: String | nil,
        price: String | nil,
        price_unit: String | nil,
        sid: String | nil,
        source: Telnyx::Texml::Accounts::Calls::RecordingSource | nil,
        start_time: Time | nil,
        track: Telnyx::Texml::Accounts::Calls::TexmlCreateCallRecordingResponseBody::Track | nil,
        uri: String | nil
      }
    end
  end

  def test_retrieve_recordings_json_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.texml.accounts.calls.recordings_json.retrieve_recordings_json(
        "call_sid",
        account_sid: "account_sid"
      )

    assert_pattern do
      response => Telnyx::Texml::Accounts::Calls::TexmlGetCallRecordingsResponseBody
    end

    assert_pattern do
      response => {
        end_: Integer | nil,
        first_page_uri: String | nil,
        next_page_uri: String | nil,
        page: Integer | nil,
        page_size: Integer | nil,
        previous_page_uri: String | nil,
        recordings: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Texml::TexmlGetCallRecordingResponseBody]) | nil,
        start: Integer | nil,
        uri: String | nil
      }
    end
  end
end
