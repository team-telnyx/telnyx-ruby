# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Storage::Kvs::KeysTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.storage.kvs.keys.retrieve("key", id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => StringIO
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.storage.kvs.keys.update(
        "key",
        id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        body: StringIO.new("Example data")
      )

    assert_pattern do
      response => nil
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.storage.kvs.keys.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::CursorFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Storage::Kvs::KeyListResponse
    end

    assert_pattern do
      row => {
        key: String | nil,
        size_bytes: Integer | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.storage.kvs.keys.delete("key", id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
