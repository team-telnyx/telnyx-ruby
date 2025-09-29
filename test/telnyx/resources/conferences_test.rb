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
      response => Telnyx::Models::ConferenceListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Conference]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_list_participants
    skip("Prism tests are disabled")

    response = @telnyx.conferences.list_participants("conference_id")

    assert_pattern do
      response => Telnyx::Models::ConferenceListParticipantsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ConferenceListParticipantsResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
