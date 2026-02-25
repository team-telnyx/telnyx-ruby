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

        # @!attribute gather_ended_speech
        #   Text that will be played when the gathering has finished. There is a 3,000
        #   character limit.
        #
        #   @return [String, nil]
        optional :gather_ended_speech, String

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
        #   The maximum time in milliseconds to wait for user response before timing out.
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
        #   @return [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Azure, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Rime, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Resemble, nil]
        optional :voice_settings, union: -> { Telnyx::Calls::ActionGatherUsingAIParams::VoiceSettings }

        # @!method initialize(parameters:, assistant: nil, client_state: nil, command_id: nil, gather_ended_speech: nil, greeting: nil, interruption_settings: nil, language: nil, message_history: nil, send_message_history_updates: nil, send_partial_results: nil, transcription: nil, user_response_timeout_ms: nil, voice: nil, voice_settings: nil, request_options: {})
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
        #   @param gather_ended_speech [String] Text that will be played when the gathering has finished. There is a 3,000 chara
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
        #   @param user_response_timeout_ms [Integer] The maximum time in milliseconds to wait for user response before timing out.
        #
        #   @param voice [String] The voice to be used by the voice assistant. Currently we support ElevenLabs, Te
        #
        #   @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Azure, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Rime, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Resemble] The settings associated with the voice selected
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

          variant :azure, -> { Telnyx::Calls::ActionGatherUsingAIParams::VoiceSettings::Azure }

          variant :rime, -> { Telnyx::Calls::ActionGatherUsingAIParams::VoiceSettings::Rime }

          variant :resemble, -> { Telnyx::Calls::ActionGatherUsingAIParams::VoiceSettings::Resemble }

          class Azure < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   Voice settings provider type
            #
            #   @return [Symbol, :azure]
            required :type, const: :azure

            # @!attribute api_key_ref
            #   The `identifier` for an integration secret that refers to your Azure Speech API
            #   key.
            #
            #   @return [String, nil]
            optional :api_key_ref, String

            # @!attribute deployment_id
            #   The deployment ID for a custom Azure neural voice.
            #
            #   @return [String, nil]
            optional :deployment_id, String

            # @!attribute effect
            #   Audio effect to apply.
            #
            #   @return [Symbol, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Azure::Effect, nil]
            optional :effect, enum: -> { Telnyx::Calls::ActionGatherUsingAIParams::VoiceSettings::Azure::Effect }

            # @!attribute gender
            #   Voice gender filter.
            #
            #   @return [Symbol, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Azure::Gender, nil]
            optional :gender, enum: -> { Telnyx::Calls::ActionGatherUsingAIParams::VoiceSettings::Azure::Gender }

            # @!attribute region
            #   The Azure region for the Speech service (e.g., `eastus`, `westeurope`). Required
            #   when using a custom API key.
            #
            #   @return [String, nil]
            optional :region, String

            # @!method initialize(api_key_ref: nil, deployment_id: nil, effect: nil, gender: nil, region: nil, type: :azure)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Azure} for
            #   more details.
            #
            #   @param api_key_ref [String] The `identifier` for an integration secret that refers to your Azure Speech API
            #
            #   @param deployment_id [String] The deployment ID for a custom Azure neural voice.
            #
            #   @param effect [Symbol, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Azure::Effect] Audio effect to apply.
            #
            #   @param gender [Symbol, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Azure::Gender] Voice gender filter.
            #
            #   @param region [String] The Azure region for the Speech service (e.g., `eastus`, `westeurope`). Required
            #
            #   @param type [Symbol, :azure] Voice settings provider type

            # Audio effect to apply.
            #
            # @see Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Azure#effect
            module Effect
              extend Telnyx::Internal::Type::Enum

              EQ_CAR = :eq_car
              EQ_TELECOMHP8K = :eq_telecomhp8k

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Voice gender filter.
            #
            # @see Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Azure#gender
            module Gender
              extend Telnyx::Internal::Type::Enum

              MALE = :Male
              FEMALE = :Female

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Rime < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   Voice settings provider type
            #
            #   @return [Symbol, :rime]
            required :type, const: :rime

            # @!attribute voice_speed
            #   Speech speed multiplier. Default is 1.0.
            #
            #   @return [Float, nil]
            optional :voice_speed, Float

            # @!method initialize(voice_speed: nil, type: :rime)
            #   @param voice_speed [Float] Speech speed multiplier. Default is 1.0.
            #
            #   @param type [Symbol, :rime] Voice settings provider type
          end

          class Resemble < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   Voice settings provider type
            #
            #   @return [Symbol, :resemble]
            required :type, const: :resemble

            # @!attribute format_
            #   Output audio format.
            #
            #   @return [Symbol, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Resemble::Format, nil]
            optional :format_,
                     enum: -> { Telnyx::Calls::ActionGatherUsingAIParams::VoiceSettings::Resemble::Format },
                     api_name: :format

            # @!attribute precision
            #   Audio precision format.
            #
            #   @return [Symbol, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Resemble::Precision, nil]
            optional :precision,
                     enum: -> { Telnyx::Calls::ActionGatherUsingAIParams::VoiceSettings::Resemble::Precision }

            # @!attribute sample_rate
            #   Audio sample rate in Hz.
            #
            #   @return [Symbol, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Resemble::SampleRate, nil]
            optional :sample_rate,
                     enum: -> { Telnyx::Calls::ActionGatherUsingAIParams::VoiceSettings::Resemble::SampleRate }

            # @!method initialize(format_: nil, precision: nil, sample_rate: nil, type: :resemble)
            #   @param format_ [Symbol, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Resemble::Format] Output audio format.
            #
            #   @param precision [Symbol, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Resemble::Precision] Audio precision format.
            #
            #   @param sample_rate [Symbol, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Resemble::SampleRate] Audio sample rate in Hz.
            #
            #   @param type [Symbol, :resemble] Voice settings provider type

            # Output audio format.
            #
            # @see Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Resemble#format_
            module Format
              extend Telnyx::Internal::Type::Enum

              WAV = :wav
              MP3 = :mp3

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Audio precision format.
            #
            # @see Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Resemble#precision
            module Precision
              extend Telnyx::Internal::Type::Enum

              PCM_16 = :PCM_16
              PCM_24 = :PCM_24
              PCM_32 = :PCM_32
              MULAW = :MULAW

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Audio sample rate in Hz.
            #
            # @see Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Resemble#sample_rate
            module SampleRate
              extend Telnyx::Internal::Type::Enum

              SAMPLE_RATE_8000 = :"8000"
              SAMPLE_RATE_16000 = :"16000"
              SAMPLE_RATE_22050 = :"22050"
              SAMPLE_RATE_32000 = :"32000"
              SAMPLE_RATE_44100 = :"44100"
              SAMPLE_RATE_48000 = :"48000"

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Azure, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Rime, Telnyx::Models::Calls::ActionGatherUsingAIParams::VoiceSettings::Resemble)]
        end
      end
    end
  end
end
