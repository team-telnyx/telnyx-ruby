# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::ConferencesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.conferences.create(
        call_control_id: "v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg",
        name: "Business"
      )

    assert_pattern do
      response => Telnyx::Models::ConferenceCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conference | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.conferences.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::ConferenceRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conference | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.conferences.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Conference
    end

    assert_pattern do
      row => {
        id: String,
        created_at: String,
        expires_at: String,
        name: String,
        record_type: Telnyx::Conference::RecordType,
        connection_id: String | nil,
        end_reason: Telnyx::Conference::EndReason | nil,
        ended_by: Telnyx::Conference::EndedBy | nil,
        region: String | nil,
        status: Telnyx::Conference::Status | nil,
        updated_at: String | nil
      }
    end
  end

  def test_list_participants
    skip("Prism tests are disabled")

    response = @telnyx.conferences.list_participants("conference_id")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::ConferenceListParticipantsResponse
    end

    assert_pattern do
      row => {
        id: String,
        call_control_id: String,
        call_leg_id: String,
        conference: Telnyx::Models::ConferenceListParticipantsResponse::Conference,
        created_at: String,
        end_conference_on_exit: Telnyx::Internal::Type::Boolean,
        muted: Telnyx::Internal::Type::Boolean,
        on_hold: Telnyx::Internal::Type::Boolean,
        record_type: Telnyx::Models::ConferenceListParticipantsResponse::RecordType,
        soft_end_conference_on_exit: Telnyx::Internal::Type::Boolean,
        status: Telnyx::Models::ConferenceListParticipantsResponse::Status,
        updated_at: String,
        whisper_call_control_ids: ^(Telnyx::Internal::Type::ArrayOf[String])
      }
    end
  end

  def test_retrieve_participant_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.conferences.retrieve_participant("participant_id", id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::ConferenceRetrieveParticipantResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::ConferenceRetrieveParticipantResponse::Data | nil
      }
    end
  end

  def test_update_participant_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.conferences.update_participant("participant_id", id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::ConferenceUpdateParticipantResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::ConferenceUpdateParticipantResponse::Data | nil
      }
    end
  end
end
