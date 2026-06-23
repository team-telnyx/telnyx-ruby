# typed: strong

module Telnyx
  module Models
    class ConversationRelayEmbeddedConfig < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConversationRelayEmbeddedConfig,
            Telnyx::Internal::AnyHash
          )
        end

      # WebSocket URL for your Conversation Relay server. Must start with `ws://` or
      # `wss://`.
      sig { returns(String) }
      attr_accessor :url

      # Custom key-value parameters forwarded to the relay session as assistant dynamic
      # variables.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :custom_parameters

      sig { params(custom_parameters: T::Hash[Symbol, T.anything]).void }
      attr_writer :custom_parameters

      # Enable DTMF detection for the relay session.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :dtmf_detection

      sig { params(dtmf_detection: T::Boolean).void }
      attr_writer :dtmf_detection

      # Text played when the relay session starts.
      sig { returns(T.nilable(String)) }
      attr_reader :greeting

      sig { params(greeting: String).void }
      attr_writer :greeting

      # Controls when caller input can interrupt assistant speech. `any` allows speech
      # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      # only; `dtmf` allows DTMF only.
      sig do
        returns(
          T.nilable(Telnyx::Calls::ConversationRelayInterruptible::OrSymbol)
        )
      end
      attr_reader :interruptible

      sig do
        params(
          interruptible: Telnyx::Calls::ConversationRelayInterruptible::OrSymbol
        ).void
      end
      attr_writer :interruptible

      # Controls when caller input can interrupt assistant speech. `any` allows speech
      # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      # only; `dtmf` allows DTMF only.
      sig do
        returns(
          T.nilable(Telnyx::Calls::ConversationRelayInterruptible::OrSymbol)
        )
      end
      attr_reader :interruptible_greeting

      sig do
        params(
          interruptible_greeting:
            Telnyx::Calls::ConversationRelayInterruptible::OrSymbol
        ).void
      end
      attr_writer :interruptible_greeting

      # Settings for handling caller interruptions during Conversation Relay speech.
      sig { returns(T.nilable(Telnyx::ConversationRelayInterruptionSettings)) }
      attr_reader :interruption_settings

      sig do
        params(
          interruption_settings:
            Telnyx::ConversationRelayInterruptionSettings::OrHash
        ).void
      end
      attr_writer :interruption_settings

      # Default language for both text-to-speech and speech recognition.
      sig { returns(T.nilable(String)) }
      attr_reader :language

      sig { params(language: String).void }
      attr_writer :language

      # Per-language TTS and transcription settings.
      sig { returns(T.nilable(T::Array[Telnyx::ConversationRelayLanguage])) }
      attr_reader :languages

      sig do
        params(
          languages: T::Array[Telnyx::ConversationRelayLanguage::OrHash]
        ).void
      end
      attr_writer :languages

      # Structured voice provider. Must be supplied together with `structured_provider`.
      sig { returns(T.nilable(String)) }
      attr_reader :provider

      sig { params(provider: String).void }
      attr_writer :provider

      # Provider-specific structured voice settings. Must be supplied together with
      # `provider`; Telnyx sends the value as the nested provider configuration for
      # Conversation Relay.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :structured_provider

      sig { params(structured_provider: T::Hash[Symbol, T.anything]).void }
      attr_writer :structured_provider

      # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
      # `Telnyx` are supported for backward compatibility. For Conversation Relay, use
      # this field with `transcription_engine_config`; the `transcription` object is not
      # supported.
      sig do
        returns(
          T.nilable(
            Telnyx::ConversationRelayEmbeddedConfig::TranscriptionEngine::OrSymbol
          )
        )
      end
      attr_reader :transcription_engine

      sig do
        params(
          transcription_engine:
            Telnyx::ConversationRelayEmbeddedConfig::TranscriptionEngine::OrSymbol
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

      # Text-to-speech provider. If omitted, Telnyx derives it from `voice` or
      # `provider`.
      sig { returns(T.nilable(String)) }
      attr_reader :tts_provider

      sig { params(tts_provider: String).void }
      attr_writer :tts_provider

      # The voice to be used by the voice assistant. Currently we support ElevenLabs,
      # Telnyx and AWS voices.
      #
      # **Supported Providers:**
      #
      # - **AWS:** Use `AWS.Polly.<VoiceId>` (e.g., `AWS.Polly.Joanna`). For neural
      #   voices, which provide more realistic, human-like speech, append `-Neural` to
      #   the `VoiceId` (e.g., `AWS.Polly.Joanna-Neural`). Check the
      #   [available voices](https://docs.aws.amazon.com/polly/latest/dg/available-voices.html)
      #   for compatibility.
      # - **Azure:** Use `Azure.<VoiceId>. (e.g. Azure.en-CA-ClaraNeural,
      #   Azure.en-CA-LiamNeural, Azure.en-US-BrianMultilingualNeural,
      #   Azure.en-US-Ava:DragonHDLatestNeural. For a complete list of voices, go to
      #   [Azure Voice Gallery](https://speech.microsoft.com/portal/voicegallery).)
      # - **ElevenLabs:** Use `ElevenLabs.<ModelId>.<VoiceId>` (e.g.,
      #   `ElevenLabs.BaseModel.John`). The `ModelId` part is optional. To use
      #   ElevenLabs, you must provide your ElevenLabs API key as an integration secret
      #   under `"voice_settings": {"api_key_ref": "<secret_id>"}`. See
      #   [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
      #   for details. Check
      #   [available voices](https://elevenlabs.io/docs/api-reference/get-voices).
      # - **Telnyx:** Use `Telnyx.<model_id>.<voice_id>`
      # - **Inworld:** Use `Inworld.<ModelId>.<VoiceId>` (e.g., `Inworld.Mini.Loretta`,
      #   `Inworld.Max.Oliver`, `Inworld.TTS2.Loretta`). Supported models: `Mini`,
      #   `Max`, `TTS2`.
      # - **xAI:** Use `xAI.<VoiceId>` (e.g., `xAI.eve`). Available voices: `eve`,
      #   `ara`, `rex`, `sal`, `leo`.
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

      # Starts a Conversation Relay session automatically when the answered/dialed call
      # is answered. This embedded shape is supported on `answer` and `dial`. It uses
      # public field names (`url`, `dtmf_detection`, `greeting`, `voice`, `language`,
      # etc.) and maps them to the underlying Conversation Relay action. `client_state`,
      # `tts_language`, and `transcription_language` inside this object are ignored; use
      # the parent command's `client_state` and `command_id` fields instead.
      sig do
        params(
          url: String,
          custom_parameters: T::Hash[Symbol, T.anything],
          dtmf_detection: T::Boolean,
          greeting: String,
          interruptible:
            Telnyx::Calls::ConversationRelayInterruptible::OrSymbol,
          interruptible_greeting:
            Telnyx::Calls::ConversationRelayInterruptible::OrSymbol,
          interruption_settings:
            Telnyx::ConversationRelayInterruptionSettings::OrHash,
          language: String,
          languages: T::Array[Telnyx::ConversationRelayLanguage::OrHash],
          provider: String,
          structured_provider: T::Hash[Symbol, T.anything],
          transcription_engine:
            Telnyx::ConversationRelayEmbeddedConfig::TranscriptionEngine::OrSymbol,
          transcription_engine_config: T::Hash[Symbol, T.anything],
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
        # WebSocket URL for your Conversation Relay server. Must start with `ws://` or
        # `wss://`.
        url:,
        # Custom key-value parameters forwarded to the relay session as assistant dynamic
        # variables.
        custom_parameters: nil,
        # Enable DTMF detection for the relay session.
        dtmf_detection: nil,
        # Text played when the relay session starts.
        greeting: nil,
        # Controls when caller input can interrupt assistant speech. `any` allows speech
        # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
        # only; `dtmf` allows DTMF only.
        interruptible: nil,
        # Controls when caller input can interrupt assistant speech. `any` allows speech
        # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
        # only; `dtmf` allows DTMF only.
        interruptible_greeting: nil,
        # Settings for handling caller interruptions during Conversation Relay speech.
        interruption_settings: nil,
        # Default language for both text-to-speech and speech recognition.
        language: nil,
        # Per-language TTS and transcription settings.
        languages: nil,
        # Structured voice provider. Must be supplied together with `structured_provider`.
        provider: nil,
        # Provider-specific structured voice settings. Must be supplied together with
        # `provider`; Telnyx sends the value as the nested provider configuration for
        # Conversation Relay.
        structured_provider: nil,
        # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
        # `Telnyx` are supported for backward compatibility. For Conversation Relay, use
        # this field with `transcription_engine_config`; the `transcription` object is not
        # supported.
        transcription_engine: nil,
        # Engine-specific transcription settings for Conversation Relay. This accepts the
        # same provider-specific options used by the Call Transcription Start command,
        # such as `transcription_model`, without requiring the engine discriminator to be
        # repeated inside this object.
        transcription_engine_config: nil,
        # Text-to-speech provider. If omitted, Telnyx derives it from `voice` or
        # `provider`.
        tts_provider: nil,
        # The voice to be used by the voice assistant. Currently we support ElevenLabs,
        # Telnyx and AWS voices.
        #
        # **Supported Providers:**
        #
        # - **AWS:** Use `AWS.Polly.<VoiceId>` (e.g., `AWS.Polly.Joanna`). For neural
        #   voices, which provide more realistic, human-like speech, append `-Neural` to
        #   the `VoiceId` (e.g., `AWS.Polly.Joanna-Neural`). Check the
        #   [available voices](https://docs.aws.amazon.com/polly/latest/dg/available-voices.html)
        #   for compatibility.
        # - **Azure:** Use `Azure.<VoiceId>. (e.g. Azure.en-CA-ClaraNeural,
        #   Azure.en-CA-LiamNeural, Azure.en-US-BrianMultilingualNeural,
        #   Azure.en-US-Ava:DragonHDLatestNeural. For a complete list of voices, go to
        #   [Azure Voice Gallery](https://speech.microsoft.com/portal/voicegallery).)
        # - **ElevenLabs:** Use `ElevenLabs.<ModelId>.<VoiceId>` (e.g.,
        #   `ElevenLabs.BaseModel.John`). The `ModelId` part is optional. To use
        #   ElevenLabs, you must provide your ElevenLabs API key as an integration secret
        #   under `"voice_settings": {"api_key_ref": "<secret_id>"}`. See
        #   [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        #   for details. Check
        #   [available voices](https://elevenlabs.io/docs/api-reference/get-voices).
        # - **Telnyx:** Use `Telnyx.<model_id>.<voice_id>`
        # - **Inworld:** Use `Inworld.<ModelId>.<VoiceId>` (e.g., `Inworld.Mini.Loretta`,
        #   `Inworld.Max.Oliver`, `Inworld.TTS2.Loretta`). Supported models: `Mini`,
        #   `Max`, `TTS2`.
        # - **xAI:** Use `xAI.<VoiceId>` (e.g., `xAI.eve`). Available voices: `eve`,
        #   `ara`, `rex`, `sal`, `leo`.
        voice: nil,
        # The settings associated with the voice selected
        voice_settings: nil
      )
      end

      sig do
        override.returns(
          {
            url: String,
            custom_parameters: T::Hash[Symbol, T.anything],
            dtmf_detection: T::Boolean,
            greeting: String,
            interruptible:
              Telnyx::Calls::ConversationRelayInterruptible::OrSymbol,
            interruptible_greeting:
              Telnyx::Calls::ConversationRelayInterruptible::OrSymbol,
            interruption_settings:
              Telnyx::ConversationRelayInterruptionSettings,
            language: String,
            languages: T::Array[Telnyx::ConversationRelayLanguage],
            provider: String,
            structured_provider: T::Hash[Symbol, T.anything],
            transcription_engine:
              Telnyx::ConversationRelayEmbeddedConfig::TranscriptionEngine::OrSymbol,
            transcription_engine_config: T::Hash[Symbol, T.anything],
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
      # `Telnyx` are supported for backward compatibility. For Conversation Relay, use
      # this field with `transcription_engine_config`; the `transcription` object is not
      # supported.
      module TranscriptionEngine
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::ConversationRelayEmbeddedConfig::TranscriptionEngine
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GOOGLE =
          T.let(
            :Google,
            Telnyx::ConversationRelayEmbeddedConfig::TranscriptionEngine::TaggedSymbol
          )
        TELNYX =
          T.let(
            :Telnyx,
            Telnyx::ConversationRelayEmbeddedConfig::TranscriptionEngine::TaggedSymbol
          )
        DEEPGRAM =
          T.let(
            :Deepgram,
            Telnyx::ConversationRelayEmbeddedConfig::TranscriptionEngine::TaggedSymbol
          )
        AZURE =
          T.let(
            :Azure,
            Telnyx::ConversationRelayEmbeddedConfig::TranscriptionEngine::TaggedSymbol
          )
        X_AI =
          T.let(
            :xAI,
            Telnyx::ConversationRelayEmbeddedConfig::TranscriptionEngine::TaggedSymbol
          )
        ASSEMBLY_AI =
          T.let(
            :AssemblyAI,
            Telnyx::ConversationRelayEmbeddedConfig::TranscriptionEngine::TaggedSymbol
          )
        SPEECHMATICS =
          T.let(
            :Speechmatics,
            Telnyx::ConversationRelayEmbeddedConfig::TranscriptionEngine::TaggedSymbol
          )
        SONIOX =
          T.let(
            :Soniox,
            Telnyx::ConversationRelayEmbeddedConfig::TranscriptionEngine::TaggedSymbol
          )
        A =
          T.let(
            :A,
            Telnyx::ConversationRelayEmbeddedConfig::TranscriptionEngine::TaggedSymbol
          )
        B =
          T.let(
            :B,
            Telnyx::ConversationRelayEmbeddedConfig::TranscriptionEngine::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::ConversationRelayEmbeddedConfig::TranscriptionEngine::TaggedSymbol
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
            T::Array[
              Telnyx::ConversationRelayEmbeddedConfig::VoiceSettings::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
