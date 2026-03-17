# typed: strong

module Telnyx
  module Models
    class TextToSpeechStreamParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::TextToSpeechStreamParams, Telnyx::Internal::AnyHash)
        end

      # Audio output format override. Supported for Telnyx `Natural`/`NaturalHD` models
      # only. Accepted values: `pcm`, `wav`.
      sig do
        returns(
          T.nilable(Telnyx::TextToSpeechStreamParams::AudioFormat::OrSymbol)
        )
      end
      attr_reader :audio_format

      sig do
        params(
          audio_format: Telnyx::TextToSpeechStreamParams::AudioFormat::OrSymbol
        ).void
      end
      attr_writer :audio_format

      # When `true`, bypass the audio cache and generate fresh audio.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :disable_cache

      sig { params(disable_cache: T::Boolean).void }
      attr_writer :disable_cache

      # Model identifier for the chosen provider. Examples: `Natural`, `NaturalHD`
      # (Telnyx); `Polly.Generative` (AWS).
      sig { returns(T.nilable(String)) }
      attr_reader :model_id

      sig { params(model_id: String).void }
      attr_writer :model_id

      # TTS provider. Defaults to `telnyx` if not specified. Ignored when `voice` is
      # provided.
      sig do
        returns(T.nilable(Telnyx::TextToSpeechStreamParams::Provider::OrSymbol))
      end
      attr_reader :provider

      sig do
        params(
          provider: Telnyx::TextToSpeechStreamParams::Provider::OrSymbol
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
      # `provider.voice_id` (e.g. `telnyx.NaturalHD.Telnyx_Alloy` or
      # `azure.en-US-AvaMultilingualNeural`). When provided, the `provider`, `model_id`,
      # and `voice_id` are extracted automatically. Takes precedence over individual
      # `provider`/`model_id`/`voice_id` parameters.
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
          audio_format: Telnyx::TextToSpeechStreamParams::AudioFormat::OrSymbol,
          disable_cache: T::Boolean,
          model_id: String,
          provider: Telnyx::TextToSpeechStreamParams::Provider::OrSymbol,
          socket_id: String,
          voice: String,
          voice_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Audio output format override. Supported for Telnyx `Natural`/`NaturalHD` models
        # only. Accepted values: `pcm`, `wav`.
        audio_format: nil,
        # When `true`, bypass the audio cache and generate fresh audio.
        disable_cache: nil,
        # Model identifier for the chosen provider. Examples: `Natural`, `NaturalHD`
        # (Telnyx); `Polly.Generative` (AWS).
        model_id: nil,
        # TTS provider. Defaults to `telnyx` if not specified. Ignored when `voice` is
        # provided.
        provider: nil,
        # Client-provided socket identifier for tracking. If not provided, one is
        # generated server-side.
        socket_id: nil,
        # Voice identifier in the format `provider.model_id.voice_id` or
        # `provider.voice_id` (e.g. `telnyx.NaturalHD.Telnyx_Alloy` or
        # `azure.en-US-AvaMultilingualNeural`). When provided, the `provider`, `model_id`,
        # and `voice_id` are extracted automatically. Takes precedence over individual
        # `provider`/`model_id`/`voice_id` parameters.
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
              Telnyx::TextToSpeechStreamParams::AudioFormat::OrSymbol,
            disable_cache: T::Boolean,
            model_id: String,
            provider: Telnyx::TextToSpeechStreamParams::Provider::OrSymbol,
            socket_id: String,
            voice: String,
            voice_id: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Audio output format override. Supported for Telnyx `Natural`/`NaturalHD` models
      # only. Accepted values: `pcm`, `wav`.
      module AudioFormat
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TextToSpeechStreamParams::AudioFormat)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PCM =
          T.let(
            :pcm,
            Telnyx::TextToSpeechStreamParams::AudioFormat::TaggedSymbol
          )
        WAV =
          T.let(
            :wav,
            Telnyx::TextToSpeechStreamParams::AudioFormat::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TextToSpeechStreamParams::AudioFormat::TaggedSymbol
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
            T.all(Symbol, Telnyx::TextToSpeechStreamParams::Provider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AWS =
          T.let(:aws, Telnyx::TextToSpeechStreamParams::Provider::TaggedSymbol)
        TELNYX =
          T.let(
            :telnyx,
            Telnyx::TextToSpeechStreamParams::Provider::TaggedSymbol
          )
        AZURE =
          T.let(
            :azure,
            Telnyx::TextToSpeechStreamParams::Provider::TaggedSymbol
          )
        ELEVENLABS =
          T.let(
            :elevenlabs,
            Telnyx::TextToSpeechStreamParams::Provider::TaggedSymbol
          )
        MINIMAX =
          T.let(
            :minimax,
            Telnyx::TextToSpeechStreamParams::Provider::TaggedSymbol
          )
        MURFAI =
          T.let(
            :murfai,
            Telnyx::TextToSpeechStreamParams::Provider::TaggedSymbol
          )
        RIME =
          T.let(:rime, Telnyx::TextToSpeechStreamParams::Provider::TaggedSymbol)
        RESEMBLE =
          T.let(
            :resemble,
            Telnyx::TextToSpeechStreamParams::Provider::TaggedSymbol
          )
        INWORLD =
          T.let(
            :inworld,
            Telnyx::TextToSpeechStreamParams::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::TextToSpeechStreamParams::Provider::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
