# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class TranscriptionSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute language
        #   The language of the audio to be transcribed. This is only applicable for
        #   `openai/whisper-large-v3-turbo` model. If not set, of if set to `auto`, the
        #   model will automatically detect the language. For the full list of supported
        #   languages, see the
        #   [whisper tokenizer](https://github.com/openai/whisper/blob/main/whisper/tokenizer.py).
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute model
        #   The speech to text model to be used by the voice assistant.
        #
        #   - `distil-whisper/distil-large-v2` is lower latency but English-only.
        #   - `openai/whisper-large-v3-turbo` is multi-lingual with automatic language
        #     detection but slightly higher latency.
        #
        #   @return [String, nil]
        optional :model, String

        # @!method initialize(language: nil, model: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::TranscriptionSettings} for more details.
        #
        #   @param language [String] The language of the audio to be transcribed. This is only applicable for `openai
        #
        #   @param model [String] The speech to text model to be used by the voice assistant.
      end
    end
  end
end
