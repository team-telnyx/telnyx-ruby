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
        #   @return [Array<Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::User, Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant, Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::Tool, Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::System, Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::Developer>, nil]
        optional :message_history,
                 -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory] }

        # @!attribute participants
        #   A list of participants to add to the conversation when it starts.
        #
        #   @return [Array<Telnyx::Models::Calls::ActionStartAIAssistantParams::Participant>, nil]
        optional :participants,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Calls::ActionStartAIAssistantParams::Participant] }

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
        #     `Inworld.Max.Oliver`). Supported models: `Mini`, `Max`.
        #
        #   @return [String, nil]
        optional :voice, String

        # @!attribute voice_settings
        #   The settings associated with the voice selected
        #
        #   @return [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, nil]
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
        #   @param message_history [Array<Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::User, Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant, Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::Tool, Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::System, Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::Developer>] A list of messages to seed the conversation history before the assistant starts.
        #
        #   @param participants [Array<Telnyx::Models::Calls::ActionStartAIAssistantParams::Participant>] A list of participants to add to the conversation when it starts.
        #
        #   @param send_message_history_updates [Boolean] When `true`, a webhook is sent each time the conversation message history is upd
        #
        #   @param transcription [Telnyx::Models::Calls::TranscriptionConfig] The settings associated with speech to text for the voice assistant. This is onl
        #
        #   @param voice [String] The voice to be used by the voice assistant. Currently we support ElevenLabs, Te
        #
        #   @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings] The settings associated with the voice selected
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Messages sent by an end user
        module MessageHistory
          extend Telnyx::Internal::Type::Union

          discriminator :role

          # Messages sent by an end user
          variant :user, -> { Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::User }

          # Messages sent by the model in response to user messages.
          variant :assistant, -> { Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant }

          variant :tool, -> { Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Tool }

          # Developer-provided instructions that the model should follow, regardless of messages sent by the user.
          variant :system, -> { Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::System }

          # Developer-provided instructions that the model should follow, regardless of messages sent by the user.
          variant :developer, -> { Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Developer }

          class User < Telnyx::Internal::Type::BaseModel
            # @!attribute content
            #   The contents of the user message.
            #
            #   @return [String]
            required :content, String

            # @!attribute role
            #   The role of the messages author, in this case `user`.
            #
            #   @return [Symbol, :user]
            required :role, const: :user

            # @!attribute metadata
            #   Metadata to add to the message
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!method initialize(content:, metadata: nil, role: :user)
            #   Messages sent by an end user
            #
            #   @param content [String] The contents of the user message.
            #
            #   @param metadata [Hash{Symbol=>Object}] Metadata to add to the message
            #
            #   @param role [Symbol, :user] The role of the messages author, in this case `user`.
          end

          class Assistant < Telnyx::Internal::Type::BaseModel
            # @!attribute role
            #   The role of the messages author, in this case `assistant`.
            #
            #   @return [Symbol, :assistant]
            required :role, const: :assistant

            # @!attribute content
            #   The contents of the assistant message. Required unless `tool_calls`
            #
            #   @return [String, nil]
            optional :content, String

            # @!attribute metadata
            #   Metadata to add to the message
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!attribute tool_calls
            #   The tool calls generated by the model, such as function calls.
            #
            #   @return [Array<Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall>, nil]
            optional :tool_calls,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall] }

            # @!method initialize(content: nil, metadata: nil, tool_calls: nil, role: :assistant)
            #   Messages sent by the model in response to user messages.
            #
            #   @param content [String] The contents of the assistant message. Required unless `tool_calls`
            #
            #   @param metadata [Hash{Symbol=>Object}] Metadata to add to the message
            #
            #   @param tool_calls [Array<Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall>] The tool calls generated by the model, such as function calls.
            #
            #   @param role [Symbol, :assistant] The role of the messages author, in this case `assistant`.

            class ToolCall < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #   The ID of the tool call.
              #
              #   @return [String]
              required :id, String

              # @!attribute function
              #   The function that the model called.
              #
              #   @return [Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::Function]
              required :function,
                       -> { Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::Function }

              # @!attribute type
              #   The type of the tool. Currently, only `function` is supported.
              #
              #   @return [Symbol, Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::Type]
              required :type,
                       enum: -> { Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::Type }

              # @!method initialize(id:, function:, type:)
              #   A call to a function tool created by the model.
              #
              #   @param id [String] The ID of the tool call.
              #
              #   @param function [Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::Function] The function that the model called.
              #
              #   @param type [Symbol, Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::Type] The type of the tool. Currently, only `function` is supported.

              # @see Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall#function
              class Function < Telnyx::Internal::Type::BaseModel
                # @!attribute name
                #   The name of the function to call.
                #
                #   @return [String]
                required :name, String

                # @!method initialize(name:)
                #   The function that the model called.
                #
                #   @param name [String] The name of the function to call.
              end

              # The type of the tool. Currently, only `function` is supported.
              #
              # @see Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall#type
              module Type
                extend Telnyx::Internal::Type::Enum

                FUNCTION = :function

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Tool < Telnyx::Internal::Type::BaseModel
            # @!attribute content
            #   The contents of the tool message.
            #
            #   @return [String]
            required :content, String

            # @!attribute role
            #   The role of the messages author, in this case `tool`.
            #
            #   @return [Symbol, :tool]
            required :role, const: :tool

            # @!attribute tool_call_id
            #   Tool call that this message is responding to.
            #
            #   @return [String]
            required :tool_call_id, String

            # @!attribute metadata
            #   Metadata to add to the message
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!method initialize(content:, tool_call_id:, metadata: nil, role: :tool)
            #   @param content [String] The contents of the tool message.
            #
            #   @param tool_call_id [String] Tool call that this message is responding to.
            #
            #   @param metadata [Hash{Symbol=>Object}] Metadata to add to the message
            #
            #   @param role [Symbol, :tool] The role of the messages author, in this case `tool`.
          end

          class System < Telnyx::Internal::Type::BaseModel
            # @!attribute content
            #   The contents of the system message.
            #
            #   @return [String]
            required :content, String

            # @!attribute role
            #   The role of the messages author, in this case `system`.
            #
            #   @return [Symbol, :system]
            required :role, const: :system

            # @!attribute metadata
            #   Metadata to add to the message
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!method initialize(content:, metadata: nil, role: :system)
            #   Developer-provided instructions that the model should follow, regardless of
            #   messages sent by the user.
            #
            #   @param content [String] The contents of the system message.
            #
            #   @param metadata [Hash{Symbol=>Object}] Metadata to add to the message
            #
            #   @param role [Symbol, :system] The role of the messages author, in this case `system`.
          end

          class Developer < Telnyx::Internal::Type::BaseModel
            # @!attribute content
            #   The contents of the developer message.
            #
            #   @return [String]
            required :content, String

            # @!attribute role
            #   The role of the messages author, in this case developer.
            #
            #   @return [Symbol, :developer]
            required :role, const: :developer

            # @!attribute metadata
            #   Metadata to add to the message
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!method initialize(content:, metadata: nil, role: :developer)
            #   Developer-provided instructions that the model should follow, regardless of
            #   messages sent by the user.
            #
            #   @param content [String] The contents of the developer message.
            #
            #   @param metadata [Hash{Symbol=>Object}] Metadata to add to the message
            #
            #   @param role [Symbol, :developer] The role of the messages author, in this case developer.
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::User, Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant, Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::Tool, Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::System, Telnyx::Models::Calls::ActionStartAIAssistantParams::MessageHistory::Developer)]
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
          #   @return [Symbol, Telnyx::Models::Calls::ActionStartAIAssistantParams::Participant::Role]
          required :role, enum: -> { Telnyx::Calls::ActionStartAIAssistantParams::Participant::Role }

          # @!attribute name
          #   Display name for the participant.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute on_hangup
          #   Determines what happens to the conversation when this participant hangs up.
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionStartAIAssistantParams::Participant::OnHangup, nil]
          optional :on_hangup, enum: -> { Telnyx::Calls::ActionStartAIAssistantParams::Participant::OnHangup }

          # @!method initialize(id:, role:, name: nil, on_hangup: nil)
          #   @param id [String] The call_control_id of the participant to add to the conversation.
          #
          #   @param role [Symbol, Telnyx::Models::Calls::ActionStartAIAssistantParams::Participant::Role] The role of the participant in the conversation.
          #
          #   @param name [String] Display name for the participant.
          #
          #   @param on_hangup [Symbol, Telnyx::Models::Calls::ActionStartAIAssistantParams::Participant::OnHangup] Determines what happens to the conversation when this participant hangs up.

          # The role of the participant in the conversation.
          #
          # @see Telnyx::Models::Calls::ActionStartAIAssistantParams::Participant#role
          module Role
            extend Telnyx::Internal::Type::Enum

            USER = :user

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Determines what happens to the conversation when this participant hangs up.
          #
          # @see Telnyx::Models::Calls::ActionStartAIAssistantParams::Participant#on_hangup
          module OnHangup
            extend Telnyx::Internal::Type::Enum

            CONTINUE_CONVERSATION = :continue_conversation
            END_CONVERSATION = :end_conversation

            # @!method self.values
            #   @return [Array<Symbol>]
          end
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

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings)]
        end
      end
    end
  end
end
