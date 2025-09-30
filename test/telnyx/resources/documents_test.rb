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
      response => Telnyx::Models::DocumentListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::DocServiceDocument]) | nil,
        meta: Telnyx::PaginationMeta | nil
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
    skip("Prism doesn't support * responses")

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

    response =
      @telnyx.documents.upload(url: "https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf")

    assert_pattern do
      response => Telnyx::Models::DocumentUploadResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::DocServiceDocument | nil
      }
    end
  end
end
