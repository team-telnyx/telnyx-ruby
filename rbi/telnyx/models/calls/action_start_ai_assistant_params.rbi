# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionStartAIAssistantParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionStartAIAssistantParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :call_control_id

        # AI Assistant configuration. All fields except `id` are optional — the
        # assistant's stored configuration will be used as fallback for any omitted
        # fields.
        sig { returns(T.nilable(Telnyx::CallAssistantRequest)) }
        attr_reader :assistant

        sig { params(assistant: Telnyx::CallAssistantRequest::OrHash).void }
        attr_writer :assistant

        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string.
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

        # Text that will be played when the assistant starts, if none then nothing will be
        # played when the assistant starts. The greeting can be text for any voice or SSML
        # for `AWS.Polly.<voice_id>` voices. There is a 3,000 character limit.
        sig { returns(T.nilable(String)) }
        attr_reader :greeting

        sig { params(greeting: String).void }
        attr_writer :greeting

        # Settings for handling user interruptions during assistant speech
        sig { returns(T.nilable(Telnyx::Calls::InterruptionSettings)) }
        attr_reader :interruption_settings

        sig do
          params(
            interruption_settings: Telnyx::Calls::InterruptionSettings::OrHash
          ).void
        end
        attr_writer :interruption_settings

        # A list of messages to seed the conversation history before the assistant starts.
        # Follows the same message format as the `ai_assistant_add_messages` command.
        sig do
          returns(
            T.nilable(
              T::Array[
                T.any(
                  Telnyx::Calls::UserMessage,
                  Telnyx::Calls::AssistantMessage,
                  Telnyx::Calls::ToolMessage,
                  Telnyx::Calls::SystemMessage,
                  Telnyx::Calls::DeveloperMessage
                )
              ]
            )
          )
        end
        attr_reader :message_history

        sig do
          params(
            message_history:
              T::Array[
                T.any(
                  Telnyx::Calls::UserMessage::OrHash,
                  Telnyx::Calls::AssistantMessage::OrHash,
                  Telnyx::Calls::ToolMessage::OrHash,
                  Telnyx::Calls::SystemMessage::OrHash,
                  Telnyx::Calls::DeveloperMessage::OrHash
                )
              ]
          ).void
        end
        attr_writer :message_history

        # A list of participants to add to the conversation when it starts.
        sig do
          returns(
            T.nilable(T::Array[Telnyx::Calls::AIAssistantJoinParticipant])
          )
        end
        attr_reader :participants

        sig do
          params(
            participants:
              T::Array[Telnyx::Calls::AIAssistantJoinParticipant::OrHash]
          ).void
        end
        attr_writer :participants

        # When `true`, a webhook is sent each time the conversation message history is
        # updated.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :send_message_history_updates

        sig { params(send_message_history_updates: T::Boolean).void }
        attr_writer :send_message_history_updates

        # The settings associated with speech to text for the voice assistant. This is
        # only relevant if the assistant uses a text-to-text language model. Any assistant
        # using a model with native audio support (e.g. `fixie-ai/ultravox-v0_4`) will
        # ignore this field.
        sig { returns(T.nilable(Telnyx::Calls::TranscriptionConfig)) }
        attr_reader :transcription

        sig do
          params(transcription: Telnyx::Calls::TranscriptionConfig::OrHash).void
        end
        attr_writer :transcription

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
            assistant: Telnyx::CallAssistantRequest::OrHash,
            client_state: String,
            command_id: String,
            greeting: String,
            interruption_settings: Telnyx::Calls::InterruptionSettings::OrHash,
            message_history:
              T::Array[
                T.any(
                  Telnyx::Calls::UserMessage::OrHash,
                  Telnyx::Calls::AssistantMessage::OrHash,
                  Telnyx::Calls::ToolMessage::OrHash,
                  Telnyx::Calls::SystemMessage::OrHash,
                  Telnyx::Calls::DeveloperMessage::OrHash
                )
              ],
            participants:
              T::Array[Telnyx::Calls::AIAssistantJoinParticipant::OrHash],
            send_message_history_updates: T::Boolean,
            transcription: Telnyx::Calls::TranscriptionConfig::OrHash,
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
          # AI Assistant configuration. All fields except `id` are optional — the
          # assistant's stored configuration will be used as fallback for any omitted
          # fields.
          assistant: nil,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Text that will be played when the assistant starts, if none then nothing will be
          # played when the assistant starts. The greeting can be text for any voice or SSML
          # for `AWS.Polly.<voice_id>` voices. There is a 3,000 character limit.
          greeting: nil,
          # Settings for handling user interruptions during assistant speech
          interruption_settings: nil,
          # A list of messages to seed the conversation history before the assistant starts.
          # Follows the same message format as the `ai_assistant_add_messages` command.
          message_history: nil,
          # A list of participants to add to the conversation when it starts.
          participants: nil,
          # When `true`, a webhook is sent each time the conversation message history is
          # updated.
          send_message_history_updates: nil,
          # The settings associated with speech to text for the voice assistant. This is
          # only relevant if the assistant uses a text-to-text language model. Any assistant
          # using a model with native audio support (e.g. `fixie-ai/ultravox-v0_4`) will
          # ignore this field.
          transcription: nil,
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
          voice_settings: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              call_control_id: String,
              assistant: Telnyx::CallAssistantRequest,
              client_state: String,
              command_id: String,
              greeting: String,
              interruption_settings: Telnyx::Calls::InterruptionSettings,
              message_history:
                T::Array[
                  T.any(
                    Telnyx::Calls::UserMessage,
                    Telnyx::Calls::AssistantMessage,
                    Telnyx::Calls::ToolMessage,
                    Telnyx::Calls::SystemMessage,
                    Telnyx::Calls::DeveloperMessage
                  )
                ],
              participants: T::Array[Telnyx::Calls::AIAssistantJoinParticipant],
              send_message_history_updates: T::Boolean,
              transcription: Telnyx::Calls::TranscriptionConfig,
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

        # Messages sent by an end user
        module MessageHistory
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::Calls::UserMessage,
                Telnyx::Calls::AssistantMessage,
                Telnyx::Calls::ToolMessage,
                Telnyx::Calls::SystemMessage,
                Telnyx::Calls::DeveloperMessage
              )
            end

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Variants
              ]
            )
          end
          def self.variants
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
                Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Variants
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
