# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::Texml::Accounts::Recordings::JsonTest < Telnyx::Test::ResourceTest
  def test_delete_recording_sid_json_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.texml.accounts.recordings.json.delete_recording_sid_json(
        "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
        account_sid: "account_sid"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_recording_sid_json_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.texml.accounts.recordings.json.retrieve_recording_sid_json(
        "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
        account_sid: "account_sid"
      )

    assert_pattern do
      response => Telnyx::Texml::TexmlGetCallRecordingResponseBody
    end

    assert_pattern do
      response => {
        account_sid: String | nil,
        call_sid: String | nil,
        channels: Telnyx::Texml::TexmlGetCallRecordingResponseBody::Channels | nil,
        conference_sid: String | nil,
        date_created: Time | nil,
        date_updated: Time | nil,
        duration: String | nil,
        error_code: String | nil,
        media_url: String | nil,
        sid: String | nil,
        source: Telnyx::Texml::TexmlGetCallRecordingResponseBody::Source | nil,
        start_time: Time | nil,
        status: Telnyx::Texml::TexmlGetCallRecordingResponseBody::Status | nil,
        subresources_uris: Telnyx::Texml::TexmlRecordingSubresourcesUris | nil,
        uri: String | nil
      }
    end
  end
end
