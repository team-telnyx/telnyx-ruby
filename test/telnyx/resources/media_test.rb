# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MediaTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.media.retrieve("media_name")

    assert_pattern do
      response => Telnyx::Models::MediaRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MediaResource | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.media.update("media_name")

    assert_pattern do
      response => Telnyx::Models::MediaUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MediaResource | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.media.list

    assert_pattern do
      response => Telnyx::Models::MediaListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::MediaResource]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.media.delete("media_name")

    assert_pattern do
      response => nil
    end
  end

  def test_download
    skip("Prism doesn't support application/octet-stream responses")

    response = @telnyx.media.download("media_name")

    assert_pattern do
      response => StringIO
    end
  end

  def test_upload_required_params
    skip("Prism tests are disabled")

    response = @telnyx.media.upload(media_url: "http://www.example.com/audio.mp3")

    assert_pattern do
      response => Telnyx::Models::MediaUploadResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MediaResource | nil
      }
    end
  end
end
