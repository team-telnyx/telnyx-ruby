# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Storage::CloudfsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.storage.cloudfs.create(
        name: "agent-fs",
        region: :"us-east-1",
        idempotency_key: "Idempotency-Key"
      )

    assert_pattern do
      response => Telnyx::Storage::CloudfsFilesystemResponseWrapper
    end

    assert_pattern do
      response => {
        data: Telnyx::Storage::CloudfsFilesystem | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.storage.cloudfs.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Storage::CloudfsFilesystemDetailResponseWrapper
    end

    assert_pattern do
      response => {
        data: Telnyx::Storage::CloudfsFilesystemDetail | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.storage.cloudfs.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Storage::CloudfsFilesystemDetailResponseWrapper
    end

    assert_pattern do
      response => {
        data: Telnyx::Storage::CloudfsFilesystemDetail | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.storage.cloudfs.list

    assert_pattern do
      response => Telnyx::Internal::CloudfsCursorPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Storage::CloudfListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: Time | nil,
        name: String | nil,
        record_type: String | nil,
        region: String | nil,
        s3_bucket: String | nil,
        s3_endpoint: String | nil,
        status: Telnyx::Storage::CloudfsFilesystemStatus | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.storage.cloudfs.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Storage::CloudfsFilesystemDetailResponseWrapper
    end

    assert_pattern do
      response => {
        data: Telnyx::Storage::CloudfsFilesystemDetail | nil
      }
    end
  end
end
