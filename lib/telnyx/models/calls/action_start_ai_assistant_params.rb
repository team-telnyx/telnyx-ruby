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
        #   @return [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Rime, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble, nil]
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
        #   @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Rime, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble] The settings associated with the voice selected
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

          discriminator :type

          variant :elevenlabs, -> { Telnyx::Calls::ElevenLabsVoiceSettings }

          variant :telnyx, -> { Telnyx::Calls::TelnyxVoiceSettings }

          variant :aws, -> { Telnyx::Calls::AwsVoiceSettings }

          variant :azure, -> { Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure }

          variant :rime, -> { Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Rime }

          variant :resemble, -> { Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble }

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
            #   @return [Symbol, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Effect, nil]
            optional :effect, enum: -> { Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Effect }

            # @!attribute gender
            #   Voice gender filter.
            #
            #   @return [Symbol, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Gender, nil]
            optional :gender, enum: -> { Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Gender }

            # @!attribute region
            #   The Azure region for the Speech service (e.g., `eastus`, `westeurope`). Required
            #   when using a custom API key.
            #
            #   @return [String, nil]
            optional :region, String

            # @!method initialize(api_key_ref: nil, deployment_id: nil, effect: nil, gender: nil, region: nil, type: :azure)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure} for
            #   more details.
            #
            #   @param api_key_ref [String] The `identifier` for an integration secret that refers to your Azure Speech API
            #
            #   @param deployment_id [String] The deployment ID for a custom Azure neural voice.
            #
            #   @param effect [Symbol, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Effect] Audio effect to apply.
            #
            #   @param gender [Symbol, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Gender] Voice gender filter.
            #
            #   @param region [String] The Azure region for the Speech service (e.g., `eastus`, `westeurope`). Required
            #
            #   @param type [Symbol, :azure] Voice settings provider type

            # Audio effect to apply.
            #
            # @see Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure#effect
            module Effect
              extend Telnyx::Internal::Type::Enum

              EQ_CAR = :eq_car
              EQ_TELECOMHP8K = :eq_telecomhp8k

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Voice gender filter.
            #
            # @see Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure#gender
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
            #   @return [Symbol, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Format, nil]
            optional :format_,
                     enum: -> {
                       Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Format
                     },
                     api_name: :format

            # @!attribute precision
            #   Audio precision format.
            #
            #   @return [Symbol, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Precision, nil]
            optional :precision,
                     enum: -> { Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Precision }

            # @!attribute sample_rate
            #   Audio sample rate in Hz.
            #
            #   @return [Symbol, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::SampleRate, nil]
            optional :sample_rate,
                     enum: -> { Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::SampleRate }

            # @!method initialize(format_: nil, precision: nil, sample_rate: nil, type: :resemble)
            #   @param format_ [Symbol, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Format] Output audio format.
            #
            #   @param precision [Symbol, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Precision] Audio precision format.
            #
            #   @param sample_rate [Symbol, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::SampleRate] Audio sample rate in Hz.
            #
            #   @param type [Symbol, :resemble] Voice settings provider type

            # Output audio format.
            #
            # @see Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble#format_
            module Format
              extend Telnyx::Internal::Type::Enum

              WAV = :wav
              MP3 = :mp3

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Audio precision format.
            #
            # @see Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble#precision
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
            # @see Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble#sample_rate
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
          #   @return [Array(Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Rime, Telnyx::Models::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble)]
        end
      end
    end
  end
end
