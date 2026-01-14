# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::DocumentsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.documents.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::DocumentRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::DocServiceDocument | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.documents.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::DocumentUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::DocServiceDocument | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.documents.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::DocServiceDocument
    end

    assert_pattern do
      row => {
        id: String | nil,
        av_scan_status: Telnyx::DocServiceDocument::AvScanStatus | nil,
        content_type: String | nil,
        created_at: String | nil,
        customer_reference: String | nil,
        filename: String | nil,
        record_type: String | nil,
        sha256: String | nil,
        size: Telnyx::DocServiceDocument::Size | nil,
        status: Telnyx::DocServiceDocument::Status | nil,
        updated_at: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.documents.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::DocumentDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::DocServiceDocument | nil
      }
    end
  end

  def test_download
    skip("Prism doesn't support application/octet-stream responses")

    response = @telnyx.documents.download("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => StringIO
    end
  end

  def test_generate_download_link
    skip("Prism tests are disabled")

    response = @telnyx.documents.generate_download_link("550e8400-e29b-41d4-a716-446655440000")

    assert_pattern do
      response => Telnyx::Models::DocumentGenerateDownloadLinkResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::DocumentGenerateDownloadLinkResponse::Data
      }
    end
  end

  def test_upload_required_params
    skip("Prism tests are disabled")

    response = @telnyx.documents.upload(document: {})

    assert_pattern do
      response => Telnyx::Models::DocumentUploadResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::DocServiceDocument | nil
      }
    end
  end

  def test_upload_json_required_params
    skip("Prism tests are disabled")

    response = @telnyx.documents.upload_json(document: {})

    assert_pattern do
      response => Telnyx::Models::DocumentUploadJsonResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::DocServiceDocument | nil
      }
    end
  end
end
