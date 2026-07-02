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

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.storage.kvs.keys.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Storage::Kvs::KeyListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Storage::Kvs::KeyListResponse::Data]) | nil,
        meta: Telnyx::Models::Storage::Kvs::KeyListResponse::Meta | nil,
        record_type: String | nil
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

  def test_set_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.storage.kvs.keys.set(
        "key",
        id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        body: StringIO.new("Example data")
      )

    assert_pattern do
      response => nil
    end
  end
end
