# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#start_conversation_relay
      class ActionStartConversationRelayParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute call_control_id
        #
        #   @return [String]
        required :call_control_id, String

        # @!attribute assistant
        #   Custom parameters for the Conversation Relay session. Pass key-value data as
        #   `assistant.dynamic_variables` to make it available to the relay session.
        #
        #   @return [Telnyx::Models::Calls::ActionStartConversationRelayParams::Assistant, nil]
        optional :assistant, -> { Telnyx::Calls::ActionStartConversationRelayParams::Assistant }

        # @!attribute client_state
        #   Use this field to add state to subsequent webhooks. It must be a valid Base-64
        #   encoded string.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute command_id
        #   Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #   the same `command_id` for the same `call_control_id`.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!attribute conversation_relay_dtmf_detection
        #   Enable DTMF detection for the relay session.
        #
        #   @return [Boolean, nil]
        optional :conversation_relay_dtmf_detection, Telnyx::Internal::Type::Boolean

        # @!attribute conversation_relay_settings
        #   Conversation Relay connection settings. This object can provide `url`,
        #   `dtmf_detection`, `interruptible`, `interruptible_greeting`, and `languages`.
        #   Top-level aliases override nested values when both are present.
        #
        #   @return [Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings, nil]
        optional :conversation_relay_settings,
                 -> { Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings }

        # @!attribute conversation_relay_url
        #   WebSocket URL for your Conversation Relay server. Must start with `ws://` or
        #   `wss://`.
        #
        #   @return [String, nil]
        optional :conversation_relay_url, String

        # @!attribute custom_parameters
        #   Custom key-value parameters forwarded to the relay session as
        #   `assistant.dynamic_variables`. If `assistant.dynamic_variables` is also present,
        #   these values are merged in.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :custom_parameters, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute dtmf_detection
        #   Public alias for `conversation_relay_dtmf_detection`. If both are present, this
        #   value wins.
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
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::Interruptible, nil]
        optional :interruptible, enum: -> { Telnyx::Calls::ActionStartConversationRelayParams::Interruptible }

        # @!attribute interruptible_greeting
        #   Controls when caller input can interrupt assistant speech. `any` allows speech
        #   or DTMF interruptions; `none` disables interruptions; `speech` allows speech
        #   only; `dtmf` allows DTMF only.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::InterruptibleGreeting, nil]
        optional :interruptible_greeting,
                 enum: -> { Telnyx::Calls::ActionStartConversationRelayParams::InterruptibleGreeting }

        # @!attribute interruption_settings
        #   Settings for handling caller interruptions during Conversation Relay speech.
        #
        #   @return [Telnyx::Models::Calls::ActionStartConversationRelayParams::InterruptionSettings, nil]
        optional :interruption_settings,
                 -> { Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings }

        # @!attribute language
        #   Default language for the relay session. This value is used for both
        #   text-to-speech and speech recognition.
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute languages
        #   Per-language TTS and transcription settings.
        #
        #   @return [Array<Telnyx::Models::Calls::ActionStartConversationRelayParams::Language>, nil]
        optional :languages,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Calls::ActionStartConversationRelayParams::Language] }

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

        # @!attribute transcription
        #   @deprecated
        #
        #   Not supported for Conversation Relay start requests. Use `transcription_engine`
        #   and `transcription_engine_config` instead.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :transcription, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute transcription_engine
        #   Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
        #   `Telnyx` are supported for backward compatibility. For Conversation Relay, use
        #   this field with `transcription_engine_config`; the `transcription` object is not
        #   supported.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::TranscriptionEngine, nil]
        optional :transcription_engine,
                 enum: -> { Telnyx::Calls::ActionStartConversationRelayParams::TranscriptionEngine }

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

        # @!attribute url
        #   Public alias for `conversation_relay_url`. Must start with `ws://` or `wss://`.
        #   If both are present, this value wins.
        #
        #   @return [String, nil]
        optional :url, String

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
        #     `Inworld.Max.Oliver`). Supported models: `Mini`, `Max`.
        #   - **xAI:** Use `xAI.<VoiceId>` (e.g., `xAI.eve`). Available voices: `eve`,
        #     `ara`, `rex`, `sal`, `leo`.
        #
        #   @return [String, nil]
        optional :voice, String

        # @!attribute voice_settings
        #   The settings associated with the voice selected
        #
        #   @return [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::Calls::ActionStartConversationRelayParams::VoiceSettings::Inworld, Telnyx::Models::Calls::ActionStartConversationRelayParams::VoiceSettings::Xai, nil]
        optional :voice_settings, union: -> { Telnyx::Calls::ActionStartConversationRelayParams::VoiceSettings }

        # @!method initialize(call_control_id:, assistant: nil, client_state: nil, command_id: nil, conversation_relay_dtmf_detection: nil, conversation_relay_settings: nil, conversation_relay_url: nil, custom_parameters: nil, dtmf_detection: nil, greeting: nil, interruptible: nil, interruptible_greeting: nil, interruption_settings: nil, language: nil, languages: nil, provider: nil, structured_provider: nil, transcription: nil, transcription_engine: nil, transcription_engine_config: nil, tts_provider: nil, url: nil, voice: nil, voice_settings: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionStartConversationRelayParams} for more details.
        #
        #   @param call_control_id [String]
        #
        #   @param assistant [Telnyx::Models::Calls::ActionStartConversationRelayParams::Assistant] Custom parameters for the Conversation Relay session. Pass key-value data as `as
        #
        #   @param client_state [String] Use this field to add state to subsequent webhooks. It must be a valid Base-64 e
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param conversation_relay_dtmf_detection [Boolean] Enable DTMF detection for the relay session.
        #
        #   @param conversation_relay_settings [Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings] Conversation Relay connection settings. This object can provide `url`, `dtmf_det
        #
        #   @param conversation_relay_url [String] WebSocket URL for your Conversation Relay server. Must start with `ws://` or `ws
        #
        #   @param custom_parameters [Hash{Symbol=>Object}] Custom key-value parameters forwarded to the relay session as `assistant.dynamic
        #
        #   @param dtmf_detection [Boolean] Public alias for `conversation_relay_dtmf_detection`. If both are present, this
        #
        #   @param greeting [String] Text played when the relay session starts.
        #
        #   @param interruptible [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::Interruptible] Controls when caller input can interrupt assistant speech. `any` allows speech o
        #
        #   @param interruptible_greeting [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::InterruptibleGreeting] Controls when caller input can interrupt assistant speech. `any` allows speech o
        #
        #   @param interruption_settings [Telnyx::Models::Calls::ActionStartConversationRelayParams::InterruptionSettings] Settings for handling caller interruptions during Conversation Relay speech.
        #
        #   @param language [String] Default language for the relay session. This value is used for both text-to-spee
        #
        #   @param languages [Array<Telnyx::Models::Calls::ActionStartConversationRelayParams::Language>] Per-language TTS and transcription settings.
        #
        #   @param provider [String] Structured voice provider. Must be supplied together with `structured_provider`.
        #
        #   @param structured_provider [Hash{Symbol=>Object}] Provider-specific structured voice settings. Must be supplied together with `pro
        #
        #   @param transcription [Hash{Symbol=>Object}] Not supported for Conversation Relay start requests. Use `transcription_engine`
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::TranscriptionEngine] Engine to use for speech recognition. Legacy values `A` - `Google`, `B` - `Telny
        #
        #   @param transcription_engine_config [Hash{Symbol=>Object}] Engine-specific transcription settings for Conversation Relay. This accepts the
        #
        #   @param tts_provider [String] Text-to-speech provider. If omitted, Telnyx derives it from `voice` or `provider
        #
        #   @param url [String] Public alias for `conversation_relay_url`. Must start with `ws://` or `wss://`.
        #
        #   @param voice [String] The voice to be used by the voice assistant. Currently we support ElevenLabs, Te
        #
        #   @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::Calls::ActionStartConversationRelayParams::VoiceSettings::Inworld, Telnyx::Models::Calls::ActionStartConversationRelayParams::VoiceSettings::Xai] The settings associated with the voice selected
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Assistant < Telnyx::Internal::Type::BaseModel
          # @!attribute dynamic_variables
          #   Custom key-value parameters forwarded to the Conversation Relay session.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :dynamic_variables, Telnyx::Internal::Type::HashOf[String]

          # @!method initialize(dynamic_variables: nil)
          #   Custom parameters for the Conversation Relay session. Pass key-value data as
          #   `assistant.dynamic_variables` to make it available to the relay session.
          #
          #   @param dynamic_variables [Hash{Symbol=>String}] Custom key-value parameters forwarded to the Conversation Relay session.
        end

        class ConversationRelaySettings < Telnyx::Internal::Type::BaseModel
          # @!attribute url
          #   WebSocket URL for your Conversation Relay server. Must start with `ws://` or
          #   `wss://`.
          #
          #   @return [String]
          required :url, String

          # @!attribute dtmf_detection
          #   Whether to enable DTMF detection during the relay session.
          #
          #   @return [Boolean, nil]
          optional :dtmf_detection, Telnyx::Internal::Type::Boolean

          # @!attribute interruptible
          #   Controls when caller input can interrupt assistant speech. `any` allows speech
          #   or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          #   only; `dtmf` allows DTMF only.
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Interruptible, nil]
          optional :interruptible,
                   enum: -> { Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Interruptible }

          # @!attribute interruptible_greeting
          #   Controls when caller input can interrupt assistant speech. `any` allows speech
          #   or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          #   only; `dtmf` allows DTMF only.
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::InterruptibleGreeting, nil]
          optional :interruptible_greeting,
                   enum: -> { Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::InterruptibleGreeting }

          # @!attribute languages
          #   Language-specific TTS and transcription settings.
          #
          #   @return [Array<Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language>, nil]
          optional :languages,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language] }

          # @!method initialize(url:, dtmf_detection: nil, interruptible: nil, interruptible_greeting: nil, languages: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings}
          #   for more details.
          #
          #   Conversation Relay connection settings. This object can provide `url`,
          #   `dtmf_detection`, `interruptible`, `interruptible_greeting`, and `languages`.
          #   Top-level aliases override nested values when both are present.
          #
          #   @param url [String] WebSocket URL for your Conversation Relay server. Must start with `ws://` or `ws
          #
          #   @param dtmf_detection [Boolean] Whether to enable DTMF detection during the relay session.
          #
          #   @param interruptible [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Interruptible] Controls when caller input can interrupt assistant speech. `any` allows speech o
          #
          #   @param interruptible_greeting [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::InterruptibleGreeting] Controls when caller input can interrupt assistant speech. `any` allows speech o
          #
          #   @param languages [Array<Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language>] Language-specific TTS and transcription settings.

          # Controls when caller input can interrupt assistant speech. `any` allows speech
          # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          # only; `dtmf` allows DTMF only.
          #
          # @see Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings#interruptible
          module Interruptible
            extend Telnyx::Internal::Type::Enum

            NONE = :none
            ANY = :any
            SPEECH = :speech
            DTMF = :dtmf

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Controls when caller input can interrupt assistant speech. `any` allows speech
          # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          # only; `dtmf` allows DTMF only.
          #
          # @see Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings#interruptible_greeting
          module InterruptibleGreeting
            extend Telnyx::Internal::Type::Enum

            NONE = :none
            ANY = :any
            SPEECH = :speech
            DTMF = :dtmf

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class Language < Telnyx::Internal::Type::BaseModel
            # @!attribute language
            #   BCP 47 language tag for this language configuration.
            #
            #   @return [String]
            required :language, String

            # @!attribute speech_model
            #   Conversation Relay speech model. Prefer
            #   `transcription_engine_config.transcription_model` when configuring
            #   speech-to-text.
            #
            #   @return [String, nil]
            optional :speech_model, String

            # @!attribute transcription_engine
            #   Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
            #   `Telnyx` are supported for backward compatibility. When provided in a
            #   Conversation Relay language entry, Telnyx derives `transcription_provider` and
            #   `speech_model` for that language.
            #
            #   @return [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine, nil]
            optional :transcription_engine,
                     enum: -> { Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine }

            # @!attribute transcription_engine_config
            #   Engine-specific transcription settings for Conversation Relay. This accepts the
            #   same provider-specific options used by the Call Transcription Start command,
            #   such as `transcription_model`, without requiring the engine discriminator to be
            #   repeated inside this object.
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :transcription_engine_config, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!attribute transcription_provider
            #   Conversation Relay transcription provider name. Prefer `transcription_engine`
            #   when configuring speech-to-text.
            #
            #   @return [String, nil]
            optional :transcription_provider, String

            # @!attribute tts_provider
            #   Text-to-speech provider for this language. If omitted and `voice` is provided,
            #   Telnyx derives the provider from the voice identifier.
            #
            #   @return [String, nil]
            optional :tts_provider, String

            # @!attribute voice
            #   Voice identifier for this language.
            #
            #   @return [String, nil]
            optional :voice, String

            # @!attribute voice_settings
            #   The settings associated with the voice selected
            #
            #   @return [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::VoiceSettings::Inworld, Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::VoiceSettings::Xai, nil]
            optional :voice_settings,
                     union: -> { Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::VoiceSettings }

            # @!method initialize(language:, speech_model: nil, transcription_engine: nil, transcription_engine_config: nil, transcription_provider: nil, tts_provider: nil, voice: nil, voice_settings: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language}
            #   for more details.
            #
            #   Language-specific TTS and transcription settings for Conversation Relay.
            #
            #   @param language [String] BCP 47 language tag for this language configuration.
            #
            #   @param speech_model [String] Conversation Relay speech model. Prefer `transcription_engine_config.transcripti
            #
            #   @param transcription_engine [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine] Engine to use for speech recognition. Legacy values `A` - `Google`, `B` - `Telny
            #
            #   @param transcription_engine_config [Hash{Symbol=>Object}] Engine-specific transcription settings for Conversation Relay. This accepts the
            #
            #   @param transcription_provider [String] Conversation Relay transcription provider name. Prefer `transcription_engine` wh
            #
            #   @param tts_provider [String] Text-to-speech provider for this language. If omitted and `voice` is provided, T
            #
            #   @param voice [String] Voice identifier for this language.
            #
            #   @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::VoiceSettings::Inworld, Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::VoiceSettings::Xai] The settings associated with the voice selected

            # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
            # `Telnyx` are supported for backward compatibility. When provided in a
            # Conversation Relay language entry, Telnyx derives `transcription_provider` and
            # `speech_model` for that language.
            #
            # @see Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language#transcription_engine
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
            # @see Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language#voice_settings
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

              variant :inworld,
                      -> { Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::VoiceSettings::Inworld }

              variant :xai,
                      -> { Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::VoiceSettings::Xai }

              class Inworld < Telnyx::Internal::Type::BaseModel
                # @!attribute type
                #   Voice settings provider type
                #
                #   @return [Symbol, :inworld]
                required :type, const: :inworld

                # @!method initialize(type: :inworld)
                #   @param type [Symbol, :inworld] Voice settings provider type
              end

              class Xai < Telnyx::Internal::Type::BaseModel
                # @!attribute type
                #   Voice settings provider type
                #
                #   @return [Symbol, :xai]
                required :type, const: :xai

                # @!attribute language
                #   Language code, or `auto` to detect automatically.
                #
                #   @return [String, nil]
                optional :language, String

                # @!method initialize(language: nil, type: :xai)
                #   @param language [String] Language code, or `auto` to detect automatically.
                #
                #   @param type [Symbol, :xai] Voice settings provider type
              end

              # @!method self.variants
              #   @return [Array(Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::VoiceSettings::Inworld, Telnyx::Models::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::VoiceSettings::Xai)]
            end
          end
        end

        # Controls when caller input can interrupt assistant speech. `any` allows speech
        # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
        # only; `dtmf` allows DTMF only.
        module Interruptible
          extend Telnyx::Internal::Type::Enum

          NONE = :none
          ANY = :any
          SPEECH = :speech
          DTMF = :dtmf

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Controls when caller input can interrupt assistant speech. `any` allows speech
        # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
        # only; `dtmf` allows DTMF only.
        module InterruptibleGreeting
          extend Telnyx::Internal::Type::Enum

          NONE = :none
          ANY = :any
          SPEECH = :speech
          DTMF = :dtmf

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class InterruptionSettings < Telnyx::Internal::Type::BaseModel
          # @!attribute enable
          #   Legacy boolean form. `true` is equivalent to `interruptible=any`; `false` is
          #   equivalent to `interruptible=none`.
          #
          #   @return [Boolean, nil]
          optional :enable, Telnyx::Internal::Type::Boolean

          # @!attribute interruptible
          #   Controls when caller input can interrupt assistant speech. `any` allows speech
          #   or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          #   only; `dtmf` allows DTMF only.
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::InterruptionSettings::Interruptible, nil]
          optional :interruptible,
                   enum: -> { Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::Interruptible }

          # @!attribute interruptible_greeting
          #   Controls when caller input can interrupt assistant speech. `any` allows speech
          #   or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          #   only; `dtmf` allows DTMF only.
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::InterruptionSettings::InterruptibleGreeting, nil]
          optional :interruptible_greeting,
                   enum: -> { Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::InterruptibleGreeting }

          # @!attribute welcome_greeting_interruptible
          #   Controls when caller input can interrupt assistant speech. `any` allows speech
          #   or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          #   only; `dtmf` allows DTMF only.
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::InterruptionSettings::WelcomeGreetingInterruptible, nil]
          optional :welcome_greeting_interruptible,
                   enum: -> { Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::WelcomeGreetingInterruptible }

          # @!method initialize(enable: nil, interruptible: nil, interruptible_greeting: nil, welcome_greeting_interruptible: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::ActionStartConversationRelayParams::InterruptionSettings}
          #   for more details.
          #
          #   Settings for handling caller interruptions during Conversation Relay speech.
          #
          #   @param enable [Boolean] Legacy boolean form. `true` is equivalent to `interruptible=any`; `false` is equ
          #
          #   @param interruptible [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::InterruptionSettings::Interruptible] Controls when caller input can interrupt assistant speech. `any` allows speech o
          #
          #   @param interruptible_greeting [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::InterruptionSettings::InterruptibleGreeting] Controls when caller input can interrupt assistant speech. `any` allows speech o
          #
          #   @param welcome_greeting_interruptible [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::InterruptionSettings::WelcomeGreetingInterruptible] Controls when caller input can interrupt assistant speech. `any` allows speech o

          # Controls when caller input can interrupt assistant speech. `any` allows speech
          # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          # only; `dtmf` allows DTMF only.
          #
          # @see Telnyx::Models::Calls::ActionStartConversationRelayParams::InterruptionSettings#interruptible
          module Interruptible
            extend Telnyx::Internal::Type::Enum

            NONE = :none
            ANY = :any
            SPEECH = :speech
            DTMF = :dtmf

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Controls when caller input can interrupt assistant speech. `any` allows speech
          # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          # only; `dtmf` allows DTMF only.
          #
          # @see Telnyx::Models::Calls::ActionStartConversationRelayParams::InterruptionSettings#interruptible_greeting
          module InterruptibleGreeting
            extend Telnyx::Internal::Type::Enum

            NONE = :none
            ANY = :any
            SPEECH = :speech
            DTMF = :dtmf

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Controls when caller input can interrupt assistant speech. `any` allows speech
          # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          # only; `dtmf` allows DTMF only.
          #
          # @see Telnyx::Models::Calls::ActionStartConversationRelayParams::InterruptionSettings#welcome_greeting_interruptible
          module WelcomeGreetingInterruptible
            extend Telnyx::Internal::Type::Enum

            NONE = :none
            ANY = :any
            SPEECH = :speech
            DTMF = :dtmf

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Language < Telnyx::Internal::Type::BaseModel
          # @!attribute language
          #   BCP 47 language tag for this language configuration.
          #
          #   @return [String]
          required :language, String

          # @!attribute speech_model
          #   Conversation Relay speech model. Prefer
          #   `transcription_engine_config.transcription_model` when configuring
          #   speech-to-text.
          #
          #   @return [String, nil]
          optional :speech_model, String

          # @!attribute transcription_engine
          #   Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
          #   `Telnyx` are supported for backward compatibility. When provided in a
          #   Conversation Relay language entry, Telnyx derives `transcription_provider` and
          #   `speech_model` for that language.
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine, nil]
          optional :transcription_engine,
                   enum: -> { Telnyx::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine }

          # @!attribute transcription_engine_config
          #   Engine-specific transcription settings for Conversation Relay. This accepts the
          #   same provider-specific options used by the Call Transcription Start command,
          #   such as `transcription_model`, without requiring the engine discriminator to be
          #   repeated inside this object.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :transcription_engine_config, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute transcription_provider
          #   Conversation Relay transcription provider name. Prefer `transcription_engine`
          #   when configuring speech-to-text.
          #
          #   @return [String, nil]
          optional :transcription_provider, String

          # @!attribute tts_provider
          #   Text-to-speech provider for this language. If omitted and `voice` is provided,
          #   Telnyx derives the provider from the voice identifier.
          #
          #   @return [String, nil]
          optional :tts_provider, String

          # @!attribute voice
          #   Voice identifier for this language.
          #
          #   @return [String, nil]
          optional :voice, String

          # @!attribute voice_settings
          #   The settings associated with the voice selected
          #
          #   @return [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::Calls::ActionStartConversationRelayParams::Language::VoiceSettings::Inworld, Telnyx::Models::Calls::ActionStartConversationRelayParams::Language::VoiceSettings::Xai, nil]
          optional :voice_settings,
                   union: -> { Telnyx::Calls::ActionStartConversationRelayParams::Language::VoiceSettings }

          # @!method initialize(language:, speech_model: nil, transcription_engine: nil, transcription_engine_config: nil, transcription_provider: nil, tts_provider: nil, voice: nil, voice_settings: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::ActionStartConversationRelayParams::Language} for more
          #   details.
          #
          #   Language-specific TTS and transcription settings for Conversation Relay.
          #
          #   @param language [String] BCP 47 language tag for this language configuration.
          #
          #   @param speech_model [String] Conversation Relay speech model. Prefer `transcription_engine_config.transcripti
          #
          #   @param transcription_engine [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine] Engine to use for speech recognition. Legacy values `A` - `Google`, `B` - `Telny
          #
          #   @param transcription_engine_config [Hash{Symbol=>Object}] Engine-specific transcription settings for Conversation Relay. This accepts the
          #
          #   @param transcription_provider [String] Conversation Relay transcription provider name. Prefer `transcription_engine` wh
          #
          #   @param tts_provider [String] Text-to-speech provider for this language. If omitted and `voice` is provided, T
          #
          #   @param voice [String] Voice identifier for this language.
          #
          #   @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::Calls::ActionStartConversationRelayParams::Language::VoiceSettings::Inworld, Telnyx::Models::Calls::ActionStartConversationRelayParams::Language::VoiceSettings::Xai] The settings associated with the voice selected

          # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
          # `Telnyx` are supported for backward compatibility. When provided in a
          # Conversation Relay language entry, Telnyx derives `transcription_provider` and
          # `speech_model` for that language.
          #
          # @see Telnyx::Models::Calls::ActionStartConversationRelayParams::Language#transcription_engine
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
          # @see Telnyx::Models::Calls::ActionStartConversationRelayParams::Language#voice_settings
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

            variant :inworld,
                    -> { Telnyx::Calls::ActionStartConversationRelayParams::Language::VoiceSettings::Inworld }

            variant :xai, -> { Telnyx::Calls::ActionStartConversationRelayParams::Language::VoiceSettings::Xai }

            class Inworld < Telnyx::Internal::Type::BaseModel
              # @!attribute type
              #   Voice settings provider type
              #
              #   @return [Symbol, :inworld]
              required :type, const: :inworld

              # @!method initialize(type: :inworld)
              #   @param type [Symbol, :inworld] Voice settings provider type
            end

            class Xai < Telnyx::Internal::Type::BaseModel
              # @!attribute type
              #   Voice settings provider type
              #
              #   @return [Symbol, :xai]
              required :type, const: :xai

              # @!attribute language
              #   Language code, or `auto` to detect automatically.
              #
              #   @return [String, nil]
              optional :language, String

              # @!method initialize(language: nil, type: :xai)
              #   @param language [String] Language code, or `auto` to detect automatically.
              #
              #   @param type [Symbol, :xai] Voice settings provider type
            end

            # @!method self.variants
            #   @return [Array(Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::Calls::ActionStartConversationRelayParams::Language::VoiceSettings::Inworld, Telnyx::Models::Calls::ActionStartConversationRelayParams::Language::VoiceSettings::Xai)]
          end
        end

        # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
        # `Telnyx` are supported for backward compatibility. For Conversation Relay, use
        # this field with `transcription_engine_config`; the `transcription` object is not
        # supported.
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

          variant :inworld, -> { Telnyx::Calls::ActionStartConversationRelayParams::VoiceSettings::Inworld }

          variant :xai, -> { Telnyx::Calls::ActionStartConversationRelayParams::VoiceSettings::Xai }

          class Inworld < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   Voice settings provider type
            #
            #   @return [Symbol, :inworld]
            required :type, const: :inworld

            # @!method initialize(type: :inworld)
            #   @param type [Symbol, :inworld] Voice settings provider type
          end

          class Xai < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   Voice settings provider type
            #
            #   @return [Symbol, :xai]
            required :type, const: :xai

            # @!attribute language
            #   Language code, or `auto` to detect automatically.
            #
            #   @return [String, nil]
            optional :language, String

            # @!method initialize(language: nil, type: :xai)
            #   @param language [String] Language code, or `auto` to detect automatically.
            #
            #   @param type [Symbol, :xai] Voice settings provider type
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::Calls::ActionStartConversationRelayParams::VoiceSettings::Inworld, Telnyx::Models::Calls::ActionStartConversationRelayParams::VoiceSettings::Xai)]
        end
      end
    end
  end
end
