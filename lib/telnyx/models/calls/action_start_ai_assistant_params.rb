# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#start_ai_assistant
      class ActionStartAIAssistantParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute call_control_id
        #
        #   @return [String]
        required :call_control_id, String

        # @!attribute assistant
        #   AI Assistant configuration. All fields except `id` are optional — the
        #   assistant's stored configuration will be used as fallback for any omitted
        #   fields.
        #
        #   @return [Telnyx::Models::CallAssistantRequest, nil]
        optional :assistant, -> { Telnyx::CallAssistantRequest }

        # @!attribute client_state
        #   Use this field to add state to every subsequent webhook. It must be a valid
        #   Base-64 encoded string.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute command_id
        #   Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #   the same `command_id` for the same `call_control_id`.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!attribute greeting
        #   Text that will be played when the assistant starts, if none then nothing will be
        #   played when the assistant starts. The greeting can be text for any voice or SSML
        #   for `AWS.Polly.<voice_id>` voices. There is a 3,000 character limit.
        #
        #   @return [String, nil]
        optional :greeting, String

        # @!attribute interruption_settings
        #   Settings for handling user interruptions during assistant speech
        #
        #   @return [Telnyx::Models::Calls::InterruptionSettings, nil]
        optional :interruption_settings, -> { Telnyx::Calls::InterruptionSettings }

        # @!attribute message_history
        #   A list of messages to seed the conversation history before the assistant starts.
        #   Follows the same message format as the `ai_assistant_add_messages` command.
        #
        #   @return [Array<Telnyx::Models::Calls::UserMessage, Telnyx::Models::Calls::AssistantMessage, Telnyx::Models::Calls::ToolMessage, Telnyx::Models::Calls::SystemMessage, Telnyx::Models::Calls::DeveloperMessage>, nil]
        optional :message_history,
                 -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory] }

        # @!attribute participants
        #   A list of participants to add to the conversation when it starts.
        #
        #   @return [Array<Telnyx::Models::Calls::AIAssistantJoinParticipant>, nil]
        optional :participants, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Calls::AIAssistantJoinParticipant] }

        # @!attribute send_message_history_updates
        #   When `true`, a webhook is sent each time the conversation message history is
        #   updated.
        #
        #   @return [Boolean, nil]
        optional :send_message_history_updates, Telnyx::Internal::Type::Boolean

        # @!attribute transcription
        #   The settings associated with speech to text for the voice assistant. This is
        #   only relevant if the assistant uses a text-to-text language model. Any assistant
        #   using a model with native audio support (e.g. `fixie-ai/ultravox-v0_4`) will
        #   ignore this field.
        #
        #   @return [Telnyx::Models::Calls::TranscriptionConfig, nil]
        optional :transcription, -> { Telnyx::Calls::TranscriptionConfig }

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
        #   @return [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::XaiVoiceSettings, nil]
        optional :voice_settings, union: -> { Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings }

        # @!method initialize(call_control_id:, assistant: nil, client_state: nil, command_id: nil, greeting: nil, interruption_settings: nil, message_history: nil, participants: nil, send_message_history_updates: nil, transcription: nil, voice: nil, voice_settings: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionStartAIAssistantParams} for more details.
        #
        #   @param call_control_id [String]
        #
        #   @param assistant [Telnyx::Models::CallAssistantRequest] AI Assistant configuration. All fields except `id` are optional — the assistant'
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param greeting [String] Text that will be played when the assistant starts, if none then nothing will be
        #
        #   @param interruption_settings [Telnyx::Models::Calls::InterruptionSettings] Settings for handling user interruptions during assistant speech
        #
        #   @param message_history [Array<Telnyx::Models::Calls::UserMessage, Telnyx::Models::Calls::AssistantMessage, Telnyx::Models::Calls::ToolMessage, Telnyx::Models::Calls::SystemMessage, Telnyx::Models::Calls::DeveloperMessage>] A list of messages to seed the conversation history before the assistant starts.
        #
        #   @param participants [Array<Telnyx::Models::Calls::AIAssistantJoinParticipant>] A list of participants to add to the conversation when it starts.
        #
        #   @param send_message_history_updates [Boolean] When `true`, a webhook is sent each time the conversation message history is upd
        #
        #   @param transcription [Telnyx::Models::Calls::TranscriptionConfig] The settings associated with speech to text for the voice assistant. This is onl
        #
        #   @param voice [String] The voice to be used by the voice assistant. Currently we support ElevenLabs, Te
        #
        #   @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::XaiVoiceSettings] The settings associated with the voice selected
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Messages sent by an end user
        module MessageHistory
          extend Telnyx::Internal::Type::Union

          discriminator :role

          # Messages sent by an end user
          variant :user, -> { Telnyx::Calls::UserMessage }

          # Messages sent by the model in response to user messages.
          variant :assistant, -> { Telnyx::Calls::AssistantMessage }

          variant :tool, -> { Telnyx::Calls::ToolMessage }

          # Developer-provided instructions that the model should follow, regardless of messages sent by the user.
          variant :system, -> { Telnyx::Calls::SystemMessage }

          # Developer-provided instructions that the model should follow, regardless of messages sent by the user.
          variant :developer, -> { Telnyx::Calls::DeveloperMessage }

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Calls::UserMessage, Telnyx::Models::Calls::AssistantMessage, Telnyx::Models::Calls::ToolMessage, Telnyx::Models::Calls::SystemMessage, Telnyx::Models::Calls::DeveloperMessage)]
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
