# frozen_string_literal: true

module Telnyx
  module Models
    class ConversationRelayEmbeddedConfig < Telnyx::Internal::Type::BaseModel
      # @!attribute url
      #   WebSocket URL for your Conversation Relay server. Must start with `ws://` or
      #   `wss://`.
      #
      #   @return [String]
      required :url, String

      # @!attribute custom_parameters
      #   Custom key-value parameters forwarded to the relay session as assistant dynamic
      #   variables.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :custom_parameters, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute dtmf_detection
      #   Enable DTMF detection for the relay session.
      #
      #   @return [Boolean, nil]
      optional :dtmf_detection, Telnyx::Internal::Type::Boolean

      # @!attribute greeting
      #   Text played when the relay session starts.
      #
      #   @return [String, nil]
      optional :greeting, String

      # @!attribute interruptible
      #   Controls when caller input can interrupt assistant speech. `any` allows speech
      #   or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      #   only; `dtmf` allows DTMF only.
      #
      #   @return [Symbol, Telnyx::Models::Calls::ConversationRelayInterruptible, nil]
      optional :interruptible, enum: -> { Telnyx::Calls::ConversationRelayInterruptible }

      # @!attribute interruptible_greeting
      #   Controls when caller input can interrupt assistant speech. `any` allows speech
      #   or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      #   only; `dtmf` allows DTMF only.
      #
      #   @return [Symbol, Telnyx::Models::Calls::ConversationRelayInterruptible, nil]
      optional :interruptible_greeting, enum: -> { Telnyx::Calls::ConversationRelayInterruptible }

      # @!attribute interruption_settings
      #   Settings for handling caller interruptions during Conversation Relay speech.
      #
      #   @return [Telnyx::Models::ConversationRelayInterruptionSettings, nil]
      optional :interruption_settings, -> { Telnyx::ConversationRelayInterruptionSettings }

      # @!attribute language
      #   Default language for both text-to-speech and speech recognition.
      #
      #   @return [String, nil]
      optional :language, String

      # @!attribute languages
      #   Per-language TTS and transcription settings.
      #
      #   @return [Array<Telnyx::Models::ConversationRelayLanguage>, nil]
      optional :languages, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::ConversationRelayLanguage] }

      # @!attribute provider
      #   Structured voice provider. Must be supplied together with `structured_provider`.
      #
      #   @return [String, nil]
      optional :provider, String

      # @!attribute structured_provider
      #   Provider-specific structured voice settings. Must be supplied together with
      #   `provider`; Telnyx sends the value as the nested provider configuration for
      #   Conversation Relay.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :structured_provider, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute transcription_engine
      #   Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
      #   `Telnyx` are supported for backward compatibility. For Conversation Relay, use
      #   this field with `transcription_engine_config`; the `transcription` object is not
      #   supported.
      #
      #   @return [Symbol, Telnyx::Models::ConversationRelayEmbeddedConfig::TranscriptionEngine, nil]
      optional :transcription_engine, enum: -> { Telnyx::ConversationRelayEmbeddedConfig::TranscriptionEngine }

      # @!attribute transcription_engine_config
      #   Engine-specific transcription settings for Conversation Relay. This accepts the
      #   same provider-specific options used by the Call Transcription Start command,
      #   such as `transcription_model`, without requiring the engine discriminator to be
      #   repeated inside this object.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :transcription_engine_config, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute tts_provider
      #   Text-to-speech provider. If omitted, Telnyx derives it from `voice` or
      #   `provider`.
      #
      #   @return [String, nil]
      optional :tts_provider, String

      # @!attribute voice
      #   The voice to be used by the voice assistant. Currently we support ElevenLabs,
      #   Telnyx and AWS voices.
      #
      #   **Supported Providers:**
      #
      #   - **AWS:** Use `AWS.Polly.<VoiceId>` (e.g., `AWS.Polly.Joanna`). For neural
      #     voices, which provide more realistic, human-like speech, append `-Neural` to
      #     the `VoiceId` (e.g., `AWS.Polly.Joanna-Neural`). Check the
      #     [available voices](https://docs.aws.amazon.com/polly/latest/dg/available-voices.html)
      #     for compatibility.
      #   - **Azure:** Use `Azure.<VoiceId>. (e.g. Azure.en-CA-ClaraNeural,
      #     Azure.en-CA-LiamNeural, Azure.en-US-BrianMultilingualNeural,
      #     Azure.en-US-Ava:DragonHDLatestNeural. For a complete list of voices, go to
      #     [Azure Voice Gallery](https://speech.microsoft.com/portal/voicegallery).)
      #   - **ElevenLabs:** Use `ElevenLabs.<ModelId>.<VoiceId>` (e.g.,
      #     `ElevenLabs.BaseModel.John`). The `ModelId` part is optional. To use
      #     ElevenLabs, you must provide your ElevenLabs API key as an integration secret
      #     under `"voice_settings": {"api_key_ref": "<secret_id>"}`. See
      #     [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
      #     for details. Check
      #     [available voices](https://elevenlabs.io/docs/api-reference/get-voices).
      #   - **Telnyx:** Use `Telnyx.<model_id>.<voice_id>`
      #   - **Inworld:** Use `Inworld.<ModelId>.<VoiceId>` (e.g., `Inworld.Mini.Loretta`,
      #     `Inworld.Max.Oliver`, `Inworld.TTS2.Loretta`). Supported models: `Mini`,
      #     `Max`, `TTS2`.
      #   - **xAI:** Use `xAI.<VoiceId>` (e.g., `xAI.eve`). Available voices: `eve`,
      #     `ara`, `rex`, `sal`, `leo`.
      #
      #   @return [String, nil]
      optional :voice, String

      # @!attribute voice_settings
      #   The settings associated with the voice selected
      #
      #   @return [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::InworldVoiceSettings, Telnyx::Models::XaiVoiceSettings, nil]
      optional :voice_settings, union: -> { Telnyx::ConversationRelayEmbeddedConfig::VoiceSettings }

      # @!method initialize(url:, custom_parameters: nil, dtmf_detection: nil, greeting: nil, interruptible: nil, interruptible_greeting: nil, interruption_settings: nil, language: nil, languages: nil, provider: nil, structured_provider: nil, transcription_engine: nil, transcription_engine_config: nil, tts_provider: nil, voice: nil, voice_settings: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ConversationRelayEmbeddedConfig} for more details.
      #
      #   Starts a Conversation Relay session automatically when the answered/dialed call
      #   is answered. This embedded shape is supported on `answer` and `dial`. It uses
      #   public field names (`url`, `dtmf_detection`, `greeting`, `voice`, `language`,
      #   etc.) and maps them to the underlying Conversation Relay action. `client_state`,
      #   `tts_language`, and `transcription_language` inside this object are ignored; use
      #   the parent command's `client_state` and `command_id` fields instead.
      #
      #   @param url [String] WebSocket URL for your Conversation Relay server. Must start with `ws://` or `ws
      #
      #   @param custom_parameters [Hash{Symbol=>Object}] Custom key-value parameters forwarded to the relay session as assistant dynamic
      #
      #   @param dtmf_detection [Boolean] Enable DTMF detection for the relay session.
      #
      #   @param greeting [String] Text played when the relay session starts.
      #
      #   @param interruptible [Symbol, Telnyx::Models::Calls::ConversationRelayInterruptible] Controls when caller input can interrupt assistant speech. `any` allows speech o
      #
      #   @param interruptible_greeting [Symbol, Telnyx::Models::Calls::ConversationRelayInterruptible] Controls when caller input can interrupt assistant speech. `any` allows speech o
      #
      #   @param interruption_settings [Telnyx::Models::ConversationRelayInterruptionSettings] Settings for handling caller interruptions during Conversation Relay speech.
      #
      #   @param language [String] Default language for both text-to-speech and speech recognition.
      #
      #   @param languages [Array<Telnyx::Models::ConversationRelayLanguage>] Per-language TTS and transcription settings.
      #
      #   @param provider [String] Structured voice provider. Must be supplied together with `structured_provider`.
      #
      #   @param structured_provider [Hash{Symbol=>Object}] Provider-specific structured voice settings. Must be supplied together with `pro
      #
      #   @param transcription_engine [Symbol, Telnyx::Models::ConversationRelayEmbeddedConfig::TranscriptionEngine] Engine to use for speech recognition. Legacy values `A` - `Google`, `B` - `Telny
      #
      #   @param transcription_engine_config [Hash{Symbol=>Object}] Engine-specific transcription settings for Conversation Relay. This accepts the
      #
      #   @param tts_provider [String] Text-to-speech provider. If omitted, Telnyx derives it from `voice` or `provider
      #
      #   @param voice [String] The voice to be used by the voice assistant. Currently we support ElevenLabs, Te
      #
      #   @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::InworldVoiceSettings, Telnyx::Models::XaiVoiceSettings] The settings associated with the voice selected

      # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
      # `Telnyx` are supported for backward compatibility. For Conversation Relay, use
      # this field with `transcription_engine_config`; the `transcription` object is not
      # supported.
      #
      # @see Telnyx::Models::ConversationRelayEmbeddedConfig#transcription_engine
      module TranscriptionEngine
        extend Telnyx::Internal::Type::Enum

        GOOGLE = :Google
        TELNYX = :Telnyx
        DEEPGRAM = :Deepgram
        AZURE = :Azure
        X_AI = :xAI
        ASSEMBLY_AI = :AssemblyAI
        SPEECHMATICS = :Speechmatics
        SONIOX = :Soniox
        A = :A
        B = :B

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The settings associated with the voice selected
      #
      # @see Telnyx::Models::ConversationRelayEmbeddedConfig#voice_settings
      module VoiceSettings
        extend Telnyx::Internal::Type::Union

        discriminator :type

        variant :elevenlabs, -> { Telnyx::Calls::ElevenLabsVoiceSettings }

        variant :telnyx, -> { Telnyx::Calls::TelnyxVoiceSettings }

        variant :aws, -> { Telnyx::Calls::AwsVoiceSettings }

        variant :minimax, -> { Telnyx::MinimaxVoiceSettings }

        variant :azure, -> { Telnyx::AzureVoiceSettings }

        variant :rime, -> { Telnyx::RimeVoiceSettings }

        variant :resemble, -> { Telnyx::ResembleVoiceSettings }

        variant :inworld, -> { Telnyx::InworldVoiceSettings }

        variant :xai, -> { Telnyx::XaiVoiceSettings }

        # @!method self.variants
        #   @return [Array(Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::InworldVoiceSettings, Telnyx::Models::XaiVoiceSettings)]
      end
    end
  end
end
