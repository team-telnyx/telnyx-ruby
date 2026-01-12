# typed: strong

module Telnyx
  module Models
    module AI
      class TranscriptionSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::TranscriptionSettings, Telnyx::Internal::AnyHash)
          end

        # The language of the audio to be transcribed. If not set, of if set to `auto`,
        # the model will automatically detect the language.
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        # The speech to text model to be used by the voice assistant. All the deepgram
        # models are run on-premise.
        #
        # - `deepgram/flux` is optimized for turn-taking but is English-only.
        # - `deepgram/nova-3` is multi-lingual with automatic language detection but
        #   slightly higher latency.
        sig do
          returns(T.nilable(Telnyx::AI::TranscriptionSettings::Model::OrSymbol))
        end
        attr_reader :model

        sig do
          params(model: Telnyx::AI::TranscriptionSettings::Model::OrSymbol).void
        end
        attr_writer :model

        # Region on third party cloud providers (currently Azure) if using one of their
        # models
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
            language: String,
            model: Telnyx::AI::TranscriptionSettings::Model::OrSymbol,
            region: String,
            settings: Telnyx::AI::TranscriptionSettingsConfig::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The language of the audio to be transcribed. If not set, of if set to `auto`,
          # the model will automatically detect the language.
          language: nil,
          # The speech to text model to be used by the voice assistant. All the deepgram
          # models are run on-premise.
          #
          # - `deepgram/flux` is optimized for turn-taking but is English-only.
          # - `deepgram/nova-3` is multi-lingual with automatic language detection but
          #   slightly higher latency.
          model: nil,
          # Region on third party cloud providers (currently Azure) if using one of their
          # models
          region: nil,
          settings: nil
        )
        end

        sig do
          override.returns(
            {
              language: String,
              model: Telnyx::AI::TranscriptionSettings::Model::OrSymbol,
              region: String,
              settings: Telnyx::AI::TranscriptionSettingsConfig
            }
          )
        end
        def to_hash
        end

        # The speech to text model to be used by the voice assistant. All the deepgram
        # models are run on-premise.
        #
        # - `deepgram/flux` is optimized for turn-taking but is English-only.
        # - `deepgram/nova-3` is multi-lingual with automatic language detection but
        #   slightly higher latency.
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
