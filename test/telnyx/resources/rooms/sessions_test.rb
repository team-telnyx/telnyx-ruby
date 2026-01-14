# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Rooms::SessionsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.rooms.sessions.retrieve("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => Telnyx::Models::Rooms::SessionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::RoomSession | nil
      }
    end
  end

  def test_list_0
    skip("Prism tests are disabled")

    response = @telnyx.rooms.sessions.list_0

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::RoomSession
    end

    assert_pattern do
      row => {
        id: String | nil,
        active: Telnyx::Internal::Type::Boolean | nil,
        created_at: Time | nil,
        ended_at: Time | nil,
        participants: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::RoomParticipant]) | nil,
        record_type: String | nil,
        room_id: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list_1
    skip("Prism tests are disabled")

    response = @telnyx.rooms.sessions.list_1("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::RoomSession
    end

    assert_pattern do
      row => {
        id: String | nil,
        active: Telnyx::Internal::Type::Boolean | nil,
        created_at: Time | nil,
        ended_at: Time | nil,
        participants: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::RoomParticipant]) | nil,
        record_type: String | nil,
        room_id: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_retrieve_participants
    skip("Prism tests are disabled")

    response = @telnyx.rooms.sessions.retrieve_participants("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
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
