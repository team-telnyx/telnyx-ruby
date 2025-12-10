# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::RoomRecordingsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

    response = @telnyx.room_recordings.list

    assert_pattern do
      response => Telnyx::Models::RoomRecordingListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::RoomRecordingListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.room_recordings.delete("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => nil
    end
  end

  def test_delete_bulk
    skip("Prism tests are disabled")

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
