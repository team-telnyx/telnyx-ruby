# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::RecordingsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.recordings.retrieve("recording_id")

    assert_pattern do
      response => Telnyx::Models::RecordingRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::RecordingResponseData | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.recordings.list

    assert_pattern do
      response => Telnyx::Models::RecordingListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::RecordingResponseData]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.recordings.delete("recording_id")

    assert_pattern do
      response => Telnyx::Models::RecordingDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::RecordingResponseData | nil
      }
    end
  end
end
