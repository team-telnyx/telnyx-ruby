# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::RoomCompositionsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @telnyx.room_compositions.create

    assert_pattern do
      response => Telnyx::Models::RoomCompositionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::RoomComposition | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.room_compositions.retrieve("5219b3af-87c6-4c08-9b58-5a533d893e21")

    assert_pattern do
      response => Telnyx::Models::RoomCompositionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::RoomComposition | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.room_compositions.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::RoomComposition
    end

    assert_pattern do
      row => {
        id: String | nil,
        completed_at: Time | nil,
        created_at: Time | nil,
        download_url: String | nil,
        duration_secs: Integer | nil,
        ended_at: Time | nil,
        file_format: Telnyx::RoomComposition::Format | nil,
        record_type: String | nil,
        room_id: String | nil,
        session_id: String | nil,
        size_mb: Float | nil,
        started_at: Time | nil,
        status: Telnyx::RoomComposition::Status | nil,
        updated_at: Time | nil,
        user_id: String | nil,
        video_layout: ^(Telnyx::Internal::Type::HashOf[Telnyx::VideoRegion]) | nil,
        webhook_event_failover_url: String | nil,
        webhook_event_url: String | nil,
        webhook_timeout_secs: Integer | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.room_compositions.delete("5219b3af-87c6-4c08-9b58-5a533d893e21")

    assert_pattern do
      response => nil
    end
  end
end
