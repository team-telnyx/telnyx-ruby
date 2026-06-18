# typed: strong

module Telnyx
  module Models
    class TextToSpeechRetrieveSpeechParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::TextToSpeechRetrieveSpeechParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Audio output format override. Supported for Telnyx models. `pcm` and `wav` are
      # available for `Natural`/`NaturalHD` models. The `Ultra` model outputs PCM at
      # 24kHz s16le or MP3 at 128kbps 24kHz.
      sig do
        returns(
          T.nilable(
            Telnyx::TextToSpeechRetrieveSpeechParams::AudioFormat::OrSymbol
          )
        )
      end
      attr_reader :audio_format

      sig do
        params(
          audio_format:
            Telnyx::TextToSpeechRetrieveSpeechParams::AudioFormat::OrSymbol
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
            Telnyx::TextToSpeechRetrieveSpeechParams::Provider::OrSymbol
          )
        )
      end
      attr_reader :provider

      sig do
        params(
          provider: Telnyx::TextToSpeechRetrieveSpeechParams::Provider::OrSymbol
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
            Telnyx::TextToSpeechRetrieveSpeechParams::AudioFormat::OrSymbol,
          disable_cache: T::Boolean,
          model_id: String,
          provider:
            Telnyx::TextToSpeechRetrieveSpeechParams::Provider::OrSymbol,
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
              Telnyx::TextToSpeechRetrieveSpeechParams::AudioFormat::OrSymbol,
            disable_cache: T::Boolean,
            model_id: String,
            provider:
              Telnyx::TextToSpeechRetrieveSpeechParams::Provider::OrSymbol,
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
            T.all(Symbol, Telnyx::TextToSpeechRetrieveSpeechParams::AudioFormat)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PCM =
          T.let(
            :pcm,
            Telnyx::TextToSpeechRetrieveSpeechParams::AudioFormat::TaggedSymbol
          )
        WAV =
          T.let(
            :wav,
            Telnyx::TextToSpeechRetrieveSpeechParams::AudioFormat::TaggedSymbol
          )
        MP3 =
          T.let(
            :mp3,
            Telnyx::TextToSpeechRetrieveSpeechParams::AudioFormat::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TextToSpeechRetrieveSpeechParams::AudioFormat::TaggedSymbol
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
            T.all(Symbol, Telnyx::TextToSpeechRetrieveSpeechParams::Provider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AWS =
          T.let(
            :aws,
            Telnyx::TextToSpeechRetrieveSpeechParams::Provider::TaggedSymbol
          )
        TELNYX =
          T.let(
            :telnyx,
            Telnyx::TextToSpeechRetrieveSpeechParams::Provider::TaggedSymbol
          )
        AZURE =
          T.let(
            :azure,
            Telnyx::TextToSpeechRetrieveSpeechParams::Provider::TaggedSymbol
          )
        ELEVENLABS =
          T.let(
            :elevenlabs,
            Telnyx::TextToSpeechRetrieveSpeechParams::Provider::TaggedSymbol
          )
        MINIMAX =
          T.let(
            :minimax,
            Telnyx::TextToSpeechRetrieveSpeechParams::Provider::TaggedSymbol
          )
        MURFAI =
          T.let(
            :murfai,
            Telnyx::TextToSpeechRetrieveSpeechParams::Provider::TaggedSymbol
          )
        RIME =
          T.let(
            :rime,
            Telnyx::TextToSpeechRetrieveSpeechParams::Provider::TaggedSymbol
          )
        RESEMBLE =
          T.let(
            :resemble,
            Telnyx::TextToSpeechRetrieveSpeechParams::Provider::TaggedSymbol
          )
        XAI =
          T.let(
            :xai,
            Telnyx::TextToSpeechRetrieveSpeechParams::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TextToSpeechRetrieveSpeechParams::Provider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
