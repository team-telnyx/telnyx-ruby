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
        data: Telnyx::Storage::CloudfsFilesystemResponseWrapper::Data | nil
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
        data: Telnyx::Storage::CloudfsFilesystemDetailResponseWrapper::Data | nil
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
        data: Telnyx::Storage::CloudfsFilesystemDetailResponseWrapper::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.storage.cloudfs.list

    assert_pattern do
      response => Telnyx::Models::Storage::CloudfListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Storage::CloudfListResponse::Data]) | nil,
        meta: Telnyx::Models::Storage::CloudfListResponse::Meta | nil
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
        data: Telnyx::Storage::CloudfsFilesystemDetailResponseWrapper::Data | nil
      }
    end
  end
end
