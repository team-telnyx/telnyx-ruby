# typed: strong

module Telnyx
  module Models
    class TextToSpeechCreateSpeechParams < ::Telnyx::Internal::Type::BaseModel
      extend ::Telnyx::Internal::Type::RequestParameters::Converter
      include ::Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ::Telnyx::TextToSpeechCreateSpeechParams,
            ::Telnyx::Internal::AnyHash
          )
        end

      # AWS Polly provider-specific parameters.
      sig { returns(T.nilable(::Telnyx::TextToSpeechCreateSpeechParams::Aws)) }
      attr_reader :aws

      sig do
        params(aws: ::Telnyx::TextToSpeechCreateSpeechParams::Aws::OrHash).void
      end
      attr_writer :aws

      # Azure Cognitive Services provider-specific parameters.
      sig do
        returns(T.nilable(::Telnyx::TextToSpeechCreateSpeechParams::Azure))
      end
      attr_reader :azure

      sig do
        params(
          azure: ::Telnyx::TextToSpeechCreateSpeechParams::Azure::OrHash
        ).void
      end
      attr_writer :azure

      # When `true`, bypass the audio cache and generate fresh audio.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :disable_cache

      sig { params(disable_cache: T::Boolean).void }
      attr_writer :disable_cache

      # ElevenLabs provider-specific parameters.
      sig do
        returns(T.nilable(::Telnyx::TextToSpeechCreateSpeechParams::Elevenlabs))
      end
      attr_reader :elevenlabs

      sig do
        params(
          elevenlabs:
            ::Telnyx::TextToSpeechCreateSpeechParams::Elevenlabs::OrHash
        ).void
      end
      attr_writer :elevenlabs

      # Language code (e.g. `en-US`). Usage varies by provider.
      sig { returns(T.nilable(String)) }
      attr_reader :language

      sig { params(language: String).void }
      attr_writer :language

      # Minimax provider-specific parameters.
      sig do
        returns(T.nilable(::Telnyx::TextToSpeechCreateSpeechParams::Minimax))
      end
      attr_reader :minimax

      sig do
        params(
          minimax: ::Telnyx::TextToSpeechCreateSpeechParams::Minimax::OrHash
        ).void
      end
      attr_writer :minimax

      # Determines the response format. `binary_output` returns raw audio bytes,
      # `base64_output` returns base64-encoded audio in JSON.
      sig do
        returns(
          T.nilable(
            ::Telnyx::TextToSpeechCreateSpeechParams::OutputType::OrSymbol
          )
        )
      end
      attr_reader :output_type

      sig do
        params(
          output_type:
            ::Telnyx::TextToSpeechCreateSpeechParams::OutputType::OrSymbol
        ).void
      end
      attr_writer :output_type

      # TTS provider. Required unless `voice` is provided.
      sig do
        returns(
          T.nilable(
            ::Telnyx::TextToSpeechCreateSpeechParams::Provider::OrSymbol
          )
        )
      end
      attr_reader :provider

      sig do
        params(
          provider: ::Telnyx::TextToSpeechCreateSpeechParams::Provider::OrSymbol
        ).void
      end
      attr_writer :provider

      # Resemble AI provider-specific parameters.
      sig do
        returns(T.nilable(::Telnyx::TextToSpeechCreateSpeechParams::Resemble))
      end
      attr_reader :resemble

      sig do
        params(
          resemble: ::Telnyx::TextToSpeechCreateSpeechParams::Resemble::OrHash
        ).void
      end
      attr_writer :resemble

      # Rime provider-specific parameters.
      sig { returns(T.nilable(::Telnyx::TextToSpeechCreateSpeechParams::Rime)) }
      attr_reader :rime

      sig do
        params(
          rime: ::Telnyx::TextToSpeechCreateSpeechParams::Rime::OrHash
        ).void
      end
      attr_writer :rime

      # Telnyx provider-specific parameters. Use `voice_speed` and `temperature` for
      # `Natural` and `NaturalHD` models. For the `Ultra` model, use `voice_speed`,
      # `volume`, and `emotion`.
      sig do
        returns(T.nilable(::Telnyx::TextToSpeechCreateSpeechParams::Telnyx))
      end
      attr_reader :telnyx

      sig do
        params(
          telnyx: ::Telnyx::TextToSpeechCreateSpeechParams::Telnyx::OrHash
        ).void
      end
      attr_writer :telnyx

      # The text to convert to speech.
      sig { returns(T.nilable(String)) }
      attr_reader :text

      sig { params(text: String).void }
      attr_writer :text

      # Text type. Use `ssml` for SSML-formatted input (supported by AWS and Azure).
      sig do
        returns(
          T.nilable(
            ::Telnyx::TextToSpeechCreateSpeechParams::TextType::OrSymbol
          )
        )
      end
      attr_reader :text_type

      sig do
        params(
          text_type:
            ::Telnyx::TextToSpeechCreateSpeechParams::TextType::OrSymbol
        ).void
      end
      attr_writer :text_type

      # Voice identifier in the format `provider.model_id.voice_id` or
      # `provider.voice_id`. Examples: `telnyx.NaturalHD.Alloy`,
      # `Telnyx.Ultra.<voice_id>`, `azure.en-US-AvaMultilingualNeural`,
      # `aws.Polly.Generative.Lucia`. When provided, `provider`, `model_id`, and
      # `voice_id` are extracted automatically and take precedence over individual
      # parameters.
      sig { returns(T.nilable(String)) }
      attr_reader :voice

      sig { params(voice: String).void }
      attr_writer :voice

      # Provider-specific voice settings. Contents vary by provider — see
      # provider-specific parameter objects below.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :voice_settings

      sig { params(voice_settings: T::Hash[Symbol, T.anything]).void }
      attr_writer :voice_settings

      # xAI provider-specific parameters.
      sig { returns(T.nilable(::Telnyx::TextToSpeechCreateSpeechParams::Xai)) }
      attr_reader :xai

      sig do
        params(xai: ::Telnyx::TextToSpeechCreateSpeechParams::Xai::OrHash).void
      end
      attr_writer :xai

      sig do
        params(
          aws: ::Telnyx::TextToSpeechCreateSpeechParams::Aws::OrHash,
          azure: ::Telnyx::TextToSpeechCreateSpeechParams::Azure::OrHash,
          disable_cache: T::Boolean,
          elevenlabs:
            ::Telnyx::TextToSpeechCreateSpeechParams::Elevenlabs::OrHash,
          language: String,
          minimax: ::Telnyx::TextToSpeechCreateSpeechParams::Minimax::OrHash,
          output_type:
            ::Telnyx::TextToSpeechCreateSpeechParams::OutputType::OrSymbol,
          provider:
            ::Telnyx::TextToSpeechCreateSpeechParams::Provider::OrSymbol,
          resemble: ::Telnyx::TextToSpeechCreateSpeechParams::Resemble::OrHash,
          rime: ::Telnyx::TextToSpeechCreateSpeechParams::Rime::OrHash,
          telnyx: ::Telnyx::TextToSpeechCreateSpeechParams::Telnyx::OrHash,
          text: String,
          text_type:
            ::Telnyx::TextToSpeechCreateSpeechParams::TextType::OrSymbol,
          voice: String,
          voice_settings: T::Hash[Symbol, T.anything],
          xai: ::Telnyx::TextToSpeechCreateSpeechParams::Xai::OrHash,
          request_options: ::Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # AWS Polly provider-specific parameters.
        aws: nil,
        # Azure Cognitive Services provider-specific parameters.
        azure: nil,
        # When `true`, bypass the audio cache and generate fresh audio.
        disable_cache: nil,
        # ElevenLabs provider-specific parameters.
        elevenlabs: nil,
        # Language code (e.g. `en-US`). Usage varies by provider.
        language: nil,
        # Minimax provider-specific parameters.
        minimax: nil,
        # Determines the response format. `binary_output` returns raw audio bytes,
        # `base64_output` returns base64-encoded audio in JSON.
        output_type: nil,
        # TTS provider. Required unless `voice` is provided.
        provider: nil,
        # Resemble AI provider-specific parameters.
        resemble: nil,
        # Rime provider-specific parameters.
        rime: nil,
        # Telnyx provider-specific parameters. Use `voice_speed` and `temperature` for
        # `Natural` and `NaturalHD` models. For the `Ultra` model, use `voice_speed`,
        # `volume`, and `emotion`.
        telnyx: nil,
        # The text to convert to speech.
        text: nil,
        # Text type. Use `ssml` for SSML-formatted input (supported by AWS and Azure).
        text_type: nil,
        # Voice identifier in the format `provider.model_id.voice_id` or
        # `provider.voice_id`. Examples: `telnyx.NaturalHD.Alloy`,
        # `Telnyx.Ultra.<voice_id>`, `azure.en-US-AvaMultilingualNeural`,
        # `aws.Polly.Generative.Lucia`. When provided, `provider`, `model_id`, and
        # `voice_id` are extracted automatically and take precedence over individual
        # parameters.
        voice: nil,
        # Provider-specific voice settings. Contents vary by provider — see
        # provider-specific parameter objects below.
        voice_settings: nil,
        # xAI provider-specific parameters.
        xai: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            aws: ::Telnyx::TextToSpeechCreateSpeechParams::Aws,
            azure: ::Telnyx::TextToSpeechCreateSpeechParams::Azure,
            disable_cache: T::Boolean,
            elevenlabs: ::Telnyx::TextToSpeechCreateSpeechParams::Elevenlabs,
            language: String,
            minimax: ::Telnyx::TextToSpeechCreateSpeechParams::Minimax,
            output_type:
              ::Telnyx::TextToSpeechCreateSpeechParams::OutputType::OrSymbol,
            provider:
              ::Telnyx::TextToSpeechCreateSpeechParams::Provider::OrSymbol,
            resemble: ::Telnyx::TextToSpeechCreateSpeechParams::Resemble,
            rime: ::Telnyx::TextToSpeechCreateSpeechParams::Rime,
            telnyx: ::Telnyx::TextToSpeechCreateSpeechParams::Telnyx,
            text: String,
            text_type:
              ::Telnyx::TextToSpeechCreateSpeechParams::TextType::OrSymbol,
            voice: String,
            voice_settings: T::Hash[Symbol, T.anything],
            xai: ::Telnyx::TextToSpeechCreateSpeechParams::Xai,
            request_options: ::Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Aws < ::Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ::Telnyx::TextToSpeechCreateSpeechParams::Aws,
              ::Telnyx::Internal::AnyHash
            )
          end

        # Language code (e.g. `en-US`, `es-ES`).
        sig { returns(T.nilable(String)) }
        attr_reader :language_code

        sig { params(language_code: String).void }
        attr_writer :language_code

        # List of lexicon names to apply.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :lexicon_names

        sig { params(lexicon_names: T::Array[String]).void }
        attr_writer :lexicon_names

        # Audio output format.
        sig { returns(T.nilable(String)) }
        attr_reader :output_format

        sig { params(output_format: String).void }
        attr_writer :output_format

        # Audio sample rate.
        sig { returns(T.nilable(String)) }
        attr_reader :sample_rate

        sig { params(sample_rate: String).void }
        attr_writer :sample_rate

        # Input text type.
        sig do
          returns(
            T.nilable(
              ::Telnyx::TextToSpeechCreateSpeechParams::Aws::TextType::OrSymbol
            )
          )
        end
        attr_reader :text_type

        sig do
          params(
            text_type:
              ::Telnyx::TextToSpeechCreateSpeechParams::Aws::TextType::OrSymbol
          ).void
        end
        attr_writer :text_type

        # AWS Polly provider-specific parameters.
        sig do
          params(
            language_code: String,
            lexicon_names: T::Array[String],
            output_format: String,
            sample_rate: String,
            text_type:
              ::Telnyx::TextToSpeechCreateSpeechParams::Aws::TextType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Language code (e.g. `en-US`, `es-ES`).
          language_code: nil,
          # List of lexicon names to apply.
          lexicon_names: nil,
          # Audio output format.
          output_format: nil,
          # Audio sample rate.
          sample_rate: nil,
          # Input text type.
          text_type: nil
        )
        end

        sig do
          override.returns(
            {
              language_code: String,
              lexicon_names: T::Array[String],
              output_format: String,
              sample_rate: String,
              text_type:
                ::Telnyx::TextToSpeechCreateSpeechParams::Aws::TextType::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Input text type.
        module TextType
          extend ::Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ::Telnyx::TextToSpeechCreateSpeechParams::Aws::TextType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(
              :text,
              ::Telnyx::TextToSpeechCreateSpeechParams::Aws::TextType::TaggedSymbol
            )
          SSML =
            T.let(
              :ssml,
              ::Telnyx::TextToSpeechCreateSpeechParams::Aws::TextType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ::Telnyx::TextToSpeechCreateSpeechParams::Aws::TextType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Azure < ::Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ::Telnyx::TextToSpeechCreateSpeechParams::Azure,
              ::Telnyx::Internal::AnyHash
            )
          end

        # Custom Azure API key. If not provided, the default Telnyx key is used.
        sig { returns(T.nilable(String)) }
        attr_reader :api_key

        sig { params(api_key: String).void }
        attr_writer :api_key

        # Custom Azure deployment ID.
        sig { returns(T.nilable(String)) }
        attr_reader :deployment_id

        sig { params(deployment_id: String).void }
        attr_writer :deployment_id

        # Azure audio effect to apply.
        sig { returns(T.nilable(String)) }
        attr_reader :effect

        sig { params(effect: String).void }
        attr_writer :effect

        # Voice gender preference.
        sig { returns(T.nilable(String)) }
        attr_reader :gender

        sig { params(gender: String).void }
        attr_writer :gender

        # Language code (e.g. `en-US`).
        sig { returns(T.nilable(String)) }
        attr_reader :language_code

        sig { params(language_code: String).void }
        attr_writer :language_code

        # Azure audio output format.
        sig { returns(T.nilable(String)) }
        attr_reader :output_format

        sig { params(output_format: String).void }
        attr_writer :output_format

        # Azure region (e.g. `eastus`, `westeurope`).
        sig { returns(T.nilable(String)) }
        attr_reader :region

        sig { params(region: String).void }
        attr_writer :region

        # Input text type. Use `ssml` for SSML-formatted input.
        sig do
          returns(
            T.nilable(
              ::Telnyx::TextToSpeechCreateSpeechParams::Azure::TextType::OrSymbol
            )
          )
        end
        attr_reader :text_type

        sig do
          params(
            text_type:
              ::Telnyx::TextToSpeechCreateSpeechParams::Azure::TextType::OrSymbol
          ).void
        end
        attr_writer :text_type

        # Azure Cognitive Services provider-specific parameters.
        sig do
          params(
            api_key: String,
            deployment_id: String,
            effect: String,
            gender: String,
            language_code: String,
            output_format: String,
            region: String,
            text_type:
              ::Telnyx::TextToSpeechCreateSpeechParams::Azure::TextType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Custom Azure API key. If not provided, the default Telnyx key is used.
          api_key: nil,
          # Custom Azure deployment ID.
          deployment_id: nil,
          # Azure audio effect to apply.
          effect: nil,
          # Voice gender preference.
          gender: nil,
          # Language code (e.g. `en-US`).
          language_code: nil,
          # Azure audio output format.
          output_format: nil,
          # Azure region (e.g. `eastus`, `westeurope`).
          region: nil,
          # Input text type. Use `ssml` for SSML-formatted input.
          text_type: nil
        )
        end

        sig do
          override.returns(
            {
              api_key: String,
              deployment_id: String,
              effect: String,
              gender: String,
              language_code: String,
              output_format: String,
              region: String,
              text_type:
                ::Telnyx::TextToSpeechCreateSpeechParams::Azure::TextType::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Input text type. Use `ssml` for SSML-formatted input.
        module TextType
          extend ::Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ::Telnyx::TextToSpeechCreateSpeechParams::Azure::TextType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(
              :text,
              ::Telnyx::TextToSpeechCreateSpeechParams::Azure::TextType::TaggedSymbol
            )
          SSML =
            T.let(
              :ssml,
              ::Telnyx::TextToSpeechCreateSpeechParams::Azure::TextType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ::Telnyx::TextToSpeechCreateSpeechParams::Azure::TextType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Elevenlabs < ::Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ::Telnyx::TextToSpeechCreateSpeechParams::Elevenlabs,
              ::Telnyx::Internal::AnyHash
            )
          end

        # Custom ElevenLabs API key. If not provided, the default Telnyx key is used.
        sig { returns(T.nilable(String)) }
        attr_reader :api_key

        sig { params(api_key: String).void }
        attr_writer :api_key

        # Language code.
        sig { returns(T.nilable(String)) }
        attr_reader :language_code

        sig { params(language_code: String).void }
        attr_writer :language_code

        # ElevenLabs voice settings (stability, similarity_boost, etc.).
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :voice_settings

        sig { params(voice_settings: T::Hash[Symbol, T.anything]).void }
        attr_writer :voice_settings

        # ElevenLabs provider-specific parameters.
        sig do
          params(
            api_key: String,
            language_code: String,
            voice_settings: T::Hash[Symbol, T.anything]
          ).returns(T.attached_class)
        end
        def self.new(
          # Custom ElevenLabs API key. If not provided, the default Telnyx key is used.
          api_key: nil,
          # Language code.
          language_code: nil,
          # ElevenLabs voice settings (stability, similarity_boost, etc.).
          voice_settings: nil
        )
        end

        sig do
          override.returns(
            {
              api_key: String,
              language_code: String,
              voice_settings: T::Hash[Symbol, T.anything]
            }
          )
        end
        def to_hash
        end
      end

      class Minimax < ::Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ::Telnyx::TextToSpeechCreateSpeechParams::Minimax,
              ::Telnyx::Internal::AnyHash
            )
          end

        # Language code to boost pronunciation for.
        sig { returns(T.nilable(String)) }
        attr_reader :language_boost

        sig { params(language_boost: String).void }
        attr_writer :language_boost

        # Pitch adjustment.
        sig { returns(T.nilable(Integer)) }
        attr_reader :pitch

        sig { params(pitch: Integer).void }
        attr_writer :pitch

        # Audio output format.
        sig { returns(T.nilable(String)) }
        attr_reader :response_format

        sig { params(response_format: String).void }
        attr_writer :response_format

        # Speech speed multiplier.
        sig { returns(T.nilable(Float)) }
        attr_reader :speed

        sig { params(speed: Float).void }
        attr_writer :speed

        # Volume level.
        sig { returns(T.nilable(Float)) }
        attr_reader :vol

        sig { params(vol: Float).void }
        attr_writer :vol

        # Minimax provider-specific parameters.
        sig do
          params(
            language_boost: String,
            pitch: Integer,
            response_format: String,
            speed: Float,
            vol: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Language code to boost pronunciation for.
          language_boost: nil,
          # Pitch adjustment.
          pitch: nil,
          # Audio output format.
          response_format: nil,
          # Speech speed multiplier.
          speed: nil,
          # Volume level.
          vol: nil
        )
        end

        sig do
          override.returns(
            {
              language_boost: String,
              pitch: Integer,
              response_format: String,
              speed: Float,
              vol: Float
            }
          )
        end
        def to_hash
        end
      end

      # Determines the response format. `binary_output` returns raw audio bytes,
      # `base64_output` returns base64-encoded audio in JSON.
      module OutputType
        extend ::Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ::Telnyx::TextToSpeechCreateSpeechParams::OutputType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BINARY_OUTPUT =
          T.let(
            :binary_output,
            ::Telnyx::TextToSpeechCreateSpeechParams::OutputType::TaggedSymbol
          )
        BASE64_OUTPUT =
          T.let(
            :base64_output,
            ::Telnyx::TextToSpeechCreateSpeechParams::OutputType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ::Telnyx::TextToSpeechCreateSpeechParams::OutputType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # TTS provider. Required unless `voice` is provided.
      module Provider
        extend ::Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ::Telnyx::TextToSpeechCreateSpeechParams::Provider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AWS =
          T.let(
            :aws,
            ::Telnyx::TextToSpeechCreateSpeechParams::Provider::TaggedSymbol
          )
        TELNYX =
          T.let(
            :telnyx,
            ::Telnyx::TextToSpeechCreateSpeechParams::Provider::TaggedSymbol
          )
        AZURE =
          T.let(
            :azure,
            ::Telnyx::TextToSpeechCreateSpeechParams::Provider::TaggedSymbol
          )
        ELEVENLABS =
          T.let(
            :elevenlabs,
            ::Telnyx::TextToSpeechCreateSpeechParams::Provider::TaggedSymbol
          )
        MINIMAX =
          T.let(
            :minimax,
            ::Telnyx::TextToSpeechCreateSpeechParams::Provider::TaggedSymbol
          )
        RIME =
          T.let(
            :rime,
            ::Telnyx::TextToSpeechCreateSpeechParams::Provider::TaggedSymbol
          )
        RESEMBLE =
          T.let(
            :resemble,
            ::Telnyx::TextToSpeechCreateSpeechParams::Provider::TaggedSymbol
          )
        XAI =
          T.let(
            :xai,
            ::Telnyx::TextToSpeechCreateSpeechParams::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ::Telnyx::TextToSpeechCreateSpeechParams::Provider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Resemble < ::Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ::Telnyx::TextToSpeechCreateSpeechParams::Resemble,
              ::Telnyx::Internal::AnyHash
            )
          end

        # Custom Resemble API key.
        sig { returns(T.nilable(String)) }
        attr_reader :api_key

        sig { params(api_key: String).void }
        attr_writer :api_key

        # Audio output format.
        sig { returns(T.nilable(String)) }
        attr_reader :file_format

        sig { params(file_format: String).void }
        attr_writer :file_format

        # Synthesis precision.
        sig { returns(T.nilable(String)) }
        attr_reader :precision

        sig { params(precision: String).void }
        attr_writer :precision

        # Audio sample rate.
        sig { returns(T.nilable(String)) }
        attr_reader :sample_rate

        sig { params(sample_rate: String).void }
        attr_writer :sample_rate

        # Resemble AI provider-specific parameters.
        sig do
          params(
            api_key: String,
            file_format: String,
            precision: String,
            sample_rate: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Custom Resemble API key.
          api_key: nil,
          # Audio output format.
          file_format: nil,
          # Synthesis precision.
          precision: nil,
          # Audio sample rate.
          sample_rate: nil
        )
        end

        sig do
          override.returns(
            {
              api_key: String,
              file_format: String,
              precision: String,
              sample_rate: String
            }
          )
        end
        def to_hash
        end
      end

      class Rime < ::Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ::Telnyx::TextToSpeechCreateSpeechParams::Rime,
              ::Telnyx::Internal::AnyHash
            )
          end

        # Audio output format.
        sig { returns(T.nilable(String)) }
        attr_reader :response_format

        sig { params(response_format: String).void }
        attr_writer :response_format

        # Audio sampling rate in Hz.
        sig { returns(T.nilable(Integer)) }
        attr_reader :sampling_rate

        sig { params(sampling_rate: Integer).void }
        attr_writer :sampling_rate

        # Voice speed multiplier.
        sig { returns(T.nilable(Float)) }
        attr_reader :voice_speed

        sig { params(voice_speed: Float).void }
        attr_writer :voice_speed

        # Rime provider-specific parameters.
        sig do
          params(
            response_format: String,
            sampling_rate: Integer,
            voice_speed: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Audio output format.
          response_format: nil,
          # Audio sampling rate in Hz.
          sampling_rate: nil,
          # Voice speed multiplier.
          voice_speed: nil
        )
        end

        sig do
          override.returns(
            {
              response_format: String,
              sampling_rate: Integer,
              voice_speed: Float
            }
          )
        end
        def to_hash
        end
      end

      class Telnyx < ::Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ::Telnyx::TextToSpeechCreateSpeechParams::Telnyx,
              ::Telnyx::Internal::AnyHash
            )
          end

        # Emotion control for the Ultra model. Adjusts the emotional tone of the
        # synthesized speech.
        sig do
          returns(
            T.nilable(
              ::Telnyx::TextToSpeechCreateSpeechParams::Telnyx::Emotion::OrSymbol
            )
          )
        end
        attr_reader :emotion

        sig do
          params(
            emotion:
              ::Telnyx::TextToSpeechCreateSpeechParams::Telnyx::Emotion::OrSymbol
          ).void
        end
        attr_writer :emotion

        # Audio response format.
        sig { returns(T.nilable(String)) }
        attr_reader :response_format

        sig { params(response_format: String).void }
        attr_writer :response_format

        # Audio sampling rate in Hz.
        sig { returns(T.nilable(Integer)) }
        attr_reader :sampling_rate

        sig { params(sampling_rate: Integer).void }
        attr_writer :sampling_rate

        # Sampling temperature. Applies to `Natural` and `NaturalHD` models only.
        sig { returns(T.nilable(Float)) }
        attr_reader :temperature

        sig { params(temperature: Float).void }
        attr_writer :temperature

        # Voice speed multiplier. Applies to all models. Range: 0.5 to 2.0.
        sig { returns(T.nilable(Float)) }
        attr_reader :voice_speed

        sig { params(voice_speed: Float).void }
        attr_writer :voice_speed

        # Volume level for the Ultra model. Range: 0.0 to 2.0.
        sig { returns(T.nilable(Float)) }
        attr_reader :volume

        sig { params(volume: Float).void }
        attr_writer :volume

        # Telnyx provider-specific parameters. Use `voice_speed` and `temperature` for
        # `Natural` and `NaturalHD` models. For the `Ultra` model, use `voice_speed`,
        # `volume`, and `emotion`.
        sig do
          params(
            emotion:
              ::Telnyx::TextToSpeechCreateSpeechParams::Telnyx::Emotion::OrSymbol,
            response_format: String,
            sampling_rate: Integer,
            temperature: Float,
            voice_speed: Float,
            volume: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Emotion control for the Ultra model. Adjusts the emotional tone of the
          # synthesized speech.
          emotion: nil,
          # Audio response format.
          response_format: nil,
          # Audio sampling rate in Hz.
          sampling_rate: nil,
          # Sampling temperature. Applies to `Natural` and `NaturalHD` models only.
          temperature: nil,
          # Voice speed multiplier. Applies to all models. Range: 0.5 to 2.0.
          voice_speed: nil,
          # Volume level for the Ultra model. Range: 0.0 to 2.0.
          volume: nil
        )
        end

        sig do
          override.returns(
            {
              emotion:
                ::Telnyx::TextToSpeechCreateSpeechParams::Telnyx::Emotion::OrSymbol,
              response_format: String,
              sampling_rate: Integer,
              temperature: Float,
              voice_speed: Float,
              volume: Float
            }
          )
        end
        def to_hash
        end

        # Emotion control for the Ultra model. Adjusts the emotional tone of the
        # synthesized speech.
        module Emotion
          extend ::Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ::Telnyx::TextToSpeechCreateSpeechParams::Telnyx::Emotion
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NEUTRAL =
            T.let(
              :neutral,
              ::Telnyx::TextToSpeechCreateSpeechParams::Telnyx::Emotion::TaggedSymbol
            )
          HAPPY =
            T.let(
              :happy,
              ::Telnyx::TextToSpeechCreateSpeechParams::Telnyx::Emotion::TaggedSymbol
            )
          SAD =
            T.let(
              :sad,
              ::Telnyx::TextToSpeechCreateSpeechParams::Telnyx::Emotion::TaggedSymbol
            )
          ANGRY =
            T.let(
              :angry,
              ::Telnyx::TextToSpeechCreateSpeechParams::Telnyx::Emotion::TaggedSymbol
            )
          FEARFUL =
            T.let(
              :fearful,
              ::Telnyx::TextToSpeechCreateSpeechParams::Telnyx::Emotion::TaggedSymbol
            )
          DISGUSTED =
            T.let(
              :disgusted,
              ::Telnyx::TextToSpeechCreateSpeechParams::Telnyx::Emotion::TaggedSymbol
            )
          SURPRISED =
            T.let(
              :surprised,
              ::Telnyx::TextToSpeechCreateSpeechParams::Telnyx::Emotion::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ::Telnyx::TextToSpeechCreateSpeechParams::Telnyx::Emotion::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Text type. Use `ssml` for SSML-formatted input (supported by AWS and Azure).
      module TextType
        extend ::Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ::Telnyx::TextToSpeechCreateSpeechParams::TextType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TEXT =
          T.let(
            :text,
            ::Telnyx::TextToSpeechCreateSpeechParams::TextType::TaggedSymbol
          )
        SSML =
          T.let(
            :ssml,
            ::Telnyx::TextToSpeechCreateSpeechParams::TextType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ::Telnyx::TextToSpeechCreateSpeechParams::TextType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Xai < ::Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai,
              ::Telnyx::Internal::AnyHash
            )
          end

        # xAI voice identifier.
        sig do
          returns(
            ::Telnyx::TextToSpeechCreateSpeechParams::Xai::VoiceID::OrSymbol
          )
        end
        attr_accessor :voice_id

        # Language code, or `auto` to detect.
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        # Audio output format.
        sig do
          returns(
            T.nilable(
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::OutputFormat::OrSymbol
            )
          )
        end
        attr_reader :output_format

        sig do
          params(
            output_format:
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::OutputFormat::OrSymbol
          ).void
        end
        attr_writer :output_format

        # Audio sample rate in Hz.
        sig do
          returns(
            T.nilable(
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::SampleRate::OrInteger
            )
          )
        end
        attr_reader :sample_rate

        sig do
          params(
            sample_rate:
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::SampleRate::OrInteger
          ).void
        end
        attr_writer :sample_rate

        # xAI provider-specific parameters.
        sig do
          params(
            voice_id:
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::VoiceID::OrSymbol,
            language: String,
            output_format:
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::OutputFormat::OrSymbol,
            sample_rate:
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::SampleRate::OrInteger
          ).returns(T.attached_class)
        end
        def self.new(
          # xAI voice identifier.
          voice_id:,
          # Language code, or `auto` to detect.
          language: nil,
          # Audio output format.
          output_format: nil,
          # Audio sample rate in Hz.
          sample_rate: nil
        )
        end

        sig do
          override.returns(
            {
              voice_id:
                ::Telnyx::TextToSpeechCreateSpeechParams::Xai::VoiceID::OrSymbol,
              language: String,
              output_format:
                ::Telnyx::TextToSpeechCreateSpeechParams::Xai::OutputFormat::OrSymbol,
              sample_rate:
                ::Telnyx::TextToSpeechCreateSpeechParams::Xai::SampleRate::OrInteger
            }
          )
        end
        def to_hash
        end

        # xAI voice identifier.
        module VoiceID
          extend ::Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ::Telnyx::TextToSpeechCreateSpeechParams::Xai::VoiceID
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVE =
            T.let(
              :eve,
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::VoiceID::TaggedSymbol
            )
          ARA =
            T.let(
              :ara,
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::VoiceID::TaggedSymbol
            )
          REX =
            T.let(
              :rex,
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::VoiceID::TaggedSymbol
            )
          SAL =
            T.let(
              :sal,
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::VoiceID::TaggedSymbol
            )
          LEO =
            T.let(
              :leo,
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::VoiceID::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ::Telnyx::TextToSpeechCreateSpeechParams::Xai::VoiceID::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Audio output format.
        module OutputFormat
          extend ::Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ::Telnyx::TextToSpeechCreateSpeechParams::Xai::OutputFormat
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MP3 =
            T.let(
              :mp3,
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::OutputFormat::TaggedSymbol
            )
          WAV =
            T.let(
              :wav,
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::OutputFormat::TaggedSymbol
            )
          PCM =
            T.let(
              :pcm,
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::OutputFormat::TaggedSymbol
            )
          MULAW =
            T.let(
              :mulaw,
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::OutputFormat::TaggedSymbol
            )
          ALAW =
            T.let(
              :alaw,
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::OutputFormat::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ::Telnyx::TextToSpeechCreateSpeechParams::Xai::OutputFormat::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Audio sample rate in Hz.
        module SampleRate
          extend ::Telnyx::Internal::Type::Enum

          TaggedInteger =
            T.type_alias do
              T.all(
                Integer,
                ::Telnyx::TextToSpeechCreateSpeechParams::Xai::SampleRate
              )
            end
          OrInteger = T.type_alias { Integer }

          RATE_8000 =
            T.let(
              8000,
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::SampleRate::TaggedInteger
            )
          RATE_16000 =
            T.let(
              16_000,
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::SampleRate::TaggedInteger
            )
          RATE_22050 =
            T.let(
              22_050,
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::SampleRate::TaggedInteger
            )
          RATE_24000 =
            T.let(
              24_000,
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::SampleRate::TaggedInteger
            )
          RATE_44100 =
            T.let(
              44_100,
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::SampleRate::TaggedInteger
            )
          RATE_48000 =
            T.let(
              48_000,
              ::Telnyx::TextToSpeechCreateSpeechParams::Xai::SampleRate::TaggedInteger
            )

          sig do
            override.returns(
              T::Array[
                ::Telnyx::TextToSpeechCreateSpeechParams::Xai::SampleRate::TaggedInteger
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
