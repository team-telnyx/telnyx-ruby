# typed: strong

module Telnyx
  module Resources
    class AI
      class Audio
        # Transcribe speech to text. This endpoint is consistent with the
        # [OpenAI Transcription API](https://platform.openai.com/docs/api-reference/audio/createTranscription)
        # and may be used with the OpenAI JS or Python SDK.
        sig do
          params(
            model: Telnyx::AI::AudioTranscribeParams::Model::OrSymbol,
            file: Telnyx::Internal::FileInput,
            file_url: String,
            language: String,
            model_config: T::Hash[Symbol, T.anything],
            response_format:
              Telnyx::AI::AudioTranscribeParams::ResponseFormat::OrSymbol,
            timestamp_granularities:
              Telnyx::AI::AudioTranscribeParams::TimestampGranularities::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::AudioTranscribeResponse)
        end
        def transcribe(
          # ID of the model to use. `distil-whisper/distil-large-v2` is lower latency but
          # English-only. `openai/whisper-large-v3-turbo` is multi-lingual but slightly
          # higher latency. The `deepgram/*` models only accept mp3/wav files:
          # `deepgram/nova-3` covers ~49 languages plus `multi` and `deepgram/nova-2` covers
          # ~33, while the `-medical` variants are tuned for clinical vocabulary and accept
          # English only (`en` and its regional variants, e.g. `en-US`, `en-GB`).
          # `nvidia/parakeet-v3` is multilingual with automatic language detection;
          # `omi-health/omi-med-stt-v1` is a medical model, English only.
          model:,
          # The audio file object to transcribe, in one of these formats: flac, mp3, mp4,
          # mpeg, mpga, m4a, ogg, wav, or webm. File uploads are limited to 100 MB. Cannot
          # be used together with `file_url`. Note: the `deepgram/*` models only support mp3
          # and wav formats.
          file: nil,
          # Link to audio file in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a,
          # ogg, wav, or webm. Support for hosted files is limited to 100MB. Cannot be used
          # together with `file`. Note: the `deepgram/*` models only support mp3 and wav
          # formats.
          file_url: nil,
          # The language of the audio to be transcribed. `deepgram/nova-3` supports ~49
          # languages plus `multi`, and `deepgram/nova-2` supports ~33 plus `multi`; the
          # `-medical` variants are English only (`en` and its regional variants, e.g.
          # `en-US`, `en-GB`). Deepgram models validate on the base language and forward the
          # full tag, so regional variants such as `de-CH` and `pt-BR` are accepted where
          # the base language is supported; an unsupported language returns a 400. For
          # `openai/whisper-large-v3-turbo`, supports multiple languages.
          # `distil-whisper/distil-large-v2` does not support language parameter.
          # `nvidia/parakeet-v3` detects the language automatically;
          # `omi-health/omi-med-stt-v1` is English only.
          language: nil,
          # Additional model-specific configuration parameters. Only allowed with the
          # `deepgram/*` models. Can include Deepgram-specific options such as
          # `smart_format`, `punctuate`, `diarize`, `utterance`, `numerals`, and `language`.
          # If `language` is provided both as a top-level parameter and in `model_config`,
          # the top-level parameter takes precedence.
          model_config: nil,
          # The format of the transcript output. Use `verbose_json` to take advantage of
          # timestamps.
          response_format: nil,
          # The timestamp granularities to populate for this transcription.
          # `response_format` must be set verbose_json to use timestamp granularities.
          # Currently `segment` is supported.
          timestamp_granularities: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
