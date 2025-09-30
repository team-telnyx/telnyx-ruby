# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TranscriptionConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute model
        #   The speech to text model to be used by the voice assistant.
        #
        #   - `distil-whisper/distil-large-v2` is lower latency but English-only.
        #   - `openai/whisper-large-v3-turbo` is multi-lingual with automatic language
        #     detection but slightly higher latency.
        #   - `google` is a multi-lingual option, please describe the language in the
        #     `language` field.
        #
        #   @return [String, nil]
        optional :model, String

        # @!method initialize(model: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::TranscriptionConfig} for more details.
        #
        #   The settings associated with speech to text for the voice assistant. This is
        #   only relevant if the assistant uses a text-to-text language model. Any assistant
        #   using a model with native audio support (e.g. `fixie-ai/ultravox-v0_4`) will
        #   ignore this field.
        #
        #   @param model [String] The speech to text model to be used by the voice assistant.
      end
    end
  end
end
