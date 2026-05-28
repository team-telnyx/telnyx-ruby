# typed: strong

module Telnyx
  module Models
    class TextToSpeechGenerateSpeechParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::TextToSpeechGenerateSpeechParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Audio output format override. Supported for Telnyx models. `pcm` and `wav` are
      # available for `Natural`/`NaturalHD` models. The `Ultra` model outputs PCM at
      # 24kHz s16le or MP3 at 128kbps 24kHz.
      sig do
        returns(
          T.nilable(
            Telnyx::TextToSpeechGenerateSpeechParams::AudioFormat::OrSymbol
          )
        )
      end
      attr_reader :audio_format

      sig do
        params(
          audio_format:
            Telnyx::TextToSpeechGenerateSpeechParams::AudioFormat::OrSymbol
        ).void
      end
      attr_writer :audio_format

      # When `true`, bypass the audio cache and generate fresh audio.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :disable_cache

      sig { params(disable_cache: T::Boolean).void }
      attr_writer :disable_cache

      # Model identifier for the chosen provider. Examples: `Natural`, `NaturalHD`,
      # `Ultra` (Telnyx); `Polly.Generative` (AWS).
      sig { returns(T.nilable(String)) }
      attr_reader :model_id

      sig { params(model_id: String).void }
      attr_writer :model_id

      # TTS provider. Defaults to `telnyx` if not specified. Ignored when `voice` is
      # provided.
      sig do
        returns(
          T.nilable(
            Telnyx::TextToSpeechGenerateSpeechParams::Provider::OrSymbol
          )
        )
      end
      attr_reader :provider

      sig do
        params(
          provider: Telnyx::TextToSpeechGenerateSpeechParams::Provider::OrSymbol
        ).void
      end
      attr_writer :provider

      # Client-provided socket identifier for tracking. If not provided, one is
      # generated server-side.
      sig { returns(T.nilable(String)) }
      attr_reader :socket_id

      sig { params(socket_id: String).void }
      attr_writer :socket_id

      # Voice identifier in the format `provider.model_id.voice_id` or
      # `provider.voice_id` (e.g. `telnyx.NaturalHD.Telnyx_Alloy`,
      # `Telnyx.Ultra.<voice_id>`, or `azure.en-US-AvaMultilingualNeural`). When
      # provided, the `provider`, `model_id`, and `voice_id` are extracted
      # automatically. Takes precedence over individual `provider`/`model_id`/`voice_id`
      # parameters.
      sig { returns(T.nilable(String)) }
      attr_reader :voice

      sig { params(voice: String).void }
      attr_writer :voice

      # Voice identifier for the chosen provider.
      sig { returns(T.nilable(String)) }
      attr_reader :voice_id

      sig { params(voice_id: String).void }
      attr_writer :voice_id

      sig do
        params(
          audio_format:
            Telnyx::TextToSpeechGenerateSpeechParams::AudioFormat::OrSymbol,
          disable_cache: T::Boolean,
          model_id: String,
          provider:
            Telnyx::TextToSpeechGenerateSpeechParams::Provider::OrSymbol,
          socket_id: String,
          voice: String,
          voice_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Audio output format override. Supported for Telnyx models. `pcm` and `wav` are
        # available for `Natural`/`NaturalHD` models. The `Ultra` model outputs PCM at
        # 24kHz s16le or MP3 at 128kbps 24kHz.
        audio_format: nil,
        # When `true`, bypass the audio cache and generate fresh audio.
        disable_cache: nil,
        # Model identifier for the chosen provider. Examples: `Natural`, `NaturalHD`,
        # `Ultra` (Telnyx); `Polly.Generative` (AWS).
        model_id: nil,
        # TTS provider. Defaults to `telnyx` if not specified. Ignored when `voice` is
        # provided.
        provider: nil,
        # Client-provided socket identifier for tracking. If not provided, one is
        # generated server-side.
        socket_id: nil,
        # Voice identifier in the format `provider.model_id.voice_id` or
        # `provider.voice_id` (e.g. `telnyx.NaturalHD.Telnyx_Alloy`,
        # `Telnyx.Ultra.<voice_id>`, or `azure.en-US-AvaMultilingualNeural`). When
        # provided, the `provider`, `model_id`, and `voice_id` are extracted
        # automatically. Takes precedence over individual `provider`/`model_id`/`voice_id`
        # parameters.
        voice: nil,
        # Voice identifier for the chosen provider.
        voice_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            audio_format:
              Telnyx::TextToSpeechGenerateSpeechParams::AudioFormat::OrSymbol,
            disable_cache: T::Boolean,
            model_id: String,
            provider:
              Telnyx::TextToSpeechGenerateSpeechParams::Provider::OrSymbol,
            socket_id: String,
            voice: String,
            voice_id: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Audio output format override. Supported for Telnyx models. `pcm` and `wav` are
      # available for `Natural`/`NaturalHD` models. The `Ultra` model outputs PCM at
      # 24kHz s16le or MP3 at 128kbps 24kHz.
      module AudioFormat
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TextToSpeechGenerateSpeechParams::AudioFormat)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PCM =
          T.let(
            :pcm,
            Telnyx::TextToSpeechGenerateSpeechParams::AudioFormat::TaggedSymbol
          )
        WAV =
          T.let(
            :wav,
            Telnyx::TextToSpeechGenerateSpeechParams::AudioFormat::TaggedSymbol
          )
        MP3 =
          T.let(
            :mp3,
            Telnyx::TextToSpeechGenerateSpeechParams::AudioFormat::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TextToSpeechGenerateSpeechParams::AudioFormat::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # TTS provider. Defaults to `telnyx` if not specified. Ignored when `voice` is
      # provided.
      module Provider
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TextToSpeechGenerateSpeechParams::Provider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AWS =
          T.let(
            :aws,
            Telnyx::TextToSpeechGenerateSpeechParams::Provider::TaggedSymbol
          )
        TELNYX =
          T.let(
            :telnyx,
            Telnyx::TextToSpeechGenerateSpeechParams::Provider::TaggedSymbol
          )
        AZURE =
          T.let(
            :azure,
            Telnyx::TextToSpeechGenerateSpeechParams::Provider::TaggedSymbol
          )
        ELEVENLABS =
          T.let(
            :elevenlabs,
            Telnyx::TextToSpeechGenerateSpeechParams::Provider::TaggedSymbol
          )
        MINIMAX =
          T.let(
            :minimax,
            Telnyx::TextToSpeechGenerateSpeechParams::Provider::TaggedSymbol
          )
        MURFAI =
          T.let(
            :murfai,
            Telnyx::TextToSpeechGenerateSpeechParams::Provider::TaggedSymbol
          )
        RIME =
          T.let(
            :rime,
            Telnyx::TextToSpeechGenerateSpeechParams::Provider::TaggedSymbol
          )
        RESEMBLE =
          T.let(
            :resemble,
            Telnyx::TextToSpeechGenerateSpeechParams::Provider::TaggedSymbol
          )
        XAI =
          T.let(
            :xai,
            Telnyx::TextToSpeechGenerateSpeechParams::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TextToSpeechGenerateSpeechParams::Provider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
