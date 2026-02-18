# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Texml::Accounts::ConferencesTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @telnyx.texml.accounts.conferences.retrieve("conference_sid", account_sid: "account_sid")

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse
    end

    assert_pattern do
      response => {
        account_sid: String | nil,
        api_version: String | nil,
        call_sid_ending_conference: String | nil,
        date_created: String | nil,
        date_updated: String | nil,
        friendly_name: String | nil,
        reason_conference_ended: Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::ReasonConferenceEnded | nil,
        region: String | nil,
        sid: String | nil,
        status: Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::Status | nil,
        subresource_uris: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        uri: String | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @telnyx.texml.accounts.conferences.update("conference_sid", account_sid: "account_sid")

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::ConferenceUpdateResponse
    end

    assert_pattern do
      response => {
        account_sid: String | nil,
        api_version: String | nil,
        call_sid_ending_conference: String | nil,
        date_created: String | nil,
        date_updated: String | nil,
        friendly_name: String | nil,
        reason_conference_ended: Telnyx::Models::Texml::Accounts::ConferenceUpdateResponse::ReasonConferenceEnded | nil,
        region: String | nil,
        sid: String | nil,
        status: Telnyx::Models::Texml::Accounts::ConferenceUpdateResponse::Status | nil,
        subresource_uris: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        uri: String | nil
      }
    end
  end

  def test_retrieve_conferences
    skip("Prism tests are disabled")

    response = @telnyx.texml.accounts.conferences.retrieve_conferences("account_sid")

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesResponse
    end

    assert_pattern do
      response => {
        conferences: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesResponse::Conference]) | nil,
        end_: Integer | nil,
        first_page_uri: String | nil,
        next_page_uri: String | nil,
        page: Integer | nil,
        page_size: Integer | nil,
        start: Integer | nil,
        uri: String | nil
      }
    end
  end

  def test_retrieve_recordings_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.texml.accounts.conferences.retrieve_recordings("conference_sid", account_sid: "account_sid")

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse
    end

    assert_pattern do
      response => {
        end_: Integer | nil,
        first_page_uri: String | nil,
        next_page_uri: String | nil,
        page: Integer | nil,
        page_size: Integer | nil,
        participants: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]) | nil,
        recordings: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording]) | nil,
        start: Integer | nil,
        uri: String | nil
      }
    end
  end

  def test_retrieve_recordings_json_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.texml.accounts.conferences.retrieve_recordings_json(
        "conference_sid",
        account_sid: "account_sid"
      )

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsJsonResponse
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
