# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::Texml::Accounts::Conferences::ParticipantsTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.texml.accounts.conferences.participants.retrieve(
        "call_sid_or_participant_label",
        account_sid: "account_sid",
        conference_sid: "conference_sid"
      )

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveResponse
    end

    assert_pattern do
      response => {
        account_sid: String | nil,
        api_version: String | nil,
        call_sid: String | nil,
        call_sid_legacy: String | nil,
        coaching: Telnyx::Internal::Type::Boolean | nil,
        coaching_call_sid: String | nil,
        coaching_call_sid_legacy: String | nil,
        date_created: String | nil,
        date_updated: String | nil,
        end_conference_on_exit: Telnyx::Internal::Type::Boolean | nil,
        hold: Telnyx::Internal::Type::Boolean | nil,
        muted: Telnyx::Internal::Type::Boolean | nil,
        status: Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveResponse::Status | nil,
        uri: String | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.texml.accounts.conferences.participants.update(
        "call_sid_or_participant_label",
        account_sid: "account_sid",
        conference_sid: "conference_sid"
      )

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::Conferences::ParticipantUpdateResponse
    end

    assert_pattern do
      response => {
        account_sid: String | nil,
        api_version: String | nil,
        call_sid: String | nil,
        call_sid_legacy: String | nil,
        coaching: Telnyx::Internal::Type::Boolean | nil,
        coaching_call_sid: String | nil,
        coaching_call_sid_legacy: String | nil,
        date_created: String | nil,
        date_updated: String | nil,
        end_conference_on_exit: Telnyx::Internal::Type::Boolean | nil,
        hold: Telnyx::Internal::Type::Boolean | nil,
        muted: Telnyx::Internal::Type::Boolean | nil,
        status: Telnyx::Models::Texml::Accounts::Conferences::ParticipantUpdateResponse::Status | nil,
        uri: String | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.texml.accounts.conferences.participants.delete(
        "call_sid_or_participant_label",
        account_sid: "account_sid",
        conference_sid: "conference_sid"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_participants_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.texml.accounts.conferences.participants.participants(
        "conference_sid",
        account_sid: "account_sid"
      )

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse
    end

    assert_pattern do
      response => {
        account_sid: String | nil,
        call_sid: String | nil,
        coaching: Telnyx::Internal::Type::Boolean | nil,
        coaching_call_sid: String | nil,
        end_conference_on_exit: Telnyx::Internal::Type::Boolean | nil,
        hold: Telnyx::Internal::Type::Boolean | nil,
        muted: Telnyx::Internal::Type::Boolean | nil,
        status: Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse::Status | nil,
        uri: String | nil
      }
    end
  end

  def test_retrieve_participants_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.texml.accounts.conferences.participants.retrieve_participants(
        "conference_sid",
        account_sid: "account_sid"
      )

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse
    end

    assert_pattern do
      response => {
        end_: Integer | nil,
        first_page_uri: String | nil,
        next_page_uri: String | nil,
        page: Integer | nil,
        page_size: Integer | nil,
        participants: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse::Participant]) | nil,
        start: Integer | nil,
        uri: String | nil
      }
    end
  end
end
