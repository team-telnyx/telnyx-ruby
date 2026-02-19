# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::RoomsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @telnyx.rooms.create

    assert_pattern do
      response => Telnyx::Models::RoomCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Room | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.rooms.retrieve("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => Telnyx::Models::RoomRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Room | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.rooms.update("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => Telnyx::Models::RoomUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Room | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.rooms.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Room
    end

    assert_pattern do
      row => {
        id: String | nil,
        active_session_id: String | nil,
        created_at: Time | nil,
        enable_recording: Telnyx::Internal::Type::Boolean | nil,
        max_participants: Integer | nil,
        record_type: String | nil,
        sessions: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::RoomSession]) | nil,
        unique_name: String | nil,
        updated_at: Time | nil,
        webhook_event_failover_url: String | nil,
        webhook_event_url: String | nil,
        webhook_timeout_secs: Integer | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.rooms.delete("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => nil
    end
  end
end
