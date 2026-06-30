# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::TextToSpeechTest < Telnyx::Test::ResourceTest
  def test_create_speech
    skip("Mock server tests are disabled")

    response = @telnyx.text_to_speech.create_speech

    assert_pattern do
      response => Telnyx::Models::TextToSpeechCreateSpeechResponse
    end

    assert_pattern do
      response => {
        base64_audio: String | nil
      }
    end
  end

  def test_generate_speech
    skip("Mock server tests are disabled")

    response = @telnyx.text_to_speech.generate_speech

    assert_pattern do
      response => nil
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
