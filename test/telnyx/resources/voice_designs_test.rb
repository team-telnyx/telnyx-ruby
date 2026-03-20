# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::VoiceDesignsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.voice_designs.create(
        prompt: "Speak in a warm, friendly tone",
        text: "Hello, welcome to our service."
      )

    assert_pattern do
      response => Telnyx::Models::VoiceDesignCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::VoiceDesignData | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.voice_designs.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::VoiceDesignRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::VoiceDesignData | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.voice_designs.update("id", name: "updated-narrator")

    assert_pattern do
      response => Telnyx::Models::VoiceDesignUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::VoiceDesignUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.voice_designs.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::VoiceDesignListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: Time | nil,
        name: String | nil,
        record_type: Telnyx::Models::VoiceDesignListResponse::RecordType | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.voice_designs.delete("id")

    assert_pattern do
      response => nil
    end
  end

  def test_delete_version_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.voice_designs.delete_version(1, id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_download_sample
    skip("Mock server tests are disabled")

    response = @telnyx.voice_designs.download_sample("id")

    assert_pattern do
      response => StringIO
    end
  end
end
