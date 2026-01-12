# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#gather_using_ai
      class ActionGatherUsingAIParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute parameters
        #   The parameters described as a JSON Schema object that needs to be gathered by
        #   the voice assistant. See the
        #   [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
        #   documentation about the format
        #
        #   @return [Hash{Symbol=>Object}]
        required :parameters, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute assistant
        #   Assistant configuration including choice of LLM, custom instructions, and tools.
        #
        #   @return [Telnyx::Models::AI::Assistant, nil]
        optional :assistant, -> { Telnyx::AI::Assistant }

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
        #   Text that will be played when the gathering starts, if none then nothing will be
        #   played when the gathering starts. The greeting can be text for any voice or SSML
        #   for `AWS.Polly.<voice_id>` voices. There is a 3,000 character limit.
        #
        #   @return [String, nil]
        optional :greeting, String

        # @!attribute interruption_settings
        #   Settings for handling user interruptions during assistant speech
        #
        #   @return [Telnyx::Models::Calls::InterruptionSettings, nil]
        optional :interruption_settings, -> { Telnyx::Calls::InterruptionSettings }

        # @!attribute language
        #   Language to use for speech recognition
        #
        #   @return [Symbol, Telnyx::Models::Calls::GoogleTranscriptionLanguage, nil]
        optional :language, enum: -> { Telnyx::Calls::GoogleTranscriptionLanguage }

        # @!attribute message_history
        #   The message history you want the voice assistant to be aware of, this can be
        #   useful to keep the context of the conversation, or to pass additional
        #   information to the voice assistant.
        #
        #   @return [Array<Telnyx::Models::Calls::ActionGatherUsingAIParams::MessageHistory>, nil]
        optional :message_history,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Calls::ActionGatherUsingAIParams::MessageHistory] }

        # @!attribute send_message_history_updates
        #   Default is `false`. If set to `true`, the voice assistant will send updates to
        #   the message history via the `call.ai_gather.message_history_updated` callback in
        #   real time as the message history is updated.
        #
        #   @return [Boolean, nil]
        optional :send_message_history_updates, Telnyx::Internal::Type::Boolean

        # @!attribute send_partial_results
        #   Default is `false`. If set to `true`, the voice assistant will send partial
        #   results via the `call.ai_gather.partial_results` callback in real time as
        #   individual fields are gathered. If set to `false`, the voice assistant will only
        #   send the final result via the `call.ai_gather.ended` callback.
        #
        #   @return [Boolean, nil]
        optional :send_partial_results, Telnyx::Internal::Type::Boolean

        # @!attribute transcription
        #   The settings associated with speech to text for the voice assistant. This is
        #   only relevant if the assistant uses a text-to-text language model. Any assistant
        #   using a model with native audio support (e.g. `fixie-ai/ultravox-v0_4`) will
        #   ignore this field.
        #
        #   @return [Telnyx::Models::Calls::TranscriptionConfig, nil]
        optional :transcription, -> { Telnyx::Calls::TranscriptionConfig }

        # @!attribute user_response_timeout_ms
        #   The number of milliseconds to wait for a user response before the voice
        #   assistant times out and check if the user is still there.
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
        #
        #   @return [String, nil]
        optional :voice, String

        # @!attribute voice_settings
        #   The settings associated with the voice selected
        #
        #   @return [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, nil]
        optional :voice_settings, union: -> { Telnyx::Calls::ActionGatherUsingAIParams::VoiceSettings }

        # @!method initialize(parameters:, assistant: nil, client_state: nil, command_id: nil, greeting: nil, interruption_settings: nil, language: nil, message_history: nil, send_message_history_updates: nil, send_partial_results: nil, transcription: nil, user_response_timeout_ms: nil, voice: nil, voice_settings: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionGatherUsingAIParams} for more details.
        #
        #   @param parameters [Hash{Symbol=>Object}] The parameters described as a JSON Schema object that needs to be gathered by th
        #
        #   @param assistant [Telnyx::Models::AI::Assistant] Assistant configuration including choice of LLM, custom instructions, and tools.
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param greeting [String] Text that will be played when the gathering starts, if none then nothing will be
        #
        #   @param interruption_settings [Telnyx::Models::Calls::InterruptionSettings] Settings for handling user interruptions during assistant speech
        #
        #   @param language [Symbol, Telnyx::Models::Calls::GoogleTranscriptionLanguage] Language to use for speech recognition
        #
        #   @param message_history [Array<Telnyx::Models::Calls::ActionGatherUsingAIParams::MessageHistory>] The message history you want the voice assistant to be aware of, this can be use
        #
        #   @param send_message_history_updates [Boolean] Default is `false`. If set to `true`, the voice assistant will send updates to t
        #
        #   @param send_partial_results [Boolean] Default is `false`. If set to `true`, the voice assistant will send partial resu
        #
        #   @param transcription [Telnyx::Models::Calls::TranscriptionConfig] The settings associated with speech to text for the voice assistant. This is onl
        #
        #   @param user_response_timeout_ms [Integer] The number of milliseconds to wait for a user response before the voice assistan
        #
        #   @param voice [String] The voice to be used by the voice assistant. Currently we support ElevenLabs, Te
        #
        #   @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings] The settings associated with the voice selected
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class MessageHistory < Telnyx::Internal::Type::BaseModel
          # @!attribute content
          #   The content of the message
          #
          #   @return [String, nil]
          optional :content, String

          # @!attribute role
          #   The role of the message sender
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionGatherUsingAIParams::MessageHistory::Role, nil]
          optional :role, enum: -> { Telnyx::Calls::ActionGatherUsingAIParams::MessageHistory::Role }

          # @!method initialize(content: nil, role: nil)
          #   @param content [String] The content of the message
          #
          #   @param role [Symbol, Telnyx::Models::Calls::ActionGatherUsingAIParams::MessageHistory::Role] The role of the message sender

          # The role of the message sender
          #
          # @see Telnyx::Models::Calls::ActionGatherUsingAIParams::MessageHistory#role
          module Role
            extend Telnyx::Internal::Type::Enum

            ASSISTANT = :assistant
            USER = :user

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

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings)]
        end
      end
    end
  end
end
