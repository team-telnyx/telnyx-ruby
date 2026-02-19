# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::ExternalConnections::UploadsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.external_connections.uploads.create(
        "id",
        number_ids: %w[
          3920457616934164700
          3920457616934164701
          3920457616934164702
          3920457616934164703
        ]
      )

    assert_pattern do
      response => Telnyx::Models::ExternalConnections::UploadCreateResponse
    end

    assert_pattern do
      response => {
        success: Telnyx::Internal::Type::Boolean | nil,
        ticket_id: String | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.external_connections.uploads.retrieve("7b6a6449-b055-45a6-81f6-f6f0dffa4cc6", id: "id")

    assert_pattern do
      response => Telnyx::Models::ExternalConnections::UploadRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ExternalConnections::Upload | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.external_connections.uploads.list("id")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::ExternalConnections::Upload
    end

    assert_pattern do
      row => {
        available_usages: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::ExternalConnections::Upload::AvailableUsage]) | nil,
        error_code: String | nil,
        error_message: String | nil,
        location_id: String | nil,
        status: Telnyx::ExternalConnections::Upload::Status | nil,
        tenant_id: String | nil,
        ticket_id: String | nil,
        tn_upload_entries: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::ExternalConnections::TnUploadEntry]) | nil
      }
    end
  end

  def test_pending_count
    skip("Mock server tests are disabled")

    response = @telnyx.external_connections.uploads.pending_count("id")

    assert_pattern do
      response => Telnyx::Models::ExternalConnections::UploadPendingCountResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::ExternalConnections::UploadPendingCountResponse::Data | nil
      }
    end
  end

  def test_refresh_status
    skip("Mock server tests are disabled")

    response = @telnyx.external_connections.uploads.refresh_status("id")

    assert_pattern do
      response => Telnyx::Models::ExternalConnections::UploadRefreshStatusResponse
    end

    assert_pattern do
      response => {
        success: Telnyx::Internal::Type::Boolean | nil
      }
    end
  end

  def test_retry__required_params
    skip("Mock server tests are disabled")

    response = @telnyx.external_connections.uploads.retry_("7b6a6449-b055-45a6-81f6-f6f0dffa4cc6", id: "id")

    assert_pattern do
      response => Telnyx::Models::ExternalConnections::UploadRetryResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ExternalConnections::Upload | nil
      }
    end
  end
end
