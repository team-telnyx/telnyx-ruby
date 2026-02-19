# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::CustomStorageCredentialsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.custom_storage_credentials.create(
        "connection_id",
        backend: :gcs,
        configuration: {backend: :gcs}
      )

    assert_pattern do
      response => Telnyx::Models::CustomStorageCredentialCreateResponse
    end

    assert_pattern do
      response => {
        connection_id: String,
        data: Telnyx::CustomStorageConfiguration,
        record_type: Telnyx::Models::CustomStorageCredentialCreateResponse::RecordType
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.custom_storage_credentials.retrieve("connection_id")

    assert_pattern do
      response => Telnyx::Models::CustomStorageCredentialRetrieveResponse
    end

    assert_pattern do
      response => {
        connection_id: String,
        data: Telnyx::CustomStorageConfiguration,
        record_type: Telnyx::Models::CustomStorageCredentialRetrieveResponse::RecordType
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.custom_storage_credentials.update(
        "connection_id",
        backend: :gcs,
        configuration: {backend: :gcs}
      )

    assert_pattern do
      response => Telnyx::Models::CustomStorageCredentialUpdateResponse
    end

    assert_pattern do
      response => {
        connection_id: String,
        data: Telnyx::CustomStorageConfiguration,
        record_type: Telnyx::Models::CustomStorageCredentialUpdateResponse::RecordType
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.custom_storage_credentials.delete("connection_id")

    assert_pattern do
      response => nil
    end
  end
end
