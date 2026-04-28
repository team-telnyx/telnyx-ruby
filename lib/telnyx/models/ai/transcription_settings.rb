# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class TranscriptionSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute api_key_ref
        #   Integration secret identifier for the transcription provider API key. Currently
        #   used for Azure transcription regions that require a customer-provided API key.
        #
        #   @return [String, nil]
        optional :api_key_ref, String

        # @!attribute language
        #   The language of the audio to be transcribed. If not set, or if set to `auto`,
        #   supported models will automatically detect the language. For `deepgram/flux`,
        #   supported values are: `auto` (Telnyx language detection controls the language
        #   hint), `multi` (no language hint), and language-specific hints `en`, `es`, `fr`,
        #   `de`, `hi`, `ru`, `pt`, `ja`, `it`, and `nl`.
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute model
        #   The speech to text model to be used by the voice assistant. All Deepgram models
        #   are run on-premise.
        #
        #   - `deepgram/flux` is optimized for turn-taking with multilingual language hints.
        #   - `deepgram/nova-3` is multilingual with automatic language detection.
        #   - `deepgram/nova-2` is Deepgram's previous-generation multilingual model.
        #   - `azure/fast` is a multilingual Azure transcription model.
        #   - `assemblyai/universal-streaming` is a multilingual streaming model with
        #     configurable turn detection.
        #   - `xai/grok-stt` is a multilingual Grok STT model.
        #
        #   @return [Symbol, Telnyx::Models::AI::TranscriptionSettings::Model, nil]
        optional :model, enum: -> { Telnyx::AI::TranscriptionSettings::Model }

        # @!attribute region
        #   Region on third party cloud providers (currently Azure) if using one of their
        #   models. Some regions require `api_key_ref`.
        #
        #   @return [String, nil]
        optional :region, String

        # @!attribute settings
        #
        #   @return [Telnyx::Models::AI::TranscriptionSettingsConfig, nil]
        optional :settings, -> { Telnyx::AI::TranscriptionSettingsConfig }

        # @!method initialize(api_key_ref: nil, language: nil, model: nil, region: nil, settings: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::TranscriptionSettings} for more details.
        #
        #   @param api_key_ref [String] Integration secret identifier for the transcription provider API key. Currently
        #
        #   @param language [String] The language of the audio to be transcribed. If not set, or if set to `auto`, su
        #
        #   @param model [Symbol, Telnyx::Models::AI::TranscriptionSettings::Model] The speech to text model to be used by the voice assistant. All Deepgram models
        #
        #   @param region [String] Region on third party cloud providers (currently Azure) if using one of their mo
        #
        #   @param settings [Telnyx::Models::AI::TranscriptionSettingsConfig]

        # The speech to text model to be used by the voice assistant. All Deepgram models
        # are run on-premise.
        #
        # - `deepgram/flux` is optimized for turn-taking with multilingual language hints.
        # - `deepgram/nova-3` is multilingual with automatic language detection.
        # - `deepgram/nova-2` is Deepgram's previous-generation multilingual model.
        # - `azure/fast` is a multilingual Azure transcription model.
        # - `assemblyai/universal-streaming` is a multilingual streaming model with
        #   configurable turn detection.
        # - `xai/grok-stt` is a multilingual Grok STT model.
        #
        # @see Telnyx::Models::AI::TranscriptionSettings#model
        module Model
          extend Telnyx::Internal::Type::Enum

          DEEPGRAM_FLUX = :"deepgram/flux"
          DEEPGRAM_NOVA_3 = :"deepgram/nova-3"
          DEEPGRAM_NOVA_2 = :"deepgram/nova-2"
          AZURE_FAST = :"azure/fast"
          ASSEMBLYAI_UNIVERSAL_STREAMING = :"assemblyai/universal-streaming"
          XAI_GROK_STT = :"xai/grok-stt"
          DISTIL_WHISPER_DISTIL_LARGE_V2 = :"distil-whisper/distil-large-v2"
          OPENAI_WHISPER_LARGE_V3_TURBO = :"openai/whisper-large-v3-turbo"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
