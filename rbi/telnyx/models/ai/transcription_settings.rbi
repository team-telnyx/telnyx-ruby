# typed: strong

module Telnyx
  module Models
    module AI
      class TranscriptionSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::TranscriptionSettings, Telnyx::Internal::AnyHash)
          end

        # Integration secret identifier for the transcription provider API key. Currently
        # used for Azure transcription regions that require a customer-provided API key.
        sig { returns(T.nilable(String)) }
        attr_reader :api_key_ref

        sig { params(api_key_ref: String).void }
        attr_writer :api_key_ref

        # The language of the audio to be transcribed. If not set, or if set to `auto`,
        # supported models will automatically detect the language. For `deepgram/flux`,
        # supported values are: `auto` (Telnyx language detection controls the language
        # hint), `multi` (no language hint), and language-specific hints `en`, `es`, `fr`,
        # `de`, `hi`, `ru`, `pt`, `ja`, `it`, and `nl`.
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

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
        sig do
          returns(T.nilable(Telnyx::AI::TranscriptionSettings::Model::OrSymbol))
        end
        attr_reader :model

        sig do
          params(model: Telnyx::AI::TranscriptionSettings::Model::OrSymbol).void
        end
        attr_writer :model

        # Region on third party cloud providers (currently Azure) if using one of their
        # models. Some regions require `api_key_ref`.
        sig { returns(T.nilable(String)) }
        attr_reader :region

        sig { params(region: String).void }
        attr_writer :region

        sig { returns(T.nilable(Telnyx::AI::TranscriptionSettingsConfig)) }
        attr_reader :settings

        sig do
          params(settings: Telnyx::AI::TranscriptionSettingsConfig::OrHash).void
        end
        attr_writer :settings

        sig do
          params(
            api_key_ref: String,
            language: String,
            model: Telnyx::AI::TranscriptionSettings::Model::OrSymbol,
            region: String,
            settings: Telnyx::AI::TranscriptionSettingsConfig::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Integration secret identifier for the transcription provider API key. Currently
          # used for Azure transcription regions that require a customer-provided API key.
          api_key_ref: nil,
          # The language of the audio to be transcribed. If not set, or if set to `auto`,
          # supported models will automatically detect the language. For `deepgram/flux`,
          # supported values are: `auto` (Telnyx language detection controls the language
          # hint), `multi` (no language hint), and language-specific hints `en`, `es`, `fr`,
          # `de`, `hi`, `ru`, `pt`, `ja`, `it`, and `nl`.
          language: nil,
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
          model: nil,
          # Region on third party cloud providers (currently Azure) if using one of their
          # models. Some regions require `api_key_ref`.
          region: nil,
          settings: nil
        )
        end

        sig do
          override.returns(
            {
              api_key_ref: String,
              language: String,
              model: Telnyx::AI::TranscriptionSettings::Model::OrSymbol,
              region: String,
              settings: Telnyx::AI::TranscriptionSettingsConfig
            }
          )
        end
        def to_hash
        end

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
        module Model
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::TranscriptionSettings::Model)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEEPGRAM_FLUX =
            T.let(
              :"deepgram/flux",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          DEEPGRAM_NOVA_3 =
            T.let(
              :"deepgram/nova-3",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          DEEPGRAM_NOVA_2 =
            T.let(
              :"deepgram/nova-2",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          AZURE_FAST =
            T.let(
              :"azure/fast",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          ASSEMBLYAI_UNIVERSAL_STREAMING =
            T.let(
              :"assemblyai/universal-streaming",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          XAI_GROK_STT =
            T.let(
              :"xai/grok-stt",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          DISTIL_WHISPER_DISTIL_LARGE_V2 =
            T.let(
              :"distil-whisper/distil-large-v2",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          OPENAI_WHISPER_LARGE_V3_TURBO =
            T.let(
              :"openai/whisper-large-v3-turbo",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
