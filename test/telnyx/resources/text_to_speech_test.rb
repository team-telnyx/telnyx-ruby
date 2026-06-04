# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::TextToSpeechTest < Telnyx::Test::ResourceTest
  def test_generate
    skip("Mock server tests are disabled")

    response = @telnyx.text_to_speech.generate

    assert_pattern do
      response => Telnyx::Models::TextToSpeechGenerateResponse
    end

    assert_pattern do
      response => {
        base64_audio: String | nil
      }
    end
  end

  def test_list_voices
    skip("Mock server tests are disabled")

    response = @telnyx.text_to_speech.list_voices

    assert_pattern do
      response => Telnyx::Models::TextToSpeechListVoicesResponse
    end

    assert_pattern do
      response => {
        voices: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::TextToSpeechListVoicesResponse::Voice]) | nil
      }
    end
  end
end
