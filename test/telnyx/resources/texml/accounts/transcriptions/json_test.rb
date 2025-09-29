# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::Texml::Accounts::Transcriptions::JsonTest < Telnyx::Test::ResourceTest
  def test_delete_recording_transcription_sid_json_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.texml.accounts.transcriptions.json.delete_recording_transcription_sid_json(
        "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
        account_sid: "account_sid"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_recording_transcription_sid_json_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.texml.accounts.transcriptions.json.retrieve_recording_transcription_sid_json(
        "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
        account_sid: "account_sid"
      )

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse
    end

    assert_pattern do
      response => {
        account_sid: String | nil,
        api_version: String | nil,
        call_sid: String | nil,
        date_created: Time | nil,
        date_updated: Time | nil,
        duration: String | nil,
        recording_sid: String | nil,
        sid: String | nil,
        status: Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse::Status | nil,
        transcription_text: String | nil,
        uri: String | nil
      }
    end
  end
end
