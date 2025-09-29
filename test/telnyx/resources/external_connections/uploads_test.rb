# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::ExternalConnections::UploadsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

    response = @telnyx.external_connections.uploads.list("id")

    assert_pattern do
      response => Telnyx::Models::ExternalConnections::UploadListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::ExternalConnections::Upload]) | nil,
        meta: Telnyx::ExternalVoiceIntegrationsPaginationMeta | nil
      }
    end
  end

  def test_pending_count
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

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
