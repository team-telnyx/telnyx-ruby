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

        # Conversation Relay connection settings. This object is used by TeXML Call
        # Scripting's `<ConversationRelay>` verb. The `interruptible` and
        # `interruptible_greeting` fields are shorthand for
        # `interruption_settings.interruptible` and
        # `interruption_settings.interruptible_greeting`; use top-level
        # `interruption_settings` for the full interruption settings shape.
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

        # Text played when the relay session starts.
        sig { returns(T.nilable(String)) }
        attr_reader :greeting

        sig { params(greeting: String).void }
        attr_writer :greeting

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
        # text-to-speech and speech recognition unless `tts_language` or
        # `transcription_language` are provided.
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        # Language-specific TTS and transcription settings. Use this when the relay
        # session needs per-language provider, voice, or speech model configuration.
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

        # Speech-to-text settings for Conversation Relay.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionStartConversationRelayParams::Transcription
            )
          )
        end
        attr_reader :transcription

        sig do
          params(
            transcription:
              Telnyx::Calls::ActionStartConversationRelayParams::Transcription::OrHash
          ).void
        end
        attr_writer :transcription

        # Language to use for speech recognition. Overrides `language` for transcription
        # when provided.
        sig { returns(T.nilable(String)) }
        attr_reader :transcription_language

        sig { params(transcription_language: String).void }
        attr_writer :transcription_language

        # Language to use for text-to-speech. Overrides `language` for TTS when provided.
        sig { returns(T.nilable(String)) }
        attr_reader :tts_language

        sig { params(tts_language: String).void }
        attr_writer :tts_language

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
                Telnyx::AzureVoiceSettings,
                Telnyx::RimeVoiceSettings,
                Telnyx::ResembleVoiceSettings,
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
                Telnyx::AzureVoiceSettings::OrHash,
                Telnyx::RimeVoiceSettings::OrHash,
                Telnyx::ResembleVoiceSettings::OrHash,
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
            greeting: String,
            interruption_settings:
              Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings::OrHash,
            language: String,
            languages:
              T::Array[
                Telnyx::Calls::ActionStartConversationRelayParams::Language::OrHash
              ],
            transcription:
              Telnyx::Calls::ActionStartConversationRelayParams::Transcription::OrHash,
            transcription_language: String,
            tts_language: String,
            voice: String,
            voice_settings:
              T.any(
                Telnyx::Calls::ElevenLabsVoiceSettings::OrHash,
                Telnyx::Calls::TelnyxVoiceSettings::OrHash,
                Telnyx::Calls::AwsVoiceSettings::OrHash,
                Telnyx::AzureVoiceSettings::OrHash,
                Telnyx::RimeVoiceSettings::OrHash,
                Telnyx::ResembleVoiceSettings::OrHash,
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
          # Conversation Relay connection settings. This object is used by TeXML Call
          # Scripting's `<ConversationRelay>` verb. The `interruptible` and
          # `interruptible_greeting` fields are shorthand for
          # `interruption_settings.interruptible` and
          # `interruption_settings.interruptible_greeting`; use top-level
          # `interruption_settings` for the full interruption settings shape.
          conversation_relay_settings: nil,
          # WebSocket URL for your Conversation Relay server. Must start with `ws://` or
          # `wss://`.
          conversation_relay_url: nil,
          # Text played when the relay session starts.
          greeting: nil,
          # Settings for handling caller interruptions during Conversation Relay speech.
          interruption_settings: nil,
          # Default language for the relay session. This value is used for both
          # text-to-speech and speech recognition unless `tts_language` or
          # `transcription_language` are provided.
          language: nil,
          # Language-specific TTS and transcription settings. Use this when the relay
          # session needs per-language provider, voice, or speech model configuration.
          languages: nil,
          # Speech-to-text settings for Conversation Relay.
          transcription: nil,
          # Language to use for speech recognition. Overrides `language` for transcription
          # when provided.
          transcription_language: nil,
          # Language to use for text-to-speech. Overrides `language` for TTS when provided.
          tts_language: nil,
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
              greeting: String,
              interruption_settings:
                Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings,
              language: String,
              languages:
                T::Array[
                  Telnyx::Calls::ActionStartConversationRelayParams::Language
                ],
              transcription:
                Telnyx::Calls::ActionStartConversationRelayParams::Transcription,
              transcription_language: String,
              tts_language: String,
              voice: String,
              voice_settings:
                T.any(
                  Telnyx::Calls::ElevenLabsVoiceSettings,
                  Telnyx::Calls::TelnyxVoiceSettings,
                  Telnyx::Calls::AwsVoiceSettings,
                  Telnyx::AzureVoiceSettings,
                  Telnyx::RimeVoiceSettings,
                  Telnyx::ResembleVoiceSettings,
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

          # Conversation Relay connection settings. This object is used by TeXML Call
          # Scripting's `<ConversationRelay>` verb. The `interruptible` and
          # `interruptible_greeting` fields are shorthand for
          # `interruption_settings.interruptible` and
          # `interruption_settings.interruptible_greeting`; use top-level
          # `interruption_settings` for the full interruption settings shape.
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

            # BCP 47 language code.
            sig { returns(T.nilable(String)) }
            attr_reader :code

            sig { params(code: String).void }
            attr_writer :code

            # Speech recognition model for this language.
            sig { returns(T.nilable(String)) }
            attr_reader :speech_model

            sig { params(speech_model: String).void }
            attr_writer :speech_model

            # Speech-to-text provider for this language.
            sig { returns(T.nilable(String)) }
            attr_reader :transcription_provider

            sig { params(transcription_provider: String).void }
            attr_writer :transcription_provider

            # Text-to-speech provider for this language.
            sig { returns(T.nilable(String)) }
            attr_reader :tts_provider

            sig { params(tts_provider: String).void }
            attr_writer :tts_provider

            # Voice identifier for this language.
            sig { returns(T.nilable(String)) }
            attr_reader :voice

            sig { params(voice: String).void }
            attr_writer :voice

            # Language-specific speech and transcription settings for Conversation Relay.
            sig do
              params(
                code: String,
                speech_model: String,
                transcription_provider: String,
                tts_provider: String,
                voice: String
              ).returns(T.attached_class)
            end
            def self.new(
              # BCP 47 language code.
              code: nil,
              # Speech recognition model for this language.
              speech_model: nil,
              # Speech-to-text provider for this language.
              transcription_provider: nil,
              # Text-to-speech provider for this language.
              tts_provider: nil,
              # Voice identifier for this language.
              voice: nil
            )
            end

            sig do
              override.returns(
                {
                  code: String,
                  speech_model: String,
                  transcription_provider: String,
                  tts_provider: String,
                  voice: String
                }
              )
            end
            def to_hash
            end
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

          # BCP 47 language code.
          sig { returns(T.nilable(String)) }
          attr_reader :code

          sig { params(code: String).void }
          attr_writer :code

          # Speech recognition model for this language.
          sig { returns(T.nilable(String)) }
          attr_reader :speech_model

          sig { params(speech_model: String).void }
          attr_writer :speech_model

          # Speech-to-text provider for this language.
          sig { returns(T.nilable(String)) }
          attr_reader :transcription_provider

          sig { params(transcription_provider: String).void }
          attr_writer :transcription_provider

          # Text-to-speech provider for this language.
          sig { returns(T.nilable(String)) }
          attr_reader :tts_provider

          sig { params(tts_provider: String).void }
          attr_writer :tts_provider

          # Voice identifier for this language.
          sig { returns(T.nilable(String)) }
          attr_reader :voice

          sig { params(voice: String).void }
          attr_writer :voice

          # Language-specific speech and transcription settings for Conversation Relay.
          sig do
            params(
              code: String,
              speech_model: String,
              transcription_provider: String,
              tts_provider: String,
              voice: String
            ).returns(T.attached_class)
          end
          def self.new(
            # BCP 47 language code.
            code: nil,
            # Speech recognition model for this language.
            speech_model: nil,
            # Speech-to-text provider for this language.
            transcription_provider: nil,
            # Text-to-speech provider for this language.
            tts_provider: nil,
            # Voice identifier for this language.
            voice: nil
          )
          end

          sig do
            override.returns(
              {
                code: String,
                speech_model: String,
                transcription_provider: String,
                tts_provider: String,
                voice: String
              }
            )
          end
          def to_hash
          end
        end

        class Transcription < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::ActionStartConversationRelayParams::Transcription,
                Telnyx::Internal::AnyHash
              )
            end

          # Transcription language.
          sig { returns(T.nilable(String)) }
          attr_reader :language

          sig { params(language: String).void }
          attr_writer :language

          # Transcription model to use.
          sig { returns(T.nilable(String)) }
          attr_reader :model

          sig { params(model: String).void }
          attr_writer :model

          # Transcription provider to use.
          sig { returns(T.nilable(String)) }
          attr_reader :provider

          sig { params(provider: String).void }
          attr_writer :provider

          # Speech-to-text settings for Conversation Relay.
          sig do
            params(language: String, model: String, provider: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Transcription language.
            language: nil,
            # Transcription model to use.
            model: nil,
            # Transcription provider to use.
            provider: nil
          )
          end

          sig do
            override.returns(
              { language: String, model: String, provider: String }
            )
          end
          def to_hash
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
                Telnyx::AzureVoiceSettings,
                Telnyx::RimeVoiceSettings,
                Telnyx::ResembleVoiceSettings,
                Telnyx::XaiVoiceSettings
              )
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
