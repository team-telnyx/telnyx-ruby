# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::RoomRecordingsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.room_recordings.retrieve("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => Telnyx::Models::RoomRecordingRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::RoomRecordingRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.room_recordings.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::RoomRecordingListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        codec: String | nil,
        completed_at: Time | nil,
        created_at: Time | nil,
        download_url: String | nil,
        duration_secs: Integer | nil,
        ended_at: Time | nil,
        participant_id: String | nil,
        record_type: String | nil,
        room_id: String | nil,
        session_id: String | nil,
        size_mb: Float | nil,
        started_at: Time | nil,
        status: Telnyx::Models::RoomRecordingListResponse::Status | nil,
        type: Telnyx::Models::RoomRecordingListResponse::Type | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.room_recordings.delete("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => nil
    end
  end

  def test_delete_bulk
    skip("Mock server tests are disabled")

    response = @telnyx.room_recordings.delete_bulk

    assert_pattern do
      response => Telnyx::Models::RoomRecordingDeleteBulkResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::RoomRecordingDeleteBulkResponse::Data | nil
      }
    end
  end
end
