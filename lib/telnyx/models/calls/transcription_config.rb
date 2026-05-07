# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TranscriptionConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute language
        #   The language of the audio to be transcribed. If not set, or if set to `auto`,
        #   supported models will automatically detect the language. Supported and
        #   meaningful values depend on the selected transcription `model`. For
        #   `deepgram/flux`, supported values are: `auto` (Telnyx language detection
        #   controls the language hint), `multi` (no language hint), and language-specific
        #   hints `en`, `es`, `fr`, `de`, `hi`, `ru`, `pt`, `ja`, `it`, and `nl`.
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute model
        #   The speech to text model to be used by the voice assistant. Supported models
        #   include:
        #
        #   - `deepgram/flux` (or `flux`) for live streaming turn-taking.
        #   - `deepgram/nova-3` and `deepgram/nova-2` for live streaming transcription.
        #   - `speechmatics/standard` and `speechmatics/enhanced` for live streaming
        #     transcription.
        #   - `assemblyai/universal-streaming` for live streaming transcription.
        #   - `xai/grok-stt` for live streaming transcription.
        #   - `azure/fast` and `azure/realtime`; Azure models require `region`, and
        #     unsupported regions require `api_key_ref`.
        #   - `google/latest_long` for non-streaming multilingual transcription.
        #   - `distil-whisper/distil-large-v2` for lower-latency English-only non-streaming
        #     transcription.
        #   - `openai/whisper-large-v3-turbo` for multilingual non-streaming transcription
        #     with automatic language detection.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionConfig::Model, nil]
        optional :model, enum: -> { Telnyx::Calls::TranscriptionConfig::Model }

        # @!method initialize(language: nil, model: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::TranscriptionConfig} for more details.
        #
        #   The settings associated with speech to text for the voice assistant. This is
        #   only relevant if the assistant uses a text-to-text language model. Any assistant
        #   using a model with native audio support (e.g. `fixie-ai/ultravox-v0_4`) will
        #   ignore this field.
        #
        #   @param language [String] The language of the audio to be transcribed. If not set, or if set to `auto`, su
        #
        #   @param model [Symbol, Telnyx::Models::Calls::TranscriptionConfig::Model] The speech to text model to be used by the voice assistant. Supported models inc

        # The speech to text model to be used by the voice assistant. Supported models
        # include:
        #
        # - `deepgram/flux` (or `flux`) for live streaming turn-taking.
        # - `deepgram/nova-3` and `deepgram/nova-2` for live streaming transcription.
        # - `speechmatics/standard` and `speechmatics/enhanced` for live streaming
        #   transcription.
        # - `assemblyai/universal-streaming` for live streaming transcription.
        # - `xai/grok-stt` for live streaming transcription.
        # - `azure/fast` and `azure/realtime`; Azure models require `region`, and
        #   unsupported regions require `api_key_ref`.
        # - `google/latest_long` for non-streaming multilingual transcription.
        # - `distil-whisper/distil-large-v2` for lower-latency English-only non-streaming
        #   transcription.
        # - `openai/whisper-large-v3-turbo` for multilingual non-streaming transcription
        #   with automatic language detection.
        #
        # @see Telnyx::Models::Calls::TranscriptionConfig#model
        module Model
          extend Telnyx::Internal::Type::Enum

          DEEPGRAM_FLUX = :"deepgram/flux"
          FLUX = :flux
          DEEPGRAM_NOVA_3 = :"deepgram/nova-3"
          DEEPGRAM_NOVA_2 = :"deepgram/nova-2"
          SPEECHMATICS_STANDARD = :"speechmatics/standard"
          SPEECHMATICS_ENHANCED = :"speechmatics/enhanced"
          ASSEMBLYAI_UNIVERSAL_STREAMING = :"assemblyai/universal-streaming"
          XAI_GROK_STT = :"xai/grok-stt"
          AZURE_FAST = :"azure/fast"
          AZURE_REALTIME = :"azure/realtime"
          GOOGLE_LATEST_LONG = :"google/latest_long"
          DISTIL_WHISPER_DISTIL_LARGE_V2 = :"distil-whisper/distil-large-v2"
          OPENAI_WHISPER_LARGE_V3_TURBO = :"openai/whisper-large-v3-turbo"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
