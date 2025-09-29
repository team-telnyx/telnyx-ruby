# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::TextToSpeechTest < Telnyx::Test::ResourceTest
  def test_generate_speech_required_params
    skip("Prism doesn't support audio/mpeg responses")

    response = @telnyx.text_to_speech.generate_speech(text: "text", voice: "voice")

    assert_pattern do
      response => StringIO
    end
  end

  def test_list_voices
    skip("Prism tests are disabled")

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
