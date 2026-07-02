# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Storage::KvsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.storage.kvs.create(name: "my-cache")

    assert_pattern do
      response => Telnyx::Models::Storage::KvCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Storage::KvCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.storage.kvs.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Storage::KvRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Storage::KvRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.storage.kvs.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Storage::KvListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: Time | nil,
        name: String | nil,
        record_type: String | nil,
        status: Telnyx::Models::Storage::KvListResponse::Status | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.storage.kvs.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Storage::KvDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Storage::KvDeleteResponse::Data | nil
      }
    end
  end
end
