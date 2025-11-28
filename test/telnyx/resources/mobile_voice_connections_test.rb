# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MobileVoiceConnectionsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.mobile_voice_connections.create

    assert_pattern do
      response => Telnyx::Models::MobileVoiceConnectionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::MobileVoiceConnectionCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.mobile_voice_connections.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::MobileVoiceConnectionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::MobileVoiceConnectionRetrieveResponse::Data | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.mobile_voice_connections.update("id")

    assert_pattern do
      response => Telnyx::Models::MobileVoiceConnectionUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::MobileVoiceConnectionUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.mobile_voice_connections.list

    assert_pattern do
      response => Telnyx::Models::MobileVoiceConnectionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MobileVoiceConnectionListResponse::Data]) | nil,
        meta: Telnyx::Models::MobileVoiceConnectionListResponse::Meta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.mobile_voice_connections.delete("id")

    assert_pattern do
      response => Telnyx::Models::MobileVoiceConnectionDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::MobileVoiceConnectionDeleteResponse::Data | nil
      }
    end
  end
end
