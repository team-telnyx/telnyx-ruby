# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AI::AudioTest < Telnyx::Test::ResourceTest
  def test_transcribe_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.audio.transcribe(model: :"distil-whisper/distil-large-v2")

    assert_pattern do
      response => Telnyx::Models::AI::AudioTranscribeResponse
    end

    assert_pattern do
      response => {
        text: String,
        duration: Float | nil,
        segments: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::AudioTranscribeResponse::Segment]) | nil
      }
    end
  end
end
