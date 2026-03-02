# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TextToSpeech#generate
    class TextToSpeechGenerateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute aws
      #   AWS Polly provider-specific parameters.
      #
      #   @return [Telnyx::Models::TextToSpeechGenerateParams::Aws, nil]
      optional :aws, -> { Telnyx::TextToSpeechGenerateParams::Aws }

      # @!attribute azure
      #   Azure Cognitive Services provider-specific parameters.
      #
      #   @return [Telnyx::Models::TextToSpeechGenerateParams::Azure, nil]
      optional :azure, -> { Telnyx::TextToSpeechGenerateParams::Azure }

      # @!attribute disable_cache
      #   When `true`, bypass the audio cache and generate fresh audio.
      #
      #   @return [Boolean, nil]
      optional :disable_cache, Telnyx::Internal::Type::Boolean

      # @!attribute elevenlabs
      #   ElevenLabs provider-specific parameters.
      #
      #   @return [Telnyx::Models::TextToSpeechGenerateParams::Elevenlabs, nil]
      optional :elevenlabs, -> { Telnyx::TextToSpeechGenerateParams::Elevenlabs }

      # @!attribute language
      #   Language code (e.g. `en-US`). Usage varies by provider.
      #
      #   @return [String, nil]
      optional :language, String

      # @!attribute minimax
      #   Minimax provider-specific parameters.
      #
      #   @return [Telnyx::Models::TextToSpeechGenerateParams::Minimax, nil]
      optional :minimax, -> { Telnyx::TextToSpeechGenerateParams::Minimax }

      # @!attribute output_type
      #   Determines the response format. `binary_output` returns raw audio bytes,
      #   `base64_output` returns base64-encoded audio in JSON.
      #
      #   @return [Symbol, Telnyx::Models::TextToSpeechGenerateParams::OutputType, nil]
      optional :output_type, enum: -> { Telnyx::TextToSpeechGenerateParams::OutputType }

      # @!attribute provider
      #   TTS provider. Required unless `voice` is provided.
      #
      #   @return [Symbol, Telnyx::Models::TextToSpeechGenerateParams::Provider, nil]
      optional :provider, enum: -> { Telnyx::TextToSpeechGenerateParams::Provider }

      # @!attribute resemble
      #   Resemble AI provider-specific parameters.
      #
      #   @return [Telnyx::Models::TextToSpeechGenerateParams::Resemble, nil]
      optional :resemble, -> { Telnyx::TextToSpeechGenerateParams::Resemble }

      # @!attribute rime
      #   Rime provider-specific parameters.
      #
      #   @return [Telnyx::Models::TextToSpeechGenerateParams::Rime, nil]
      optional :rime, -> { Telnyx::TextToSpeechGenerateParams::Rime }

      # @!attribute telnyx
      #   Telnyx provider-specific parameters.
      #
      #   @return [::Telnyx::Models::TextToSpeechGenerateParams::Telnyx, nil]
      optional :telnyx, -> { ::Telnyx::TextToSpeechGenerateParams::Telnyx }

      # @!attribute text
      #   The text to convert to speech.
      #
      #   @return [String, nil]
      optional :text, String

      # @!attribute text_type
      #   Text type. Use `ssml` for SSML-formatted input (supported by AWS and Azure).
      #
      #   @return [Symbol, Telnyx::Models::TextToSpeechGenerateParams::TextType, nil]
      optional :text_type, enum: -> { Telnyx::TextToSpeechGenerateParams::TextType }

      # @!attribute voice
      #   Voice identifier in the format `provider.model_id.voice_id` or
      #   `provider.voice_id`. Examples: `telnyx.NaturalHD.Alloy`,
      #   `azure.en-US-AvaMultilingualNeural`, `aws.Polly.Generative.Lucia`. When
      #   provided, `provider`, `model_id`, and `voice_id` are extracted automatically and
      #   take precedence over individual parameters.
      #
      #   @return [String, nil]
      optional :voice, String

      # @!attribute voice_settings
      #   Provider-specific voice settings. Contents vary by provider — see
      #   provider-specific parameter objects below.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :voice_settings, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!method initialize(aws: nil, azure: nil, disable_cache: nil, elevenlabs: nil, language: nil, minimax: nil, output_type: nil, provider: nil, resemble: nil, rime: nil, telnyx: nil, text: nil, text_type: nil, voice: nil, voice_settings: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TextToSpeechGenerateParams} for more details.
      #
      #   @param aws [Telnyx::Models::TextToSpeechGenerateParams::Aws] AWS Polly provider-specific parameters.
      #
      #   @param azure [Telnyx::Models::TextToSpeechGenerateParams::Azure] Azure Cognitive Services provider-specific parameters.
      #
      #   @param disable_cache [Boolean] When `true`, bypass the audio cache and generate fresh audio.
      #
      #   @param elevenlabs [Telnyx::Models::TextToSpeechGenerateParams::Elevenlabs] ElevenLabs provider-specific parameters.
      #
      #   @param language [String] Language code (e.g. `en-US`). Usage varies by provider.
      #
      #   @param minimax [Telnyx::Models::TextToSpeechGenerateParams::Minimax] Minimax provider-specific parameters.
      #
      #   @param output_type [Symbol, Telnyx::Models::TextToSpeechGenerateParams::OutputType] Determines the response format. `binary_output` returns raw audio bytes, `base64
      #
      #   @param provider [Symbol, Telnyx::Models::TextToSpeechGenerateParams::Provider] TTS provider. Required unless `voice` is provided.
      #
      #   @param resemble [Telnyx::Models::TextToSpeechGenerateParams::Resemble] Resemble AI provider-specific parameters.
      #
      #   @param rime [Telnyx::Models::TextToSpeechGenerateParams::Rime] Rime provider-specific parameters.
      #
      #   @param telnyx [::Telnyx::Models::TextToSpeechGenerateParams::Telnyx] Telnyx provider-specific parameters.
      #
      #   @param text [String] The text to convert to speech.
      #
      #   @param text_type [Symbol, Telnyx::Models::TextToSpeechGenerateParams::TextType] Text type. Use `ssml` for SSML-formatted input (supported by AWS and Azure).
      #
      #   @param voice [String] Voice identifier in the format `provider.model_id.voice_id` or `provider.voice_i
      #
      #   @param voice_settings [Hash{Symbol=>Object}] Provider-specific voice settings. Contents vary by provider — see provider-speci
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Aws < Telnyx::Internal::Type::BaseModel
        # @!attribute language_code
        #   Language code (e.g. `en-US`, `es-ES`).
        #
        #   @return [String, nil]
        optional :language_code, String

        # @!attribute lexicon_names
        #   List of lexicon names to apply.
        #
        #   @return [Array<String>, nil]
        optional :lexicon_names, Telnyx::Internal::Type::ArrayOf[String]

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
        #   @return [Symbol, Telnyx::Models::TextToSpeechGenerateParams::Aws::TextType, nil]
        optional :text_type, enum: -> { Telnyx::TextToSpeechGenerateParams::Aws::TextType }

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
        #   @param text_type [Symbol, Telnyx::Models::TextToSpeechGenerateParams::Aws::TextType] Input text type.

        # Input text type.
        #
        # @see Telnyx::Models::TextToSpeechGenerateParams::Aws#text_type
        module TextType
          extend Telnyx::Internal::Type::Enum

          TEXT = :text
          SSML = :ssml

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Azure < Telnyx::Internal::Type::BaseModel
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
        #   @return [Symbol, Telnyx::Models::TextToSpeechGenerateParams::Azure::TextType, nil]
        optional :text_type, enum: -> { Telnyx::TextToSpeechGenerateParams::Azure::TextType }

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
        #   @param text_type [Symbol, Telnyx::Models::TextToSpeechGenerateParams::Azure::TextType] Input text type. Use `ssml` for SSML-formatted input.

        # Input text type. Use `ssml` for SSML-formatted input.
        #
        # @see Telnyx::Models::TextToSpeechGenerateParams::Azure#text_type
        module TextType
          extend Telnyx::Internal::Type::Enum

          TEXT = :text
          SSML = :ssml

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Elevenlabs < Telnyx::Internal::Type::BaseModel
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
        optional :voice_settings, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!method initialize(api_key: nil, language_code: nil, voice_settings: nil)
        #   ElevenLabs provider-specific parameters.
        #
        #   @param api_key [String] Custom ElevenLabs API key. If not provided, the default Telnyx key is used.
        #
        #   @param language_code [String] Language code.
        #
        #   @param voice_settings [Hash{Symbol=>Object}] ElevenLabs voice settings (stability, similarity_boost, etc.).
      end

      class Minimax < Telnyx::Internal::Type::BaseModel
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
        extend Telnyx::Internal::Type::Enum

        BINARY_OUTPUT = :binary_output
        BASE64_OUTPUT = :base64_output

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # TTS provider. Required unless `voice` is provided.
      module Provider
        extend Telnyx::Internal::Type::Enum

        AWS = :aws
        TELNYX = :telnyx
        AZURE = :azure
        ELEVENLABS = :elevenlabs
        MINIMAX = :minimax
        RIME = :rime
        RESEMBLE = :resemble

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Resemble < Telnyx::Internal::Type::BaseModel
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

      class Rime < Telnyx::Internal::Type::BaseModel
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
        #   Sampling temperature.
        #
        #   @return [Float, nil]
        optional :temperature, Float

        # @!attribute voice_speed
        #   Voice speed multiplier.
        #
        #   @return [Float, nil]
        optional :voice_speed, Float

        # @!method initialize(response_format: nil, sampling_rate: nil, temperature: nil, voice_speed: nil)
        #   Telnyx provider-specific parameters.
        #
        #   @param response_format [String] Audio response format.
        #
        #   @param sampling_rate [Integer] Audio sampling rate in Hz.
        #
        #   @param temperature [Float] Sampling temperature.
        #
        #   @param voice_speed [Float] Voice speed multiplier.
      end

      # Text type. Use `ssml` for SSML-formatted input (supported by AWS and Azure).
      module TextType
        extend Telnyx::Internal::Type::Enum

        TEXT = :text
        SSML = :ssml

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
