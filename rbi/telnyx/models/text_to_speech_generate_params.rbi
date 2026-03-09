# typed: strong

module Telnyx
  module Models
    class TextToSpeechGenerateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::TextToSpeechGenerateParams, Telnyx::Internal::AnyHash)
        end

      # AWS Polly provider-specific parameters.
      sig { returns(T.nilable(Telnyx::TextToSpeechGenerateParams::Aws)) }
      attr_reader :aws

      sig { params(aws: Telnyx::TextToSpeechGenerateParams::Aws::OrHash).void }
      attr_writer :aws

      # Azure Cognitive Services provider-specific parameters.
      sig { returns(T.nilable(Telnyx::TextToSpeechGenerateParams::Azure)) }
      attr_reader :azure

      sig do
        params(azure: Telnyx::TextToSpeechGenerateParams::Azure::OrHash).void
      end
      attr_writer :azure

      # When `true`, bypass the audio cache and generate fresh audio.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :disable_cache

      sig { params(disable_cache: T::Boolean).void }
      attr_writer :disable_cache

      # ElevenLabs provider-specific parameters.
      sig { returns(T.nilable(Telnyx::TextToSpeechGenerateParams::Elevenlabs)) }
      attr_reader :elevenlabs

      sig do
        params(
          elevenlabs: Telnyx::TextToSpeechGenerateParams::Elevenlabs::OrHash
        ).void
      end
      attr_writer :elevenlabs

      # Inworld provider-specific parameters.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :inworld

      sig { params(inworld: T.anything).void }
      attr_writer :inworld

      # Language code (e.g. `en-US`). Usage varies by provider.
      sig { returns(T.nilable(String)) }
      attr_reader :language

      sig { params(language: String).void }
      attr_writer :language

      # Minimax provider-specific parameters.
      sig { returns(T.nilable(Telnyx::TextToSpeechGenerateParams::Minimax)) }
      attr_reader :minimax

      sig do
        params(
          minimax: Telnyx::TextToSpeechGenerateParams::Minimax::OrHash
        ).void
      end
      attr_writer :minimax

      # Determines the response format. `binary_output` returns raw audio bytes,
      # `base64_output` returns base64-encoded audio in JSON.
      sig do
        returns(
          T.nilable(Telnyx::TextToSpeechGenerateParams::OutputType::OrSymbol)
        )
      end
      attr_reader :output_type

      sig do
        params(
          output_type: Telnyx::TextToSpeechGenerateParams::OutputType::OrSymbol
        ).void
      end
      attr_writer :output_type

      # TTS provider. Required unless `voice` is provided.
      sig do
        returns(
          T.nilable(Telnyx::TextToSpeechGenerateParams::Provider::OrSymbol)
        )
      end
      attr_reader :provider

      sig do
        params(
          provider: Telnyx::TextToSpeechGenerateParams::Provider::OrSymbol
        ).void
      end
      attr_writer :provider

      # Resemble AI provider-specific parameters.
      sig { returns(T.nilable(Telnyx::TextToSpeechGenerateParams::Resemble)) }
      attr_reader :resemble

      sig do
        params(
          resemble: Telnyx::TextToSpeechGenerateParams::Resemble::OrHash
        ).void
      end
      attr_writer :resemble

      # Rime provider-specific parameters.
      sig { returns(T.nilable(Telnyx::TextToSpeechGenerateParams::Rime)) }
      attr_reader :rime

      sig do
        params(rime: Telnyx::TextToSpeechGenerateParams::Rime::OrHash).void
      end
      attr_writer :rime

      # Telnyx provider-specific parameters.
      sig { returns(T.nilable(::Telnyx::TextToSpeechGenerateParams::Telnyx)) }
      attr_reader :telnyx

      sig do
        params(
          telnyx: ::Telnyx::TextToSpeechGenerateParams::Telnyx::OrHash
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
          T.nilable(Telnyx::TextToSpeechGenerateParams::TextType::OrSymbol)
        )
      end
      attr_reader :text_type

      sig do
        params(
          text_type: Telnyx::TextToSpeechGenerateParams::TextType::OrSymbol
        ).void
      end
      attr_writer :text_type

      # Voice identifier in the format `provider.model_id.voice_id` or
      # `provider.voice_id`. Examples: `telnyx.NaturalHD.Alloy`,
      # `azure.en-US-AvaMultilingualNeural`, `aws.Polly.Generative.Lucia`. When
      # provided, `provider`, `model_id`, and `voice_id` are extracted automatically and
      # take precedence over individual parameters.
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

      sig do
        params(
          aws: Telnyx::TextToSpeechGenerateParams::Aws::OrHash,
          azure: Telnyx::TextToSpeechGenerateParams::Azure::OrHash,
          disable_cache: T::Boolean,
          elevenlabs: Telnyx::TextToSpeechGenerateParams::Elevenlabs::OrHash,
          inworld: T.anything,
          language: String,
          minimax: Telnyx::TextToSpeechGenerateParams::Minimax::OrHash,
          output_type: Telnyx::TextToSpeechGenerateParams::OutputType::OrSymbol,
          provider: Telnyx::TextToSpeechGenerateParams::Provider::OrSymbol,
          resemble: Telnyx::TextToSpeechGenerateParams::Resemble::OrHash,
          rime: Telnyx::TextToSpeechGenerateParams::Rime::OrHash,
          telnyx: ::Telnyx::TextToSpeechGenerateParams::Telnyx::OrHash,
          text: String,
          text_type: Telnyx::TextToSpeechGenerateParams::TextType::OrSymbol,
          voice: String,
          voice_settings: T::Hash[Symbol, T.anything],
          request_options: Telnyx::RequestOptions::OrHash
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
        # Inworld provider-specific parameters.
        inworld: nil,
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
        # Telnyx provider-specific parameters.
        telnyx: nil,
        # The text to convert to speech.
        text: nil,
        # Text type. Use `ssml` for SSML-formatted input (supported by AWS and Azure).
        text_type: nil,
        # Voice identifier in the format `provider.model_id.voice_id` or
        # `provider.voice_id`. Examples: `telnyx.NaturalHD.Alloy`,
        # `azure.en-US-AvaMultilingualNeural`, `aws.Polly.Generative.Lucia`. When
        # provided, `provider`, `model_id`, and `voice_id` are extracted automatically and
        # take precedence over individual parameters.
        voice: nil,
        # Provider-specific voice settings. Contents vary by provider — see
        # provider-specific parameter objects below.
        voice_settings: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            aws: Telnyx::TextToSpeechGenerateParams::Aws,
            azure: Telnyx::TextToSpeechGenerateParams::Azure,
            disable_cache: T::Boolean,
            elevenlabs: Telnyx::TextToSpeechGenerateParams::Elevenlabs,
            inworld: T.anything,
            language: String,
            minimax: Telnyx::TextToSpeechGenerateParams::Minimax,
            output_type:
              Telnyx::TextToSpeechGenerateParams::OutputType::OrSymbol,
            provider: Telnyx::TextToSpeechGenerateParams::Provider::OrSymbol,
            resemble: Telnyx::TextToSpeechGenerateParams::Resemble,
            rime: Telnyx::TextToSpeechGenerateParams::Rime,
            telnyx: ::Telnyx::TextToSpeechGenerateParams::Telnyx,
            text: String,
            text_type: Telnyx::TextToSpeechGenerateParams::TextType::OrSymbol,
            voice: String,
            voice_settings: T::Hash[Symbol, T.anything],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Aws < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::TextToSpeechGenerateParams::Aws,
              Telnyx::Internal::AnyHash
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
              Telnyx::TextToSpeechGenerateParams::Aws::TextType::OrSymbol
            )
          )
        end
        attr_reader :text_type

        sig do
          params(
            text_type:
              Telnyx::TextToSpeechGenerateParams::Aws::TextType::OrSymbol
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
              Telnyx::TextToSpeechGenerateParams::Aws::TextType::OrSymbol
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
                Telnyx::TextToSpeechGenerateParams::Aws::TextType::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Input text type.
        module TextType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::TextToSpeechGenerateParams::Aws::TextType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(
              :text,
              Telnyx::TextToSpeechGenerateParams::Aws::TextType::TaggedSymbol
            )
          SSML =
            T.let(
              :ssml,
              Telnyx::TextToSpeechGenerateParams::Aws::TextType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::TextToSpeechGenerateParams::Aws::TextType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Azure < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::TextToSpeechGenerateParams::Azure,
              Telnyx::Internal::AnyHash
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
              Telnyx::TextToSpeechGenerateParams::Azure::TextType::OrSymbol
            )
          )
        end
        attr_reader :text_type

        sig do
          params(
            text_type:
              Telnyx::TextToSpeechGenerateParams::Azure::TextType::OrSymbol
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
              Telnyx::TextToSpeechGenerateParams::Azure::TextType::OrSymbol
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
                Telnyx::TextToSpeechGenerateParams::Azure::TextType::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Input text type. Use `ssml` for SSML-formatted input.
        module TextType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::TextToSpeechGenerateParams::Azure::TextType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(
              :text,
              Telnyx::TextToSpeechGenerateParams::Azure::TextType::TaggedSymbol
            )
          SSML =
            T.let(
              :ssml,
              Telnyx::TextToSpeechGenerateParams::Azure::TextType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::TextToSpeechGenerateParams::Azure::TextType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Elevenlabs < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::TextToSpeechGenerateParams::Elevenlabs,
              Telnyx::Internal::AnyHash
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

      class Minimax < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::TextToSpeechGenerateParams::Minimax,
              Telnyx::Internal::AnyHash
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
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TextToSpeechGenerateParams::OutputType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BINARY_OUTPUT =
          T.let(
            :binary_output,
            Telnyx::TextToSpeechGenerateParams::OutputType::TaggedSymbol
          )
        BASE64_OUTPUT =
          T.let(
            :base64_output,
            Telnyx::TextToSpeechGenerateParams::OutputType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TextToSpeechGenerateParams::OutputType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # TTS provider. Required unless `voice` is provided.
      module Provider
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TextToSpeechGenerateParams::Provider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AWS =
          T.let(
            :aws,
            Telnyx::TextToSpeechGenerateParams::Provider::TaggedSymbol
          )
        TELNYX =
          T.let(
            :telnyx,
            Telnyx::TextToSpeechGenerateParams::Provider::TaggedSymbol
          )
        AZURE =
          T.let(
            :azure,
            Telnyx::TextToSpeechGenerateParams::Provider::TaggedSymbol
          )
        ELEVENLABS =
          T.let(
            :elevenlabs,
            Telnyx::TextToSpeechGenerateParams::Provider::TaggedSymbol
          )
        MINIMAX =
          T.let(
            :minimax,
            Telnyx::TextToSpeechGenerateParams::Provider::TaggedSymbol
          )
        RIME =
          T.let(
            :rime,
            Telnyx::TextToSpeechGenerateParams::Provider::TaggedSymbol
          )
        RESEMBLE =
          T.let(
            :resemble,
            Telnyx::TextToSpeechGenerateParams::Provider::TaggedSymbol
          )
        INWORLD =
          T.let(
            :inworld,
            Telnyx::TextToSpeechGenerateParams::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::TextToSpeechGenerateParams::Provider::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Resemble < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::TextToSpeechGenerateParams::Resemble,
              Telnyx::Internal::AnyHash
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

      class Rime < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::TextToSpeechGenerateParams::Rime,
              Telnyx::Internal::AnyHash
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
              ::Telnyx::TextToSpeechGenerateParams::Telnyx,
              ::Telnyx::Internal::AnyHash
            )
          end

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

        # Sampling temperature.
        sig { returns(T.nilable(Float)) }
        attr_reader :temperature

        sig { params(temperature: Float).void }
        attr_writer :temperature

        # Voice speed multiplier.
        sig { returns(T.nilable(Float)) }
        attr_reader :voice_speed

        sig { params(voice_speed: Float).void }
        attr_writer :voice_speed

        # Telnyx provider-specific parameters.
        sig do
          params(
            response_format: String,
            sampling_rate: Integer,
            temperature: Float,
            voice_speed: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Audio response format.
          response_format: nil,
          # Audio sampling rate in Hz.
          sampling_rate: nil,
          # Sampling temperature.
          temperature: nil,
          # Voice speed multiplier.
          voice_speed: nil
        )
        end

        sig do
          override.returns(
            {
              response_format: String,
              sampling_rate: Integer,
              temperature: Float,
              voice_speed: Float
            }
          )
        end
        def to_hash
        end
      end

      # Text type. Use `ssml` for SSML-formatted input (supported by AWS and Azure).
      module TextType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TextToSpeechGenerateParams::TextType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TEXT =
          T.let(
            :text,
            Telnyx::TextToSpeechGenerateParams::TextType::TaggedSymbol
          )
        SSML =
          T.let(
            :ssml,
            Telnyx::TextToSpeechGenerateParams::TextType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::TextToSpeechGenerateParams::TextType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
