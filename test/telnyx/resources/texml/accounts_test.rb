# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Texml::AccountsTest < Telnyx::Test::ResourceTest
  def test_retrieve_recordings_json
    skip("Mock server tests are disabled")

    response = @telnyx.texml.accounts.retrieve_recordings_json("account_sid")

    assert_pattern do
      response => Telnyx::Models::Texml::AccountRetrieveRecordingsJsonResponse
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

  def test_retrieve_transcriptions_json
    skip("Mock server tests are disabled")

    response = @telnyx.texml.accounts.retrieve_transcriptions_json("account_sid")

    assert_pattern do
      response => Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse
    end

    assert_pattern do
      response => {
        end_: Integer | nil,
        first_page_uri: String | nil,
        next_page_uri: String | nil,
        page: Integer | nil,
        page_size: Integer | nil,
        previous_page_uri: String | nil,
        start: Integer | nil,
        transcriptions: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription]) | nil,
        uri: String | nil
      }
    end
  end
end
