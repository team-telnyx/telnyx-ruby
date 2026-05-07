# typed: strong

module Telnyx
  module Models
    module Calls
      class TranscriptionConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::TranscriptionConfig, Telnyx::Internal::AnyHash)
          end

        # The language of the audio to be transcribed. If not set, or if set to `auto`,
        # supported models will automatically detect the language. Supported and
        # meaningful values depend on the selected transcription `model`. For
        # `deepgram/flux`, supported values are: `auto` (Telnyx language detection
        # controls the language hint), `multi` (no language hint), and language-specific
        # hints `en`, `es`, `fr`, `de`, `hi`, `ru`, `pt`, `ja`, `it`, and `nl`.
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

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
        sig do
          returns(
            T.nilable(Telnyx::Calls::TranscriptionConfig::Model::OrSymbol)
          )
        end
        attr_reader :model

        sig do
          params(
            model: Telnyx::Calls::TranscriptionConfig::Model::OrSymbol
          ).void
        end
        attr_writer :model

        # The settings associated with speech to text for the voice assistant. This is
        # only relevant if the assistant uses a text-to-text language model. Any assistant
        # using a model with native audio support (e.g. `fixie-ai/ultravox-v0_4`) will
        # ignore this field.
        sig do
          params(
            language: String,
            model: Telnyx::Calls::TranscriptionConfig::Model::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The language of the audio to be transcribed. If not set, or if set to `auto`,
          # supported models will automatically detect the language. Supported and
          # meaningful values depend on the selected transcription `model`. For
          # `deepgram/flux`, supported values are: `auto` (Telnyx language detection
          # controls the language hint), `multi` (no language hint), and language-specific
          # hints `en`, `es`, `fr`, `de`, `hi`, `ru`, `pt`, `ja`, `it`, and `nl`.
          language: nil,
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
          model: nil
        )
        end

        sig do
          override.returns(
            {
              language: String,
              model: Telnyx::Calls::TranscriptionConfig::Model::OrSymbol
            }
          )
        end
        def to_hash
        end

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
        module Model
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::TranscriptionConfig::Model)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEEPGRAM_FLUX =
            T.let(
              :"deepgram/flux",
              Telnyx::Calls::TranscriptionConfig::Model::TaggedSymbol
            )
          FLUX =
            T.let(
              :flux,
              Telnyx::Calls::TranscriptionConfig::Model::TaggedSymbol
            )
          DEEPGRAM_NOVA_3 =
            T.let(
              :"deepgram/nova-3",
              Telnyx::Calls::TranscriptionConfig::Model::TaggedSymbol
            )
          DEEPGRAM_NOVA_2 =
            T.let(
              :"deepgram/nova-2",
              Telnyx::Calls::TranscriptionConfig::Model::TaggedSymbol
            )
          SPEECHMATICS_STANDARD =
            T.let(
              :"speechmatics/standard",
              Telnyx::Calls::TranscriptionConfig::Model::TaggedSymbol
            )
          SPEECHMATICS_ENHANCED =
            T.let(
              :"speechmatics/enhanced",
              Telnyx::Calls::TranscriptionConfig::Model::TaggedSymbol
            )
          ASSEMBLYAI_UNIVERSAL_STREAMING =
            T.let(
              :"assemblyai/universal-streaming",
              Telnyx::Calls::TranscriptionConfig::Model::TaggedSymbol
            )
          XAI_GROK_STT =
            T.let(
              :"xai/grok-stt",
              Telnyx::Calls::TranscriptionConfig::Model::TaggedSymbol
            )
          AZURE_FAST =
            T.let(
              :"azure/fast",
              Telnyx::Calls::TranscriptionConfig::Model::TaggedSymbol
            )
          AZURE_REALTIME =
            T.let(
              :"azure/realtime",
              Telnyx::Calls::TranscriptionConfig::Model::TaggedSymbol
            )
          GOOGLE_LATEST_LONG =
            T.let(
              :"google/latest_long",
              Telnyx::Calls::TranscriptionConfig::Model::TaggedSymbol
            )
          DISTIL_WHISPER_DISTIL_LARGE_V2 =
            T.let(
              :"distil-whisper/distil-large-v2",
              Telnyx::Calls::TranscriptionConfig::Model::TaggedSymbol
            )
          OPENAI_WHISPER_LARGE_V3_TURBO =
            T.let(
              :"openai/whisper-large-v3-turbo",
              Telnyx::Calls::TranscriptionConfig::Model::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Calls::TranscriptionConfig::Model::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
