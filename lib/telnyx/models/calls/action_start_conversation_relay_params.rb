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

        # @!attribute conversation_relay_url
        #   WebSocket URL for your Conversation Relay server. Must start with `ws://` or
        #   `wss://`.
        #
        #   @return [String]
        required :conversation_relay_url, String

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

        # @!attribute greeting
        #   Text played when the relay session starts.
        #
        #   @return [String, nil]
        optional :greeting, String

        # @!attribute interruption_settings
        #   Settings for handling caller interruptions during Conversation Relay speech.
        #
        #   @return [Telnyx::Models::Calls::ActionStartConversationRelayParams::InterruptionSettings, nil]
        optional :interruption_settings,
                 -> { Telnyx::Calls::ActionStartConversationRelayParams::InterruptionSettings }

        # @!attribute language
        #   Default language for the relay session. This value is used for both
        #   text-to-speech and speech recognition unless `tts_language` or
        #   `transcription_language` are provided.
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute languages
        #   Language-specific TTS and transcription settings. Use this when the relay
        #   session needs per-language provider, voice, or speech model configuration.
        #
        #   @return [Array<Telnyx::Models::Calls::ActionStartConversationRelayParams::Language>, nil]
        optional :languages,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Calls::ActionStartConversationRelayParams::Language] }

        # @!attribute participants
        #   Participants to add to the conversation.
        #
        #   @return [Array<Telnyx::Models::Calls::ActionStartConversationRelayParams::Participant>, nil]
        optional :participants,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Calls::ActionStartConversationRelayParams::Participant] }

        # @!attribute send_message_history_updates
        #   When true, sends message history update webhooks.
        #
        #   @return [Boolean, nil]
        optional :send_message_history_updates, Telnyx::Internal::Type::Boolean

        # @!attribute transcription
        #   Speech-to-text settings for Conversation Relay.
        #
        #   @return [Telnyx::Models::Calls::ActionStartConversationRelayParams::Transcription, nil]
        optional :transcription, -> { Telnyx::Calls::ActionStartConversationRelayParams::Transcription }

        # @!attribute transcription_language
        #   Language to use for speech recognition. Overrides `language` for transcription
        #   when provided.
        #
        #   @return [String, nil]
        optional :transcription_language, String

        # @!attribute tts_language
        #   Language to use for text-to-speech. Overrides `language` for TTS when provided.
        #
        #   @return [String, nil]
        optional :tts_language, String

        # @!attribute user_response_timeout_ms
        #   Time in milliseconds to wait for caller input before timing out.
        #
        #   @return [Integer, nil]
        optional :user_response_timeout_ms, Integer

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
        #   @return [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::XaiVoiceSettings, nil]
        optional :voice_settings, union: -> { Telnyx::Calls::ActionStartConversationRelayParams::VoiceSettings }

        # @!method initialize(call_control_id:, conversation_relay_url:, assistant: nil, client_state: nil, command_id: nil, conversation_relay_dtmf_detection: nil, greeting: nil, interruption_settings: nil, language: nil, languages: nil, participants: nil, send_message_history_updates: nil, transcription: nil, transcription_language: nil, tts_language: nil, user_response_timeout_ms: nil, voice: nil, voice_settings: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionStartConversationRelayParams} for more details.
        #
        #   @param call_control_id [String]
        #
        #   @param conversation_relay_url [String] WebSocket URL for your Conversation Relay server. Must start with `ws://` or `ws
        #
        #   @param assistant [Telnyx::Models::Calls::ActionStartConversationRelayParams::Assistant] Custom parameters for the Conversation Relay session. Pass key-value data as `as
        #
        #   @param client_state [String] Use this field to add state to subsequent webhooks. It must be a valid Base-64 e
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param conversation_relay_dtmf_detection [Boolean] Enable DTMF detection for the relay session.
        #
        #   @param greeting [String] Text played when the relay session starts.
        #
        #   @param interruption_settings [Telnyx::Models::Calls::ActionStartConversationRelayParams::InterruptionSettings] Settings for handling caller interruptions during Conversation Relay speech.
        #
        #   @param language [String] Default language for the relay session. This value is used for both text-to-spee
        #
        #   @param languages [Array<Telnyx::Models::Calls::ActionStartConversationRelayParams::Language>] Language-specific TTS and transcription settings. Use this when the relay sessio
        #
        #   @param participants [Array<Telnyx::Models::Calls::ActionStartConversationRelayParams::Participant>] Participants to add to the conversation.
        #
        #   @param send_message_history_updates [Boolean] When true, sends message history update webhooks.
        #
        #   @param transcription [Telnyx::Models::Calls::ActionStartConversationRelayParams::Transcription] Speech-to-text settings for Conversation Relay.
        #
        #   @param transcription_language [String] Language to use for speech recognition. Overrides `language` for transcription w
        #
        #   @param tts_language [String] Language to use for text-to-speech. Overrides `language` for TTS when provided.
        #
        #   @param user_response_timeout_ms [Integer] Time in milliseconds to wait for caller input before timing out.
        #
        #   @param voice [String] The voice to be used by the voice assistant. Currently we support ElevenLabs, Te
        #
        #   @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::XaiVoiceSettings] The settings associated with the voice selected
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
          # @!attribute code
          #   BCP 47 language code.
          #
          #   @return [String, nil]
          optional :code, String

          # @!attribute speech_model
          #   Speech recognition model for this language.
          #
          #   @return [String, nil]
          optional :speech_model, String

          # @!attribute transcription_provider
          #   Speech-to-text provider for this language.
          #
          #   @return [String, nil]
          optional :transcription_provider, String

          # @!attribute tts_provider
          #   Text-to-speech provider for this language.
          #
          #   @return [String, nil]
          optional :tts_provider, String

          # @!attribute voice
          #   Voice identifier for this language.
          #
          #   @return [String, nil]
          optional :voice, String

          # @!method initialize(code: nil, speech_model: nil, transcription_provider: nil, tts_provider: nil, voice: nil)
          #   Language-specific speech and transcription settings for Conversation Relay.
          #
          #   @param code [String] BCP 47 language code.
          #
          #   @param speech_model [String] Speech recognition model for this language.
          #
          #   @param transcription_provider [String] Speech-to-text provider for this language.
          #
          #   @param tts_provider [String] Text-to-speech provider for this language.
          #
          #   @param voice [String] Voice identifier for this language.
        end

        class Participant < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   The call_control_id of the participant to add to the conversation.
          #
          #   @return [String]
          required :id, String

          # @!attribute role
          #   The role of the participant in the conversation.
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::Participant::Role]
          required :role, enum: -> { Telnyx::Calls::ActionStartConversationRelayParams::Participant::Role }

          # @!attribute name
          #   Display name for the participant.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute on_hangup
          #   Determines what happens to the conversation when this participant hangs up.
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::Participant::OnHangup, nil]
          optional :on_hangup, enum: -> { Telnyx::Calls::ActionStartConversationRelayParams::Participant::OnHangup }

          # @!method initialize(id:, role:, name: nil, on_hangup: nil)
          #   @param id [String] The call_control_id of the participant to add to the conversation.
          #
          #   @param role [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::Participant::Role] The role of the participant in the conversation.
          #
          #   @param name [String] Display name for the participant.
          #
          #   @param on_hangup [Symbol, Telnyx::Models::Calls::ActionStartConversationRelayParams::Participant::OnHangup] Determines what happens to the conversation when this participant hangs up.

          # The role of the participant in the conversation.
          #
          # @see Telnyx::Models::Calls::ActionStartConversationRelayParams::Participant#role
          module Role
            extend Telnyx::Internal::Type::Enum

            USER = :user

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Determines what happens to the conversation when this participant hangs up.
          #
          # @see Telnyx::Models::Calls::ActionStartConversationRelayParams::Participant#on_hangup
          module OnHangup
            extend Telnyx::Internal::Type::Enum

            CONTINUE_CONVERSATION = :continue_conversation
            END_CONVERSATION = :end_conversation

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Transcription < Telnyx::Internal::Type::BaseModel
          # @!attribute language
          #   Transcription language.
          #
          #   @return [String, nil]
          optional :language, String

          # @!attribute model
          #   Transcription model to use.
          #
          #   @return [String, nil]
          optional :model, String

          # @!attribute provider
          #   Transcription provider to use.
          #
          #   @return [String, nil]
          optional :provider, String

          # @!method initialize(language: nil, model: nil, provider: nil)
          #   Speech-to-text settings for Conversation Relay.
          #
          #   @param language [String] Transcription language.
          #
          #   @param model [String] Transcription model to use.
          #
          #   @param provider [String] Transcription provider to use.
        end

        # The settings associated with the voice selected
        module VoiceSettings
          extend Telnyx::Internal::Type::Union

          discriminator :type

          variant :elevenlabs, -> { Telnyx::Calls::ElevenLabsVoiceSettings }

          variant :telnyx, -> { Telnyx::Calls::TelnyxVoiceSettings }

          variant :aws, -> { Telnyx::Calls::AwsVoiceSettings }

          variant :azure, -> { Telnyx::AzureVoiceSettings }

          variant :rime, -> { Telnyx::RimeVoiceSettings }

          variant :resemble, -> { Telnyx::ResembleVoiceSettings }

          variant :xai, -> { Telnyx::XaiVoiceSettings }

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::XaiVoiceSettings)]
        end
      end
    end
  end
end
