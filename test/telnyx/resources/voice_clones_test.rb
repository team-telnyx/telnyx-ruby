# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::VoiceClonesTest < Telnyx::Test::ResourceTest
  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.voice_clones.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", name: "updated-clone")

    assert_pattern do
      response => Telnyx::Models::VoiceCloneUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::VoiceCloneUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.voice_clones.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::VoiceCloneListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: Time | nil,
        gender: Telnyx::Models::VoiceCloneListResponse::Gender | nil,
        label: String | nil,
        language: String | nil,
        name: String | nil,
        record_type: Telnyx::Models::VoiceCloneListResponse::RecordType | nil,
        source_voice_design_id: String | nil,
        source_voice_design_version: Integer | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.voice_clones.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_create_from_design_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.voice_clones.create_from_design(
        gender: :male,
        language: "en",
        name: "clone-narrator",
        voice_design_id: "550e8400-e29b-41d4-a716-446655440000"
      )

    assert_pattern do
      response => Telnyx::Models::VoiceCloneCreateFromDesignResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::VoiceCloneCreateFromDesignResponse::Data | nil
      }
    end
  end

  def test_create_from_upload_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.voice_clones.create_from_upload(
        audio_file: StringIO.new("Example data"),
        language: "lkf-Lz1vLbBu-9uDh-9AHaOS2D-Cbf",
        name: "name"
      )

    assert_pattern do
      response => Telnyx::Models::VoiceCloneCreateFromUploadResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data | nil
      }
    end
  end

  def test_download_sample
    skip("Mock server tests are disabled")

    response = @telnyx.voice_clones.download_sample("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => StringIO
    end
  end
end
