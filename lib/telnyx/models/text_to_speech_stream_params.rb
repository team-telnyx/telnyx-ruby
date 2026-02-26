# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TextToSpeech#stream
    class TextToSpeechStreamParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute audio_format
      #   Audio output format override. Supported for Telnyx `Natural`/`NaturalHD` models
      #   only. Accepted values: `pcm`, `wav`.
      #
      #   @return [Symbol, Telnyx::Models::TextToSpeechStreamParams::AudioFormat, nil]
      optional :audio_format, enum: -> { Telnyx::TextToSpeechStreamParams::AudioFormat }

      # @!attribute disable_cache
      #   When `true`, bypass the audio cache and generate fresh audio.
      #
      #   @return [Boolean, nil]
      optional :disable_cache, Telnyx::Internal::Type::Boolean

      # @!attribute model_id
      #   Model identifier for the chosen provider. Examples: `Natural`, `NaturalHD`
      #   (Telnyx); `Polly.Generative` (AWS).
      #
      #   @return [String, nil]
      optional :model_id, String

      # @!attribute provider
      #   TTS provider. Defaults to `telnyx` if not specified. Ignored when `voice` is
      #   provided.
      #
      #   @return [Symbol, Telnyx::Models::TextToSpeechStreamParams::Provider, nil]
      optional :provider, enum: -> { Telnyx::TextToSpeechStreamParams::Provider }

      # @!attribute socket_id
      #   Client-provided socket identifier for tracking. If not provided, one is
      #   generated server-side.
      #
      #   @return [String, nil]
      optional :socket_id, String

      # @!attribute voice
      #   Voice identifier in the format `provider.model_id.voice_id` or
      #   `provider.voice_id` (e.g. `telnyx.NaturalHD.Telnyx_Alloy` or
      #   `azure.en-US-AvaMultilingualNeural`). When provided, the `provider`, `model_id`,
      #   and `voice_id` are extracted automatically. Takes precedence over individual
      #   `provider`/`model_id`/`voice_id` parameters.
      #
      #   @return [String, nil]
      optional :voice, String

      # @!attribute voice_id
      #   Voice identifier for the chosen provider.
      #
      #   @return [String, nil]
      optional :voice_id, String

      # @!method initialize(audio_format: nil, disable_cache: nil, model_id: nil, provider: nil, socket_id: nil, voice: nil, voice_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TextToSpeechStreamParams} for more details.
      #
      #   @param audio_format [Symbol, Telnyx::Models::TextToSpeechStreamParams::AudioFormat] Audio output format override. Supported for Telnyx `Natural`/`NaturalHD` models
      #
      #   @param disable_cache [Boolean] When `true`, bypass the audio cache and generate fresh audio.
      #
      #   @param model_id [String] Model identifier for the chosen provider. Examples: `Natural`, `NaturalHD` (Teln
      #
      #   @param provider [Symbol, Telnyx::Models::TextToSpeechStreamParams::Provider] TTS provider. Defaults to `telnyx` if not specified. Ignored when `voice` is pro
      #
      #   @param socket_id [String] Client-provided socket identifier for tracking. If not provided, one is generate
      #
      #   @param voice [String] Voice identifier in the format `provider.model_id.voice_id` or `provider.voice_i
      #
      #   @param voice_id [String] Voice identifier for the chosen provider.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Audio output format override. Supported for Telnyx `Natural`/`NaturalHD` models
      # only. Accepted values: `pcm`, `wav`.
      module AudioFormat
        extend Telnyx::Internal::Type::Enum

        PCM = :pcm
        WAV = :wav

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # TTS provider. Defaults to `telnyx` if not specified. Ignored when `voice` is
      # provided.
      module Provider
        extend Telnyx::Internal::Type::Enum

        AWS = :aws
        TELNYX = :telnyx
        AZURE = :azure
        ELEVENLABS = :elevenlabs
        MINIMAX = :minimax
        MURFAI = :murfai
        RIME = :rime
        RESEMBLE = :resemble

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
