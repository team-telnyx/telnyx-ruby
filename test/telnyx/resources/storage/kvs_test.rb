# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Storage::KvsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.storage.kvs.create(name: "my-cache")

    assert_pattern do
      response => Telnyx::Storage::KvNamespaceResponseWrapper
    end

    assert_pattern do
      response => {
        data: Telnyx::Storage::KvNamespace | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.storage.kvs.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Storage::KvNamespaceResponseWrapper
    end

    assert_pattern do
      response => {
        data: Telnyx::Storage::KvNamespace | nil
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
      row => Telnyx::Storage::KvNamespace
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: Time | nil,
        name: String | nil,
        record_type: String | nil,
        status: Telnyx::Storage::KvNamespace::Status | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.storage.kvs.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Storage::KvNamespaceResponseWrapper
    end

    assert_pattern do
      response => {
        data: Telnyx::Storage::KvNamespace | nil
      }
    end
  end
end
