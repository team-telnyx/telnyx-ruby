# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::RoomParticipantsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.room_participants.retrieve("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => Telnyx::Models::RoomParticipantRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::RoomParticipant | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.room_participants.list

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::RoomParticipant
    end

    assert_pattern do
      row => {
        id: String | nil,
        context: String | nil,
        joined_at: Time | nil,
        left_at: Time | nil,
        record_type: String | nil,
        session_id: String | nil,
        updated_at: Time | nil
      }
    end
  end
end
