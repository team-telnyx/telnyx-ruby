# typed: strong

module Telnyx
  module Models
    class ConversationRelayLanguage < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::ConversationRelayLanguage, Telnyx::Internal::AnyHash)
        end

      # BCP 47 language tag for this language configuration.
      sig { returns(String) }
      attr_accessor :language

      # Conversation Relay speech model. Prefer
      # `transcription_engine_config.transcription_model` when configuring
      # speech-to-text.
      sig { returns(T.nilable(String)) }
      attr_reader :speech_model

      sig { params(speech_model: String).void }
      attr_writer :speech_model

      # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
      # `Telnyx` are supported for backward compatibility. When provided in a
      # Conversation Relay language entry, Telnyx derives `transcription_provider` and
      # `speech_model` for that language.
      sig do
        returns(
          T.nilable(
            Telnyx::ConversationRelayLanguage::TranscriptionEngine::OrSymbol
          )
        )
      end
      attr_reader :transcription_engine

      sig do
        params(
          transcription_engine:
            Telnyx::ConversationRelayLanguage::TranscriptionEngine::OrSymbol
        ).void
      end
      attr_writer :transcription_engine

      # Engine-specific transcription settings for Conversation Relay. This accepts the
      # same provider-specific options used by the Call Transcription Start command,
      # such as `transcription_model`, without requiring the engine discriminator to be
      # repeated inside this object.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :transcription_engine_config

      sig do
        params(transcription_engine_config: T::Hash[Symbol, T.anything]).void
      end
      attr_writer :transcription_engine_config

      # Conversation Relay transcription provider name. Prefer `transcription_engine`
      # when configuring speech-to-text.
      sig { returns(T.nilable(String)) }
      attr_reader :transcription_provider

      sig { params(transcription_provider: String).void }
      attr_writer :transcription_provider

      # Text-to-speech provider for this language. If omitted and `voice` is provided,
      # Telnyx derives the provider from the voice identifier.
      sig { returns(T.nilable(String)) }
      attr_reader :tts_provider

      sig { params(tts_provider: String).void }
      attr_writer :tts_provider

      # Voice identifier for this language.
      sig { returns(T.nilable(String)) }
      attr_reader :voice

      sig { params(voice: String).void }
      attr_writer :voice

      # The settings associated with the voice selected
      sig do
        returns(
          T.nilable(
            T.any(
              Telnyx::Calls::ElevenLabsVoiceSettings,
              Telnyx::Calls::TelnyxVoiceSettings,
              Telnyx::Calls::AwsVoiceSettings,
              Telnyx::MinimaxVoiceSettings,
              Telnyx::AzureVoiceSettings,
              Telnyx::RimeVoiceSettings,
              Telnyx::ResembleVoiceSettings,
              Telnyx::InworldVoiceSettings,
              Telnyx::XaiVoiceSettings
            )
          )
        )
      end
      attr_reader :voice_settings

      sig do
        params(
          voice_settings:
            T.any(
              Telnyx::Calls::ElevenLabsVoiceSettings::OrHash,
              Telnyx::Calls::TelnyxVoiceSettings::OrHash,
              Telnyx::Calls::AwsVoiceSettings::OrHash,
              Telnyx::MinimaxVoiceSettings::OrHash,
              Telnyx::AzureVoiceSettings::OrHash,
              Telnyx::RimeVoiceSettings::OrHash,
              Telnyx::ResembleVoiceSettings::OrHash,
              Telnyx::InworldVoiceSettings::OrHash,
              Telnyx::XaiVoiceSettings::OrHash
            )
        ).void
      end
      attr_writer :voice_settings

      # Language-specific TTS and transcription settings for Conversation Relay.
      sig do
        params(
          language: String,
          speech_model: String,
          transcription_engine:
            Telnyx::ConversationRelayLanguage::TranscriptionEngine::OrSymbol,
          transcription_engine_config: T::Hash[Symbol, T.anything],
          transcription_provider: String,
          tts_provider: String,
          voice: String,
          voice_settings:
            T.any(
              Telnyx::Calls::ElevenLabsVoiceSettings::OrHash,
              Telnyx::Calls::TelnyxVoiceSettings::OrHash,
              Telnyx::Calls::AwsVoiceSettings::OrHash,
              Telnyx::MinimaxVoiceSettings::OrHash,
              Telnyx::AzureVoiceSettings::OrHash,
              Telnyx::RimeVoiceSettings::OrHash,
              Telnyx::ResembleVoiceSettings::OrHash,
              Telnyx::InworldVoiceSettings::OrHash,
              Telnyx::XaiVoiceSettings::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # BCP 47 language tag for this language configuration.
        language:,
        # Conversation Relay speech model. Prefer
        # `transcription_engine_config.transcription_model` when configuring
        # speech-to-text.
        speech_model: nil,
        # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
        # `Telnyx` are supported for backward compatibility. When provided in a
        # Conversation Relay language entry, Telnyx derives `transcription_provider` and
        # `speech_model` for that language.
        transcription_engine: nil,
        # Engine-specific transcription settings for Conversation Relay. This accepts the
        # same provider-specific options used by the Call Transcription Start command,
        # such as `transcription_model`, without requiring the engine discriminator to be
        # repeated inside this object.
        transcription_engine_config: nil,
        # Conversation Relay transcription provider name. Prefer `transcription_engine`
        # when configuring speech-to-text.
        transcription_provider: nil,
        # Text-to-speech provider for this language. If omitted and `voice` is provided,
        # Telnyx derives the provider from the voice identifier.
        tts_provider: nil,
        # Voice identifier for this language.
        voice: nil,
        # The settings associated with the voice selected
        voice_settings: nil
      )
      end

      sig do
        override.returns(
          {
            language: String,
            speech_model: String,
            transcription_engine:
              Telnyx::ConversationRelayLanguage::TranscriptionEngine::OrSymbol,
            transcription_engine_config: T::Hash[Symbol, T.anything],
            transcription_provider: String,
            tts_provider: String,
            voice: String,
            voice_settings:
              T.any(
                Telnyx::Calls::ElevenLabsVoiceSettings,
                Telnyx::Calls::TelnyxVoiceSettings,
                Telnyx::Calls::AwsVoiceSettings,
                Telnyx::MinimaxVoiceSettings,
                Telnyx::AzureVoiceSettings,
                Telnyx::RimeVoiceSettings,
                Telnyx::ResembleVoiceSettings,
                Telnyx::InworldVoiceSettings,
                Telnyx::XaiVoiceSettings
              )
          }
        )
      end
      def to_hash
      end

      # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
      # `Telnyx` are supported for backward compatibility. When provided in a
      # Conversation Relay language entry, Telnyx derives `transcription_provider` and
      # `speech_model` for that language.
      module TranscriptionEngine
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::ConversationRelayLanguage::TranscriptionEngine
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GOOGLE =
          T.let(
            :Google,
            Telnyx::ConversationRelayLanguage::TranscriptionEngine::TaggedSymbol
          )
        TELNYX =
          T.let(
            :Telnyx,
            Telnyx::ConversationRelayLanguage::TranscriptionEngine::TaggedSymbol
          )
        DEEPGRAM =
          T.let(
            :Deepgram,
            Telnyx::ConversationRelayLanguage::TranscriptionEngine::TaggedSymbol
          )
        AZURE =
          T.let(
            :Azure,
            Telnyx::ConversationRelayLanguage::TranscriptionEngine::TaggedSymbol
          )
        X_AI =
          T.let(
            :xAI,
            Telnyx::ConversationRelayLanguage::TranscriptionEngine::TaggedSymbol
          )
        ASSEMBLY_AI =
          T.let(
            :AssemblyAI,
            Telnyx::ConversationRelayLanguage::TranscriptionEngine::TaggedSymbol
          )
        SPEECHMATICS =
          T.let(
            :Speechmatics,
            Telnyx::ConversationRelayLanguage::TranscriptionEngine::TaggedSymbol
          )
        SONIOX =
          T.let(
            :Soniox,
            Telnyx::ConversationRelayLanguage::TranscriptionEngine::TaggedSymbol
          )
        A =
          T.let(
            :A,
            Telnyx::ConversationRelayLanguage::TranscriptionEngine::TaggedSymbol
          )
        B =
          T.let(
            :B,
            Telnyx::ConversationRelayLanguage::TranscriptionEngine::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::ConversationRelayLanguage::TranscriptionEngine::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The settings associated with the voice selected
      module VoiceSettings
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::Calls::ElevenLabsVoiceSettings,
              Telnyx::Calls::TelnyxVoiceSettings,
              Telnyx::Calls::AwsVoiceSettings,
              Telnyx::MinimaxVoiceSettings,
              Telnyx::AzureVoiceSettings,
              Telnyx::RimeVoiceSettings,
              Telnyx::ResembleVoiceSettings,
              Telnyx::InworldVoiceSettings,
              Telnyx::XaiVoiceSettings
            )
          end

        sig do
          override.returns(
            T::Array[Telnyx::ConversationRelayLanguage::VoiceSettings::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
