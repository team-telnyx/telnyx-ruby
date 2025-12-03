# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#start_ai_assistant
      class ActionStartAIAssistantParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute assistant
        #   AI Assistant configuration
        #
        #   @return [Telnyx::Models::Calls::ActionStartAIAssistantParams::Assistant, nil]
        optional :assistant, -> { Telnyx::Calls::ActionStartAIAssistantParams::Assistant }

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
        #
        #   @return [String, nil]
        optional :voice, String

        # @!attribute voice_settings
        #   The settings associated with the voice selected
        #
        #   @return [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Object, nil]
        optional :voice_settings, union: -> { Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings }

        # @!method initialize(assistant: nil, client_state: nil, command_id: nil, greeting: nil, interruption_settings: nil, transcription: nil, voice: nil, voice_settings: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionStartAIAssistantParams} for more details.
        #
        #   @param assistant [Telnyx::Models::Calls::ActionStartAIAssistantParams::Assistant] AI Assistant configuration
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param greeting [String] Text that will be played when the assistant starts, if none then nothing will be
        #
        #   @param interruption_settings [Telnyx::Models::Calls::InterruptionSettings] Settings for handling user interruptions during assistant speech
        #
        #   @param transcription [Telnyx::Models::Calls::TranscriptionConfig] The settings associated with speech to text for the voice assistant. This is onl
        #
        #   @param voice [String] The voice to be used by the voice assistant. Currently we support ElevenLabs, Te
        #
        #   @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Object] The settings associated with the voice selected
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Assistant < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   The identifier of the AI assistant to use
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute instructions
          #   The system instructions that the voice assistant uses during the start assistant
          #   command. This will overwrite the instructions set in the assistant
          #   configuration.
          #
          #   @return [String, nil]
          optional :instructions, String

          # @!attribute openai_api_key_ref
          #   Reference to the OpenAI API key. Required only when using OpenAI models
          #
          #   @return [String, nil]
          optional :openai_api_key_ref, String

          # @!method initialize(id: nil, instructions: nil, openai_api_key_ref: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::ActionStartAIAssistantParams::Assistant} for more
          #   details.
          #
          #   AI Assistant configuration
          #
          #   @param id [String] The identifier of the AI assistant to use
          #
          #   @param instructions [String] The system instructions that the voice assistant uses during the start assistant
          #
          #   @param openai_api_key_ref [String] Reference to the OpenAI API key. Required only when using OpenAI models
        end

        # The settings associated with the voice selected
        module VoiceSettings
          extend Telnyx::Internal::Type::Union

          variant -> { Telnyx::Calls::ElevenLabsVoiceSettings }

          variant -> { Telnyx::Calls::TelnyxVoiceSettings }

          variant -> { Telnyx::Calls::AwsVoiceSettings }

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Object)]
        end
      end
    end
  end
end
