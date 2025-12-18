# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::SpeechToTextTest < Telnyx::Test::ResourceTest
  def test_transcribe_required_params
    skip("Prism tests are disabled")

    response = @telnyx.speech_to_text.transcribe(input_format: :mp3, transcription_engine: :Azure)

    assert_pattern do
      response => nil
    end
  end
end
