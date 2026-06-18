# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TextToSpeech#generate_speech
    class TextToSpeechGenerateSpeechParams < ::Telnyx::Internal::Type::BaseModel
      extend ::Telnyx::Internal::Type::RequestParameters::Converter
      include ::Telnyx::Internal::Type::RequestParameters

      # @!attribute aws
      #   AWS Polly provider-specific parameters.
      #
      #   @return [::Telnyx::Models::TextToSpeechGenerateSpeechParams::Aws, nil]
      optional :aws, -> { ::Telnyx::TextToSpeechGenerateSpeechParams::Aws }

      # @!attribute azure
      #   Azure Cognitive Services provider-specific parameters.
      #
      #   @return [::Telnyx::Models::TextToSpeechGenerateSpeechParams::Azure, nil]
      optional :azure, -> { ::Telnyx::TextToSpeechGenerateSpeechParams::Azure }

      # @!attribute disable_cache
      #   When `true`, bypass the audio cache and generate fresh audio.
      #
      #   @return [Boolean, nil]
      optional :disable_cache, ::Telnyx::Internal::Type::Boolean

      # @!attribute elevenlabs
      #   ElevenLabs provider-specific parameters.
      #
      #   @return [::Telnyx::Models::TextToSpeechGenerateSpeechParams::Elevenlabs, nil]
      optional :elevenlabs, -> { ::Telnyx::TextToSpeechGenerateSpeechParams::Elevenlabs }

      # @!attribute language
      #   Language code (e.g. `en-US`). Usage varies by provider.
      #
      #   @return [String, nil]
      optional :language, String

      # @!attribute minimax
      #   Minimax provider-specific parameters.
      #
      #   @return [::Telnyx::Models::TextToSpeechGenerateSpeechParams::Minimax, nil]
      optional :minimax, -> { ::Telnyx::TextToSpeechGenerateSpeechParams::Minimax }

      # @!attribute output_type
      #   Determines the response format. `binary_output` returns raw audio bytes,
      #   `base64_output` returns base64-encoded audio in JSON.
      #
      #   @return [Symbol, ::Telnyx::Models::TextToSpeechGenerateSpeechParams::OutputType, nil]
      optional :output_type, enum: -> { ::Telnyx::TextToSpeechGenerateSpeechParams::OutputType }

      # @!attribute provider
      #   TTS provider. Required unless `voice` is provided.
      #
      #   @return [Symbol, ::Telnyx::Models::TextToSpeechGenerateSpeechParams::Provider, nil]
      optional :provider, enum: -> { ::Telnyx::TextToSpeechGenerateSpeechParams::Provider }

      # @!attribute resemble
      #   Resemble AI provider-specific parameters.
      #
      #   @return [::Telnyx::Models::TextToSpeechGenerateSpeechParams::Resemble, nil]
      optional :resemble, -> { ::Telnyx::TextToSpeechGenerateSpeechParams::Resemble }

      # @!attribute rime
      #   Rime provider-specific parameters.
      #
      #   @return [::Telnyx::Models::TextToSpeechGenerateSpeechParams::Rime, nil]
      optional :rime, -> { ::Telnyx::TextToSpeechGenerateSpeechParams::Rime }

      # @!attribute telnyx
      #   Telnyx provider-specific parameters. Use `voice_speed` and `temperature` for
      #   `Natural` and `NaturalHD` models. For the `Ultra` model, use `voice_speed`,
      #   `volume`, and `emotion`.
      #
      #   @return [::Telnyx::Models::TextToSpeechGenerateSpeechParams::Telnyx, nil]
      optional :telnyx, -> { ::Telnyx::TextToSpeechGenerateSpeechParams::Telnyx }

      # @!attribute text
      #   The text to convert to speech.
      #
      #   @return [String, nil]
      optional :text, String

      # @!attribute text_type
      #   Text type. Use `ssml` for SSML-formatted input (supported by AWS and Azure).
      #
      #   @return [Symbol, ::Telnyx::Models::TextToSpeechGenerateSpeechParams::TextType, nil]
      optional :text_type, enum: -> { ::Telnyx::TextToSpeechGenerateSpeechParams::TextType }

      # @!attribute voice
      #   Voice identifier in the format `provider.model_id.voice_id` or
      #   `provider.voice_id`. Examples: `telnyx.NaturalHD.Alloy`,
      #   `Telnyx.Ultra.<voice_id>`, `azure.en-US-AvaMultilingualNeural`,
      #   `aws.Polly.Generative.Lucia`. When provided, `provider`, `model_id`, and
      #   `voice_id` are extracted automatically and take precedence over individual
      #   parameters.
      #
      #   @return [String, nil]
      optional :voice, String

      # @!attribute voice_settings
      #   Provider-specific voice settings. Contents vary by provider — see
      #   provider-specific parameter objects below.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :voice_settings, ::Telnyx::Internal::Type::HashOf[::Telnyx::Internal::Type::Unknown]

      # @!attribute xai
      #   xAI provider-specific parameters.
      #
      #   @return [::Telnyx::Models::TextToSpeechGenerateSpeechParams::Xai, nil]
      optional :xai, -> { ::Telnyx::TextToSpeechGenerateSpeechParams::Xai }

      # @!method initialize(aws: nil, azure: nil, disable_cache: nil, elevenlabs: nil, language: nil, minimax: nil, output_type: nil, provider: nil, resemble: nil, rime: nil, telnyx: nil, text: nil, text_type: nil, voice: nil, voice_settings: nil, xai: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {::Telnyx::Models::TextToSpeechGenerateSpeechParams} for more details.
      #
      #   @param aws [::Telnyx::Models::TextToSpeechGenerateSpeechParams::Aws] AWS Polly provider-specific parameters.
      #
      #   @param azure [::Telnyx::Models::TextToSpeechGenerateSpeechParams::Azure] Azure Cognitive Services provider-specific parameters.
      #
      #   @param disable_cache [Boolean] When `true`, bypass the audio cache and generate fresh audio.
      #
      #   @param elevenlabs [::Telnyx::Models::TextToSpeechGenerateSpeechParams::Elevenlabs] ElevenLabs provider-specific parameters.
      #
      #   @param language [String] Language code (e.g. `en-US`). Usage varies by provider.
      #
      #   @param minimax [::Telnyx::Models::TextToSpeechGenerateSpeechParams::Minimax] Minimax provider-specific parameters.
      #
      #   @param output_type [Symbol, ::Telnyx::Models::TextToSpeechGenerateSpeechParams::OutputType] Determines the response format. `binary_output` returns raw audio bytes, `base64
      #
      #   @param provider [Symbol, ::Telnyx::Models::TextToSpeechGenerateSpeechParams::Provider] TTS provider. Required unless `voice` is provided.
      #
      #   @param resemble [::Telnyx::Models::TextToSpeechGenerateSpeechParams::Resemble] Resemble AI provider-specific parameters.
      #
      #   @param rime [::Telnyx::Models::TextToSpeechGenerateSpeechParams::Rime] Rime provider-specific parameters.
      #
      #   @param telnyx [::Telnyx::Models::TextToSpeechGenerateSpeechParams::Telnyx] Telnyx provider-specific parameters. Use `voice_speed` and `temperature` for `Na
      #
      #   @param text [String] The text to convert to speech.
      #
      #   @param text_type [Symbol, ::Telnyx::Models::TextToSpeechGenerateSpeechParams::TextType] Text type. Use `ssml` for SSML-formatted input (supported by AWS and Azure).
      #
      #   @param voice [String] Voice identifier in the format `provider.model_id.voice_id` or `provider.voice_i
      #
      #   @param voice_settings [Hash{Symbol=>Object}] Provider-specific voice settings. Contents vary by provider — see provider-speci
      #
      #   @param xai [::Telnyx::Models::TextToSpeechGenerateSpeechParams::Xai] xAI provider-specific parameters.
      #
      #   @param request_options [::Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Aws < ::Telnyx::Internal::Type::BaseModel
        # @!attribute language_code
        #   Language code (e.g. `en-US`, `es-ES`).
        #
        #   @return [String, nil]
        optional :language_code, String

        # @!attribute lexicon_names
        #   List of lexicon names to apply.
        #
        #   @return [Array<String>, nil]
        optional :lexicon_names, ::Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute output_format
        #   Audio output format.
        #
        #   @return [String, nil]
        optional :output_format, String

        # @!attribute sample_rate
        #   Audio sample rate.
        #
        #   @return [String, nil]
        optional :sample_rate, String

        # @!attribute text_type
        #   Input text type.
        #
        #   @return [Symbol, ::Telnyx::Models::TextToSpeechGenerateSpeechParams::Aws::TextType, nil]
        optional :text_type, enum: -> { ::Telnyx::TextToSpeechGenerateSpeechParams::Aws::TextType }

        # @!method initialize(language_code: nil, lexicon_names: nil, output_format: nil, sample_rate: nil, text_type: nil)
        #   AWS Polly provider-specific parameters.
        #
        #   @param language_code [String] Language code (e.g. `en-US`, `es-ES`).
        #
        #   @param lexicon_names [Array<String>] List of lexicon names to apply.
        #
        #   @param output_format [String] Audio output format.
        #
        #   @param sample_rate [String] Audio sample rate.
        #
        #   @param text_type [Symbol, ::Telnyx::Models::TextToSpeechGenerateSpeechParams::Aws::TextType] Input text type.

        # Input text type.
        #
        # @see Telnyx::Models::TextToSpeechGenerateSpeechParams::Aws#text_type
        module TextType
          extend ::Telnyx::Internal::Type::Enum

          TEXT = :text
          SSML = :ssml

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Azure < ::Telnyx::Internal::Type::BaseModel
        # @!attribute api_key
        #   Custom Azure API key. If not provided, the default Telnyx key is used.
        #
        #   @return [String, nil]
        optional :api_key, String

        # @!attribute deployment_id
        #   Custom Azure deployment ID.
        #
        #   @return [String, nil]
        optional :deployment_id, String

        # @!attribute effect
        #   Azure audio effect to apply.
        #
        #   @return [String, nil]
        optional :effect, String

        # @!attribute gender
        #   Voice gender preference.
        #
        #   @return [String, nil]
        optional :gender, String

        # @!attribute language_code
        #   Language code (e.g. `en-US`).
        #
        #   @return [String, nil]
        optional :language_code, String

        # @!attribute output_format
        #   Azure audio output format.
        #
        #   @return [String, nil]
        optional :output_format, String

        # @!attribute region
        #   Azure region (e.g. `eastus`, `westeurope`).
        #
        #   @return [String, nil]
        optional :region, String

        # @!attribute text_type
        #   Input text type. Use `ssml` for SSML-formatted input.
        #
        #   @return [Symbol, ::Telnyx::Models::TextToSpeechGenerateSpeechParams::Azure::TextType, nil]
        optional :text_type, enum: -> { ::Telnyx::TextToSpeechGenerateSpeechParams::Azure::TextType }

        # @!method initialize(api_key: nil, deployment_id: nil, effect: nil, gender: nil, language_code: nil, output_format: nil, region: nil, text_type: nil)
        #   Azure Cognitive Services provider-specific parameters.
        #
        #   @param api_key [String] Custom Azure API key. If not provided, the default Telnyx key is used.
        #
        #   @param deployment_id [String] Custom Azure deployment ID.
        #
        #   @param effect [String] Azure audio effect to apply.
        #
        #   @param gender [String] Voice gender preference.
        #
        #   @param language_code [String] Language code (e.g. `en-US`).
        #
        #   @param output_format [String] Azure audio output format.
        #
        #   @param region [String] Azure region (e.g. `eastus`, `westeurope`).
        #
        #   @param text_type [Symbol, ::Telnyx::Models::TextToSpeechGenerateSpeechParams::Azure::TextType] Input text type. Use `ssml` for SSML-formatted input.

        # Input text type. Use `ssml` for SSML-formatted input.
        #
        # @see Telnyx::Models::TextToSpeechGenerateSpeechParams::Azure#text_type
        module TextType
          extend ::Telnyx::Internal::Type::Enum

          TEXT = :text
          SSML = :ssml

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Elevenlabs < ::Telnyx::Internal::Type::BaseModel
        # @!attribute api_key
        #   Custom ElevenLabs API key. If not provided, the default Telnyx key is used.
        #
        #   @return [String, nil]
        optional :api_key, String

        # @!attribute language_code
        #   Language code.
        #
        #   @return [String, nil]
        optional :language_code, String

        # @!attribute voice_settings
        #   ElevenLabs voice settings (stability, similarity_boost, etc.).
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :voice_settings, ::Telnyx::Internal::Type::HashOf[::Telnyx::Internal::Type::Unknown]

        # @!method initialize(api_key: nil, language_code: nil, voice_settings: nil)
        #   ElevenLabs provider-specific parameters.
        #
        #   @param api_key [String] Custom ElevenLabs API key. If not provided, the default Telnyx key is used.
        #
        #   @param language_code [String] Language code.
        #
        #   @param voice_settings [Hash{Symbol=>Object}] ElevenLabs voice settings (stability, similarity_boost, etc.).
      end

      class Minimax < ::Telnyx::Internal::Type::BaseModel
        # @!attribute language_boost
        #   Language code to boost pronunciation for.
        #
        #   @return [String, nil]
        optional :language_boost, String

        # @!attribute pitch
        #   Pitch adjustment.
        #
        #   @return [Integer, nil]
        optional :pitch, Integer

        # @!attribute response_format
        #   Audio output format.
        #
        #   @return [String, nil]
        optional :response_format, String

        # @!attribute speed
        #   Speech speed multiplier.
        #
        #   @return [Float, nil]
        optional :speed, Float

        # @!attribute vol
        #   Volume level.
        #
        #   @return [Float, nil]
        optional :vol, Float

        # @!method initialize(language_boost: nil, pitch: nil, response_format: nil, speed: nil, vol: nil)
        #   Minimax provider-specific parameters.
        #
        #   @param language_boost [String] Language code to boost pronunciation for.
        #
        #   @param pitch [Integer] Pitch adjustment.
        #
        #   @param response_format [String] Audio output format.
        #
        #   @param speed [Float] Speech speed multiplier.
        #
        #   @param vol [Float] Volume level.
      end

      # Determines the response format. `binary_output` returns raw audio bytes,
      # `base64_output` returns base64-encoded audio in JSON.
      module OutputType
        extend ::Telnyx::Internal::Type::Enum

        BINARY_OUTPUT = :binary_output
        BASE64_OUTPUT = :base64_output

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # TTS provider. Required unless `voice` is provided.
      module Provider
        extend ::Telnyx::Internal::Type::Enum

        AWS = :aws
        TELNYX = :telnyx
        AZURE = :azure
        ELEVENLABS = :elevenlabs
        MINIMAX = :minimax
        RIME = :rime
        RESEMBLE = :resemble
        XAI = :xai

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Resemble < ::Telnyx::Internal::Type::BaseModel
        # @!attribute api_key
        #   Custom Resemble API key.
        #
        #   @return [String, nil]
        optional :api_key, String

        # @!attribute file_format
        #   Audio output format.
        #
        #   @return [String, nil]
        optional :file_format, String, api_name: :format

        # @!attribute precision
        #   Synthesis precision.
        #
        #   @return [String, nil]
        optional :precision, String

        # @!attribute sample_rate
        #   Audio sample rate.
        #
        #   @return [String, nil]
        optional :sample_rate, String

        # @!method initialize(api_key: nil, file_format: nil, precision: nil, sample_rate: nil)
        #   Resemble AI provider-specific parameters.
        #
        #   @param api_key [String] Custom Resemble API key.
        #
        #   @param file_format [String] Audio output format.
        #
        #   @param precision [String] Synthesis precision.
        #
        #   @param sample_rate [String] Audio sample rate.
      end

      class Rime < ::Telnyx::Internal::Type::BaseModel
        # @!attribute response_format
        #   Audio output format.
        #
        #   @return [String, nil]
        optional :response_format, String

        # @!attribute sampling_rate
        #   Audio sampling rate in Hz.
        #
        #   @return [Integer, nil]
        optional :sampling_rate, Integer

        # @!attribute voice_speed
        #   Voice speed multiplier.
        #
        #   @return [Float, nil]
        optional :voice_speed, Float

        # @!method initialize(response_format: nil, sampling_rate: nil, voice_speed: nil)
        #   Rime provider-specific parameters.
        #
        #   @param response_format [String] Audio output format.
        #
        #   @param sampling_rate [Integer] Audio sampling rate in Hz.
        #
        #   @param voice_speed [Float] Voice speed multiplier.
      end

      class Telnyx < ::Telnyx::Internal::Type::BaseModel
        # @!attribute emotion
        #   Emotion control for the Ultra model. Adjusts the emotional tone of the
        #   synthesized speech.
        #
        #   @return [Symbol, ::Telnyx::Models::TextToSpeechGenerateSpeechParams::Telnyx::Emotion, nil]
        optional :emotion, enum: -> { ::Telnyx::TextToSpeechGenerateSpeechParams::Telnyx::Emotion }

        # @!attribute response_format
        #   Audio response format.
        #
        #   @return [String, nil]
        optional :response_format, String

        # @!attribute sampling_rate
        #   Audio sampling rate in Hz.
        #
        #   @return [Integer, nil]
        optional :sampling_rate, Integer

        # @!attribute temperature
        #   Sampling temperature. Applies to `Natural` and `NaturalHD` models only.
        #
        #   @return [Float, nil]
        optional :temperature, Float

        # @!attribute voice_speed
        #   Voice speed multiplier. Applies to all models. Range: 0.5 to 2.0.
        #
        #   @return [Float, nil]
        optional :voice_speed, Float

        # @!attribute volume
        #   Volume level for the Ultra model. Range: 0.0 to 2.0.
        #
        #   @return [Float, nil]
        optional :volume, Float

        # @!method initialize(emotion: nil, response_format: nil, sampling_rate: nil, temperature: nil, voice_speed: nil, volume: nil)
        #   Some parameter documentations has been truncated, see
        #   {::Telnyx::Models::TextToSpeechGenerateSpeechParams::Telnyx} for more details.
        #
        #   Telnyx provider-specific parameters. Use `voice_speed` and `temperature` for
        #   `Natural` and `NaturalHD` models. For the `Ultra` model, use `voice_speed`,
        #   `volume`, and `emotion`.
        #
        #   @param emotion [Symbol, ::Telnyx::Models::TextToSpeechGenerateSpeechParams::Telnyx::Emotion] Emotion control for the Ultra model. Adjusts the emotional tone of the synthesiz
        #
        #   @param response_format [String] Audio response format.
        #
        #   @param sampling_rate [Integer] Audio sampling rate in Hz.
        #
        #   @param temperature [Float] Sampling temperature. Applies to `Natural` and `NaturalHD` models only.
        #
        #   @param voice_speed [Float] Voice speed multiplier. Applies to all models. Range: 0.5 to 2.0.
        #
        #   @param volume [Float] Volume level for the Ultra model. Range: 0.0 to 2.0.

        # Emotion control for the Ultra model. Adjusts the emotional tone of the
        # synthesized speech.
        #
        # @see Telnyx::Models::TextToSpeechGenerateSpeechParams::Telnyx#emotion
        module Emotion
          extend ::Telnyx::Internal::Type::Enum

          NEUTRAL = :neutral
          HAPPY = :happy
          SAD = :sad
          ANGRY = :angry
          FEARFUL = :fearful
          DISGUSTED = :disgusted
          SURPRISED = :surprised

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Text type. Use `ssml` for SSML-formatted input (supported by AWS and Azure).
      module TextType
        extend ::Telnyx::Internal::Type::Enum

        TEXT = :text
        SSML = :ssml

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Xai < ::Telnyx::Internal::Type::BaseModel
        # @!attribute voice_id
        #   xAI voice identifier.
        #
        #   @return [Symbol, ::Telnyx::Models::TextToSpeechGenerateSpeechParams::Xai::VoiceID]
        required :voice_id, enum: -> { ::Telnyx::TextToSpeechGenerateSpeechParams::Xai::VoiceID }

        # @!attribute language
        #   Language code, or `auto` to detect.
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute output_format
        #   Audio output format.
        #
        #   @return [Symbol, ::Telnyx::Models::TextToSpeechGenerateSpeechParams::Xai::OutputFormat, nil]
        optional :output_format, enum: -> { ::Telnyx::TextToSpeechGenerateSpeechParams::Xai::OutputFormat }

        # @!attribute sample_rate
        #   Audio sample rate in Hz.
        #
        #   @return [Integer, ::Telnyx::Models::TextToSpeechGenerateSpeechParams::Xai::SampleRate, nil]
        optional :sample_rate, enum: -> { ::Telnyx::TextToSpeechGenerateSpeechParams::Xai::SampleRate }

        # @!method initialize(voice_id:, language: nil, output_format: nil, sample_rate: nil)
        #   xAI provider-specific parameters.
        #
        #   @param voice_id [Symbol, ::Telnyx::Models::TextToSpeechGenerateSpeechParams::Xai::VoiceID] xAI voice identifier.
        #
        #   @param language [String] Language code, or `auto` to detect.
        #
        #   @param output_format [Symbol, ::Telnyx::Models::TextToSpeechGenerateSpeechParams::Xai::OutputFormat] Audio output format.
        #
        #   @param sample_rate [Integer, ::Telnyx::Models::TextToSpeechGenerateSpeechParams::Xai::SampleRate] Audio sample rate in Hz.

        # xAI voice identifier.
        #
        # @see Telnyx::Models::TextToSpeechGenerateSpeechParams::Xai#voice_id
        module VoiceID
          extend ::Telnyx::Internal::Type::Enum

          EVE = :eve
          ARA = :ara
          REX = :rex
          SAL = :sal
          LEO = :leo

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Audio output format.
        #
        # @see Telnyx::Models::TextToSpeechGenerateSpeechParams::Xai#output_format
        module OutputFormat
          extend ::Telnyx::Internal::Type::Enum

          MP3 = :mp3
          WAV = :wav
          PCM = :pcm
          MULAW = :mulaw
          ALAW = :alaw

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Audio sample rate in Hz.
        #
        # @see Telnyx::Models::TextToSpeechGenerateSpeechParams::Xai#sample_rate
        module SampleRate
          extend ::Telnyx::Internal::Type::Enum

          RATE_8000 = 8000
          RATE_16000 = 16_000
          RATE_22050 = 22_050
          RATE_24000 = 24_000
          RATE_44100 = 44_100
          RATE_48000 = 48_000

          # @!method self.values
          #   @return [Array<Integer>]
        end
      end
    end
  end
end
