# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionStartConversationRelayParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionStartConversationRelayParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :call_control_id

        # Custom parameters for the Conversation Relay session. Pass key-value data as
        # `assistant.dynamic_variables` to make it available to the relay session.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionStartConversationRelayParams::Assistant
            )
          )
        end
        attr_reader :assistant

        sig do
          params(
            assistant:
              Telnyx::Calls::ActionStartConversationRelayParams::Assistant::OrHash
          ).void
        end
        attr_writer :assistant

        # Use this field to add state to subsequent webhooks. It must be a valid Base-64
        # encoded string.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Use this field to avoid duplicate commands. Telnyx will ignore any command with
        # the same `command_id` for the same `call_control_id`.
        sig { returns(T.nilable(String)) }
        attr_reader :command_id

        sig { params(command_id: String).void }
        attr_writer :command_id

        # Enable DTMF detection for the relay session.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :conversation_relay_dtmf_detection

        sig { params(conversation_relay_dtmf_detection: T::Boolean).void }
        attr_writer :conversation_relay_dtmf_detection

        # Conversation Relay connection settings. This object can provide `url`,
        # `dtmf_detection`, `interruptible`, `interruptible_greeting`, and `languages`.
        # Top-level aliases override nested values when both are present.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings
            )
          )
        end
        attr_reader :conversation_relay_settings

        sig do
          params(
            conversation_relay_settings:
              Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::OrHash
          ).void
        end
        attr_writer :conversation_relay_settings

        # WebSocket URL for your Conversation Relay server. Must start with `ws://` or
        # `wss://`.
        sig { returns(T.nilable(String)) }
        attr_reader :conversation_relay_url

        sig { params(conversation_relay_url: String).void }
        attr_writer :conversation_relay_url

        # Custom key-value parameters forwarded to the relay session as
        # `assistant.dynamic_variables`. If `assistant.dynamic_variables` is also present,
        # these values are merged in.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :custom_parameters

        sig { params(custom_parameters: T::Hash[Symbol, T.anything]).void }
        attr_writer :custom_parameters

        # Public alias for `conversation_relay_dtmf_detection`. If both are present, this
        # value wins.
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
            T.nilable(
              Telnyx::Calls::ActionStartConversationRelayParams::Interruptible::OrSymbol
            )
          )
        end
        attr_reader :interruptible

        sig do
          params(
            interruptible:
              Telnyx::Calls::ActionStartConversationRelayParams::Interruptible::OrSymbol
          ).void
        end
        attr_writer :interruptible

        # Controls when caller input can interrupt assistant speech. `any` allows speech
        # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
        # only; `dtmf` allows DTMF only.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionStartConversationRelayParams::InterruptibleGreeting::OrSymbol
            )
          )
        end
        attr_reader :interruptible_greeting

        sig do
          params(
            interruptible_greeting:
              Telnyx::Calls::ActionStartConversationRelayParams::InterruptibleGreeting::OrSymbol
          ).void
        end
        attr_writer :interruptible_greeting

        # Settings for handling caller interruptions during Conversation Relay speech.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings
            )
          )
        end
        attr_reader :interruption_settings

        sig do
          params(
            interruption_settings:
              Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::OrHash
          ).void
        end
        attr_writer :interruption_settings

        # Default language for the relay session. This value is used for both
        # text-to-speech and speech recognition.
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        # Per-language TTS and transcription settings.
        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Calls::ActionStartConversationRelayParams::Language
              ]
            )
          )
        end
        attr_reader :languages

        sig do
          params(
            languages:
              T::Array[
                Telnyx::Calls::ActionStartConversationRelayParams::Language::OrHash
              ]
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

        # Not supported for Conversation Relay start requests. Use `transcription_engine`
        # and `transcription_engine_config` instead.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :transcription

        sig { params(transcription: T::Hash[Symbol, T.anything]).void }
        attr_writer :transcription

        # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
        # `Telnyx` are supported for backward compatibility. For Conversation Relay, use
        # this field with `transcription_engine_config`; the `transcription` object is not
        # supported.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionStartConversationRelayParams::TranscriptionEngine::OrSymbol
            )
          )
        end
        attr_reader :transcription_engine

        sig do
          params(
            transcription_engine:
              Telnyx::Calls::ActionStartConversationRelayParams::TranscriptionEngine::OrSymbol
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

        # Public alias for `conversation_relay_url`. Must start with `ws://` or `wss://`.
        # If both are present, this value wins.
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

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
        #   `Inworld.Max.Oliver`). Supported models: `Mini`, `Max`.
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
                Telnyx::Calls::ActionStartConversationRelayParams::VoiceSettings::Inworld,
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
                Telnyx::Calls::ActionStartConversationRelayParams::VoiceSettings::Inworld::OrHash,
                Telnyx::XaiVoiceSettings::OrHash
              )
          ).void
        end
        attr_writer :voice_settings

        sig do
          params(
            call_control_id: String,
            assistant:
              Telnyx::Calls::ActionStartConversationRelayParams::Assistant::OrHash,
            client_state: String,
            command_id: String,
            conversation_relay_dtmf_detection: T::Boolean,
            conversation_relay_settings:
              Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::OrHash,
            conversation_relay_url: String,
            custom_parameters: T::Hash[Symbol, T.anything],
            dtmf_detection: T::Boolean,
            greeting: String,
            interruptible:
              Telnyx::Calls::ActionStartConversationRelayParams::Interruptible::OrSymbol,
            interruptible_greeting:
              Telnyx::Calls::ActionStartConversationRelayParams::InterruptibleGreeting::OrSymbol,
            interruption_settings:
              Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::OrHash,
            language: String,
            languages:
              T::Array[
                Telnyx::Calls::ActionStartConversationRelayParams::Language::OrHash
              ],
            provider: String,
            structured_provider: T::Hash[Symbol, T.anything],
            transcription: T::Hash[Symbol, T.anything],
            transcription_engine:
              Telnyx::Calls::ActionStartConversationRelayParams::TranscriptionEngine::OrSymbol,
            transcription_engine_config: T::Hash[Symbol, T.anything],
            tts_provider: String,
            url: String,
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
                Telnyx::Calls::ActionStartConversationRelayParams::VoiceSettings::Inworld::OrHash,
                Telnyx::XaiVoiceSettings::OrHash
              ),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          call_control_id:,
          # Custom parameters for the Conversation Relay session. Pass key-value data as
          # `assistant.dynamic_variables` to make it available to the relay session.
          assistant: nil,
          # Use this field to add state to subsequent webhooks. It must be a valid Base-64
          # encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Enable DTMF detection for the relay session.
          conversation_relay_dtmf_detection: nil,
          # Conversation Relay connection settings. This object can provide `url`,
          # `dtmf_detection`, `interruptible`, `interruptible_greeting`, and `languages`.
          # Top-level aliases override nested values when both are present.
          conversation_relay_settings: nil,
          # WebSocket URL for your Conversation Relay server. Must start with `ws://` or
          # `wss://`.
          conversation_relay_url: nil,
          # Custom key-value parameters forwarded to the relay session as
          # `assistant.dynamic_variables`. If `assistant.dynamic_variables` is also present,
          # these values are merged in.
          custom_parameters: nil,
          # Public alias for `conversation_relay_dtmf_detection`. If both are present, this
          # value wins.
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
          # Default language for the relay session. This value is used for both
          # text-to-speech and speech recognition.
          language: nil,
          # Per-language TTS and transcription settings.
          languages: nil,
          # Structured voice provider. Must be supplied together with `structured_provider`.
          provider: nil,
          # Provider-specific structured voice settings. Must be supplied together with
          # `provider`; Telnyx sends the value as the nested provider configuration for
          # Conversation Relay.
          structured_provider: nil,
          # Not supported for Conversation Relay start requests. Use `transcription_engine`
          # and `transcription_engine_config` instead.
          transcription: nil,
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
          # Public alias for `conversation_relay_url`. Must start with `ws://` or `wss://`.
          # If both are present, this value wins.
          url: nil,
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
          #   `Inworld.Max.Oliver`). Supported models: `Mini`, `Max`.
          # - **xAI:** Use `xAI.<VoiceId>` (e.g., `xAI.eve`). Available voices: `eve`,
          #   `ara`, `rex`, `sal`, `leo`.
          voice: nil,
          # The settings associated with the voice selected
          voice_settings: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              call_control_id: String,
              assistant:
                Telnyx::Calls::ActionStartConversationRelayParams::Assistant,
              client_state: String,
              command_id: String,
              conversation_relay_dtmf_detection: T::Boolean,
              conversation_relay_settings:
                Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings,
              conversation_relay_url: String,
              custom_parameters: T::Hash[Symbol, T.anything],
              dtmf_detection: T::Boolean,
              greeting: String,
              interruptible:
                Telnyx::Calls::ActionStartConversationRelayParams::Interruptible::OrSymbol,
              interruptible_greeting:
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptibleGreeting::OrSymbol,
              interruption_settings:
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings,
              language: String,
              languages:
                T::Array[
                  Telnyx::Calls::ActionStartConversationRelayParams::Language
                ],
              provider: String,
              structured_provider: T::Hash[Symbol, T.anything],
              transcription: T::Hash[Symbol, T.anything],
              transcription_engine:
                Telnyx::Calls::ActionStartConversationRelayParams::TranscriptionEngine::OrSymbol,
              transcription_engine_config: T::Hash[Symbol, T.anything],
              tts_provider: String,
              url: String,
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
                  Telnyx::Calls::ActionStartConversationRelayParams::VoiceSettings::Inworld,
                  Telnyx::XaiVoiceSettings
                ),
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Assistant < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::ActionStartConversationRelayParams::Assistant,
                Telnyx::Internal::AnyHash
              )
            end

          # Custom key-value parameters forwarded to the Conversation Relay session.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :dynamic_variables

          sig { params(dynamic_variables: T::Hash[Symbol, String]).void }
          attr_writer :dynamic_variables

          # Custom parameters for the Conversation Relay session. Pass key-value data as
          # `assistant.dynamic_variables` to make it available to the relay session.
          sig do
            params(dynamic_variables: T::Hash[Symbol, String]).returns(
              T.attached_class
            )
          end
          def self.new(
            # Custom key-value parameters forwarded to the Conversation Relay session.
            dynamic_variables: nil
          )
          end

          sig do
            override.returns({ dynamic_variables: T::Hash[Symbol, String] })
          end
          def to_hash
          end
        end

        class ConversationRelaySettings < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings,
                Telnyx::Internal::AnyHash
              )
            end

          # WebSocket URL for your Conversation Relay server. Must start with `ws://` or
          # `wss://`.
          sig { returns(String) }
          attr_accessor :url

          # Whether to enable DTMF detection during the relay session.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :dtmf_detection

          sig { params(dtmf_detection: T::Boolean).void }
          attr_writer :dtmf_detection

          # Controls when caller input can interrupt assistant speech. `any` allows speech
          # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          # only; `dtmf` allows DTMF only.
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Interruptible::OrSymbol
              )
            )
          end
          attr_reader :interruptible

          sig do
            params(
              interruptible:
                Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Interruptible::OrSymbol
            ).void
          end
          attr_writer :interruptible

          # Controls when caller input can interrupt assistant speech. `any` allows speech
          # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          # only; `dtmf` allows DTMF only.
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::InterruptibleGreeting::OrSymbol
              )
            )
          end
          attr_reader :interruptible_greeting

          sig do
            params(
              interruptible_greeting:
                Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::InterruptibleGreeting::OrSymbol
            ).void
          end
          attr_writer :interruptible_greeting

          # Language-specific TTS and transcription settings.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language
                ]
              )
            )
          end
          attr_reader :languages

          sig do
            params(
              languages:
                T::Array[
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::OrHash
                ]
            ).void
          end
          attr_writer :languages

          # Conversation Relay connection settings. This object can provide `url`,
          # `dtmf_detection`, `interruptible`, `interruptible_greeting`, and `languages`.
          # Top-level aliases override nested values when both are present.
          sig do
            params(
              url: String,
              dtmf_detection: T::Boolean,
              interruptible:
                Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Interruptible::OrSymbol,
              interruptible_greeting:
                Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::InterruptibleGreeting::OrSymbol,
              languages:
                T::Array[
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # WebSocket URL for your Conversation Relay server. Must start with `ws://` or
            # `wss://`.
            url:,
            # Whether to enable DTMF detection during the relay session.
            dtmf_detection: nil,
            # Controls when caller input can interrupt assistant speech. `any` allows speech
            # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
            # only; `dtmf` allows DTMF only.
            interruptible: nil,
            # Controls when caller input can interrupt assistant speech. `any` allows speech
            # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
            # only; `dtmf` allows DTMF only.
            interruptible_greeting: nil,
            # Language-specific TTS and transcription settings.
            languages: nil
          )
          end

          sig do
            override.returns(
              {
                url: String,
                dtmf_detection: T::Boolean,
                interruptible:
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Interruptible::OrSymbol,
                interruptible_greeting:
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::InterruptibleGreeting::OrSymbol,
                languages:
                  T::Array[
                    Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language
                  ]
              }
            )
          end
          def to_hash
          end

          # Controls when caller input can interrupt assistant speech. `any` allows speech
          # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          # only; `dtmf` allows DTMF only.
          module Interruptible
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Interruptible
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :none,
                Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Interruptible::TaggedSymbol
              )
            ANY =
              T.let(
                :any,
                Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Interruptible::TaggedSymbol
              )
            SPEECH =
              T.let(
                :speech,
                Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Interruptible::TaggedSymbol
              )
            DTMF =
              T.let(
                :dtmf,
                Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Interruptible::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Interruptible::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Controls when caller input can interrupt assistant speech. `any` allows speech
          # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          # only; `dtmf` allows DTMF only.
          module InterruptibleGreeting
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::InterruptibleGreeting
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :none,
                Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::InterruptibleGreeting::TaggedSymbol
              )
            ANY =
              T.let(
                :any,
                Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::InterruptibleGreeting::TaggedSymbol
              )
            SPEECH =
              T.let(
                :speech,
                Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::InterruptibleGreeting::TaggedSymbol
              )
            DTMF =
              T.let(
                :dtmf,
                Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::InterruptibleGreeting::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::InterruptibleGreeting::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Language < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language,
                  Telnyx::Internal::AnyHash
                )
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
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine::OrSymbol
                )
              )
            end
            attr_reader :transcription_engine

            sig do
              params(
                transcription_engine:
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine::OrSymbol
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
              params(
                transcription_engine_config: T::Hash[Symbol, T.anything]
              ).void
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
                    Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::VoiceSettings::Inworld,
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
                    Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::VoiceSettings::Inworld::OrHash,
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
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine::OrSymbol,
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
                    Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::VoiceSettings::Inworld::OrHash,
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
                    Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine::OrSymbol,
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
                      Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::VoiceSettings::Inworld,
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
                    Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              GOOGLE =
                T.let(
                  :Google,
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine::TaggedSymbol
                )
              TELNYX =
                T.let(
                  :Telnyx,
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine::TaggedSymbol
                )
              DEEPGRAM =
                T.let(
                  :Deepgram,
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine::TaggedSymbol
                )
              AZURE =
                T.let(
                  :Azure,
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine::TaggedSymbol
                )
              X_AI =
                T.let(
                  :xAI,
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine::TaggedSymbol
                )
              ASSEMBLY_AI =
                T.let(
                  :AssemblyAI,
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine::TaggedSymbol
                )
              SPEECHMATICS =
                T.let(
                  :Speechmatics,
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine::TaggedSymbol
                )
              SONIOX =
                T.let(
                  :Soniox,
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine::TaggedSymbol
                )
              A =
                T.let(
                  :A,
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine::TaggedSymbol
                )
              B =
                T.let(
                  :B,
                  Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::TranscriptionEngine::TaggedSymbol
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
                    Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::VoiceSettings::Inworld,
                    Telnyx::XaiVoiceSettings
                  )
                end

              class Inworld < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::VoiceSettings::Inworld,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Voice settings provider type
                sig { returns(Symbol) }
                attr_accessor :type

                sig { params(type: Symbol).returns(T.attached_class) }
                def self.new(
                  # Voice settings provider type
                  type: :inworld
                )
                end

                sig { override.returns({ type: Symbol }) }
                def to_hash
                end
              end

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::ActionStartConversationRelayParams::ConversationRelaySettings::Language::VoiceSettings::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end
        end

        # Controls when caller input can interrupt assistant speech. `any` allows speech
        # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
        # only; `dtmf` allows DTMF only.
        module Interruptible
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::ActionStartConversationRelayParams::Interruptible
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :none,
              Telnyx::Calls::ActionStartConversationRelayParams::Interruptible::TaggedSymbol
            )
          ANY =
            T.let(
              :any,
              Telnyx::Calls::ActionStartConversationRelayParams::Interruptible::TaggedSymbol
            )
          SPEECH =
            T.let(
              :speech,
              Telnyx::Calls::ActionStartConversationRelayParams::Interruptible::TaggedSymbol
            )
          DTMF =
            T.let(
              :dtmf,
              Telnyx::Calls::ActionStartConversationRelayParams::Interruptible::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartConversationRelayParams::Interruptible::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Controls when caller input can interrupt assistant speech. `any` allows speech
        # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
        # only; `dtmf` allows DTMF only.
        module InterruptibleGreeting
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptibleGreeting
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :none,
              Telnyx::Calls::ActionStartConversationRelayParams::InterruptibleGreeting::TaggedSymbol
            )
          ANY =
            T.let(
              :any,
              Telnyx::Calls::ActionStartConversationRelayParams::InterruptibleGreeting::TaggedSymbol
            )
          SPEECH =
            T.let(
              :speech,
              Telnyx::Calls::ActionStartConversationRelayParams::InterruptibleGreeting::TaggedSymbol
            )
          DTMF =
            T.let(
              :dtmf,
              Telnyx::Calls::ActionStartConversationRelayParams::InterruptibleGreeting::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptibleGreeting::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class InterruptionSettings < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings,
                Telnyx::Internal::AnyHash
              )
            end

          # Legacy boolean form. `true` is equivalent to `interruptible=any`; `false` is
          # equivalent to `interruptible=none`.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :enable

          sig { params(enable: T::Boolean).void }
          attr_writer :enable

          # Controls when caller input can interrupt assistant speech. `any` allows speech
          # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          # only; `dtmf` allows DTMF only.
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::Interruptible::OrSymbol
              )
            )
          end
          attr_reader :interruptible

          sig do
            params(
              interruptible:
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::Interruptible::OrSymbol
            ).void
          end
          attr_writer :interruptible

          # Controls when caller input can interrupt assistant speech. `any` allows speech
          # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          # only; `dtmf` allows DTMF only.
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::InterruptibleGreeting::OrSymbol
              )
            )
          end
          attr_reader :interruptible_greeting

          sig do
            params(
              interruptible_greeting:
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::InterruptibleGreeting::OrSymbol
            ).void
          end
          attr_writer :interruptible_greeting

          # Controls when caller input can interrupt assistant speech. `any` allows speech
          # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          # only; `dtmf` allows DTMF only.
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::WelcomeGreetingInterruptible::OrSymbol
              )
            )
          end
          attr_reader :welcome_greeting_interruptible

          sig do
            params(
              welcome_greeting_interruptible:
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::WelcomeGreetingInterruptible::OrSymbol
            ).void
          end
          attr_writer :welcome_greeting_interruptible

          # Settings for handling caller interruptions during Conversation Relay speech.
          sig do
            params(
              enable: T::Boolean,
              interruptible:
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::Interruptible::OrSymbol,
              interruptible_greeting:
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::InterruptibleGreeting::OrSymbol,
              welcome_greeting_interruptible:
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::WelcomeGreetingInterruptible::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Legacy boolean form. `true` is equivalent to `interruptible=any`; `false` is
            # equivalent to `interruptible=none`.
            enable: nil,
            # Controls when caller input can interrupt assistant speech. `any` allows speech
            # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
            # only; `dtmf` allows DTMF only.
            interruptible: nil,
            # Controls when caller input can interrupt assistant speech. `any` allows speech
            # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
            # only; `dtmf` allows DTMF only.
            interruptible_greeting: nil,
            # Controls when caller input can interrupt assistant speech. `any` allows speech
            # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
            # only; `dtmf` allows DTMF only.
            welcome_greeting_interruptible: nil
          )
          end

          sig do
            override.returns(
              {
                enable: T::Boolean,
                interruptible:
                  Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::Interruptible::OrSymbol,
                interruptible_greeting:
                  Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::InterruptibleGreeting::OrSymbol,
                welcome_greeting_interruptible:
                  Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::WelcomeGreetingInterruptible::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Controls when caller input can interrupt assistant speech. `any` allows speech
          # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          # only; `dtmf` allows DTMF only.
          module Interruptible
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::Interruptible
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :none,
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::Interruptible::TaggedSymbol
              )
            ANY =
              T.let(
                :any,
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::Interruptible::TaggedSymbol
              )
            SPEECH =
              T.let(
                :speech,
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::Interruptible::TaggedSymbol
              )
            DTMF =
              T.let(
                :dtmf,
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::Interruptible::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::Interruptible::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Controls when caller input can interrupt assistant speech. `any` allows speech
          # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          # only; `dtmf` allows DTMF only.
          module InterruptibleGreeting
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::InterruptibleGreeting
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :none,
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::InterruptibleGreeting::TaggedSymbol
              )
            ANY =
              T.let(
                :any,
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::InterruptibleGreeting::TaggedSymbol
              )
            SPEECH =
              T.let(
                :speech,
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::InterruptibleGreeting::TaggedSymbol
              )
            DTMF =
              T.let(
                :dtmf,
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::InterruptibleGreeting::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::InterruptibleGreeting::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Controls when caller input can interrupt assistant speech. `any` allows speech
          # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
          # only; `dtmf` allows DTMF only.
          module WelcomeGreetingInterruptible
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::WelcomeGreetingInterruptible
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :none,
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::WelcomeGreetingInterruptible::TaggedSymbol
              )
            ANY =
              T.let(
                :any,
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::WelcomeGreetingInterruptible::TaggedSymbol
              )
            SPEECH =
              T.let(
                :speech,
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::WelcomeGreetingInterruptible::TaggedSymbol
              )
            DTMF =
              T.let(
                :dtmf,
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::WelcomeGreetingInterruptible::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::WelcomeGreetingInterruptible::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Language < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::ActionStartConversationRelayParams::Language,
                Telnyx::Internal::AnyHash
              )
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
                Telnyx::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine::OrSymbol
              )
            )
          end
          attr_reader :transcription_engine

          sig do
            params(
              transcription_engine:
                Telnyx::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine::OrSymbol
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
            params(
              transcription_engine_config: T::Hash[Symbol, T.anything]
            ).void
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
                  Telnyx::Calls::ActionStartConversationRelayParams::Language::VoiceSettings::Inworld,
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
                  Telnyx::Calls::ActionStartConversationRelayParams::Language::VoiceSettings::Inworld::OrHash,
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
                Telnyx::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine::OrSymbol,
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
                  Telnyx::Calls::ActionStartConversationRelayParams::Language::VoiceSettings::Inworld::OrHash,
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
                  Telnyx::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine::OrSymbol,
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
                    Telnyx::Calls::ActionStartConversationRelayParams::Language::VoiceSettings::Inworld,
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
                  Telnyx::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            GOOGLE =
              T.let(
                :Google,
                Telnyx::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine::TaggedSymbol
              )
            TELNYX =
              T.let(
                :Telnyx,
                Telnyx::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine::TaggedSymbol
              )
            DEEPGRAM =
              T.let(
                :Deepgram,
                Telnyx::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine::TaggedSymbol
              )
            AZURE =
              T.let(
                :Azure,
                Telnyx::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine::TaggedSymbol
              )
            X_AI =
              T.let(
                :xAI,
                Telnyx::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine::TaggedSymbol
              )
            ASSEMBLY_AI =
              T.let(
                :AssemblyAI,
                Telnyx::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine::TaggedSymbol
              )
            SPEECHMATICS =
              T.let(
                :Speechmatics,
                Telnyx::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine::TaggedSymbol
              )
            SONIOX =
              T.let(
                :Soniox,
                Telnyx::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine::TaggedSymbol
              )
            A =
              T.let(
                :A,
                Telnyx::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine::TaggedSymbol
              )
            B =
              T.let(
                :B,
                Telnyx::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionStartConversationRelayParams::Language::TranscriptionEngine::TaggedSymbol
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
                  Telnyx::Calls::ActionStartConversationRelayParams::Language::VoiceSettings::Inworld,
                  Telnyx::XaiVoiceSettings
                )
              end

            class Inworld < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Calls::ActionStartConversationRelayParams::Language::VoiceSettings::Inworld,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Voice settings provider type
              sig { returns(Symbol) }
              attr_accessor :type

              sig { params(type: Symbol).returns(T.attached_class) }
              def self.new(
                # Voice settings provider type
                type: :inworld
              )
              end

              sig { override.returns({ type: Symbol }) }
              def to_hash
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionStartConversationRelayParams::Language::VoiceSettings::Variants
                ]
              )
            end
            def self.variants
            end
          end
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
                Telnyx::Calls::ActionStartConversationRelayParams::TranscriptionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GOOGLE =
            T.let(
              :Google,
              Telnyx::Calls::ActionStartConversationRelayParams::TranscriptionEngine::TaggedSymbol
            )
          TELNYX =
            T.let(
              :Telnyx,
              Telnyx::Calls::ActionStartConversationRelayParams::TranscriptionEngine::TaggedSymbol
            )
          DEEPGRAM =
            T.let(
              :Deepgram,
              Telnyx::Calls::ActionStartConversationRelayParams::TranscriptionEngine::TaggedSymbol
            )
          AZURE =
            T.let(
              :Azure,
              Telnyx::Calls::ActionStartConversationRelayParams::TranscriptionEngine::TaggedSymbol
            )
          X_AI =
            T.let(
              :xAI,
              Telnyx::Calls::ActionStartConversationRelayParams::TranscriptionEngine::TaggedSymbol
            )
          ASSEMBLY_AI =
            T.let(
              :AssemblyAI,
              Telnyx::Calls::ActionStartConversationRelayParams::TranscriptionEngine::TaggedSymbol
            )
          SPEECHMATICS =
            T.let(
              :Speechmatics,
              Telnyx::Calls::ActionStartConversationRelayParams::TranscriptionEngine::TaggedSymbol
            )
          SONIOX =
            T.let(
              :Soniox,
              Telnyx::Calls::ActionStartConversationRelayParams::TranscriptionEngine::TaggedSymbol
            )
          A =
            T.let(
              :A,
              Telnyx::Calls::ActionStartConversationRelayParams::TranscriptionEngine::TaggedSymbol
            )
          B =
            T.let(
              :B,
              Telnyx::Calls::ActionStartConversationRelayParams::TranscriptionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartConversationRelayParams::TranscriptionEngine::TaggedSymbol
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
                Telnyx::Calls::ActionStartConversationRelayParams::VoiceSettings::Inworld,
                Telnyx::XaiVoiceSettings
              )
            end

          class Inworld < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::ActionStartConversationRelayParams::VoiceSettings::Inworld,
                  Telnyx::Internal::AnyHash
                )
              end

            # Voice settings provider type
            sig { returns(Symbol) }
            attr_accessor :type

            sig { params(type: Symbol).returns(T.attached_class) }
            def self.new(
              # Voice settings provider type
              type: :inworld
            )
            end

            sig { override.returns({ type: Symbol }) }
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartConversationRelayParams::VoiceSettings::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
