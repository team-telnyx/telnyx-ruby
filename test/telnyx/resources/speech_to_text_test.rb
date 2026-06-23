# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::SpeechToTextTest < Telnyx::Test::ResourceTest
  def test_list_providers
    skip("Mock server tests are disabled")

    response = @telnyx.speech_to_text.list_providers

    assert_pattern do
      response => Telnyx::Models::SpeechToTextListProvidersResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SpeechToTextListProvidersResponse::Data]),
        meta: Telnyx::Models::SpeechToTextListProvidersResponse::Meta
      }
    end
  end

  def test_retrieve_transcription_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.speech_to_text.retrieve_transcription(input_format: :mp3, transcription_engine: :Azure)

    assert_pattern do
      response => nil
    end
  end
end
