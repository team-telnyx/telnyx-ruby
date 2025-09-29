# typed: strong

module Telnyx
  module Models
    module AI
      class TranscriptionSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::TranscriptionSettings, Telnyx::Internal::AnyHash)
          end

        # The language of the audio to be transcribed. This is only applicable for
        # `openai/whisper-large-v3-turbo` model. If not set, of if set to `auto`, the
        # model will automatically detect the language. For the full list of supported
        # languages, see the
        # [whisper tokenizer](https://github.com/openai/whisper/blob/main/whisper/tokenizer.py).
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        # The speech to text model to be used by the voice assistant.
        #
        # - `distil-whisper/distil-large-v2` is lower latency but English-only.
        # - `openai/whisper-large-v3-turbo` is multi-lingual with automatic language
        #   detection but slightly higher latency.
        sig { returns(T.nilable(String)) }
        attr_reader :model

        sig { params(model: String).void }
        attr_writer :model

        sig do
          params(language: String, model: String).returns(T.attached_class)
        end
        def self.new(
          # The language of the audio to be transcribed. This is only applicable for
          # `openai/whisper-large-v3-turbo` model. If not set, of if set to `auto`, the
          # model will automatically detect the language. For the full list of supported
          # languages, see the
          # [whisper tokenizer](https://github.com/openai/whisper/blob/main/whisper/tokenizer.py).
          language: nil,
          # The speech to text model to be used by the voice assistant.
          #
          # - `distil-whisper/distil-large-v2` is lower latency but English-only.
          # - `openai/whisper-large-v3-turbo` is multi-lingual with automatic language
          #   detection but slightly higher latency.
          model: nil
        )
        end

        sig { override.returns({ language: String, model: String }) }
        def to_hash
        end
      end
    end
  end
end
