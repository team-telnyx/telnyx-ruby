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

        # AI Assistant configuration
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionStartAIAssistantParams::Assistant)
          )
        end
        attr_reader :assistant

        sig do
          params(
            assistant:
              Telnyx::Calls::ActionStartAIAssistantParams::Assistant::OrHash
          ).void
        end
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
                Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure,
                Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Rime,
                Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble
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
                Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::OrHash,
                Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Rime::OrHash,
                Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::OrHash
              )
          ).void
        end
        attr_writer :voice_settings

        sig do
          params(
            assistant:
              Telnyx::Calls::ActionStartAIAssistantParams::Assistant::OrHash,
            client_state: String,
            command_id: String,
            greeting: String,
            interruption_settings: Telnyx::Calls::InterruptionSettings::OrHash,
            transcription: Telnyx::Calls::TranscriptionConfig::OrHash,
            voice: String,
            voice_settings:
              T.any(
                Telnyx::Calls::ElevenLabsVoiceSettings::OrHash,
                Telnyx::Calls::TelnyxVoiceSettings::OrHash,
                Telnyx::Calls::AwsVoiceSettings::OrHash,
                Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::OrHash,
                Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Rime::OrHash,
                Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::OrHash
              ),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # AI Assistant configuration
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
          voice: nil,
          # The settings associated with the voice selected
          voice_settings: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              assistant: Telnyx::Calls::ActionStartAIAssistantParams::Assistant,
              client_state: String,
              command_id: String,
              greeting: String,
              interruption_settings: Telnyx::Calls::InterruptionSettings,
              transcription: Telnyx::Calls::TranscriptionConfig,
              voice: String,
              voice_settings:
                T.any(
                  Telnyx::Calls::ElevenLabsVoiceSettings,
                  Telnyx::Calls::TelnyxVoiceSettings,
                  Telnyx::Calls::AwsVoiceSettings,
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure,
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Rime,
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble
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
                Telnyx::Calls::ActionStartAIAssistantParams::Assistant,
                Telnyx::Internal::AnyHash
              )
            end

          # The identifier of the AI assistant to use
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The system instructions that the voice assistant uses during the start assistant
          # command. This will overwrite the instructions set in the assistant
          # configuration.
          sig { returns(T.nilable(String)) }
          attr_reader :instructions

          sig { params(instructions: String).void }
          attr_writer :instructions

          # Reference to the OpenAI API key. Required only when using OpenAI models
          sig { returns(T.nilable(String)) }
          attr_reader :openai_api_key_ref

          sig { params(openai_api_key_ref: String).void }
          attr_writer :openai_api_key_ref

          # AI Assistant configuration
          sig do
            params(
              id: String,
              instructions: String,
              openai_api_key_ref: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The identifier of the AI assistant to use
            id: nil,
            # The system instructions that the voice assistant uses during the start assistant
            # command. This will overwrite the instructions set in the assistant
            # configuration.
            instructions: nil,
            # Reference to the OpenAI API key. Required only when using OpenAI models
            openai_api_key_ref: nil
          )
          end

          sig do
            override.returns(
              { id: String, instructions: String, openai_api_key_ref: String }
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
                Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure,
                Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Rime,
                Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble
              )
            end

          class Azure < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure,
                  Telnyx::Internal::AnyHash
                )
              end

            # Voice settings provider type
            sig { returns(Symbol) }
            attr_accessor :type

            # The `identifier` for an integration secret that refers to your Azure Speech API
            # key.
            sig { returns(T.nilable(String)) }
            attr_reader :api_key_ref

            sig { params(api_key_ref: String).void }
            attr_writer :api_key_ref

            # The deployment ID for a custom Azure neural voice.
            sig { returns(T.nilable(String)) }
            attr_reader :deployment_id

            sig { params(deployment_id: String).void }
            attr_writer :deployment_id

            # Audio effect to apply.
            sig do
              returns(
                T.nilable(
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Effect::OrSymbol
                )
              )
            end
            attr_reader :effect

            sig do
              params(
                effect:
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Effect::OrSymbol
              ).void
            end
            attr_writer :effect

            # Voice gender filter.
            sig do
              returns(
                T.nilable(
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Gender::OrSymbol
                )
              )
            end
            attr_reader :gender

            sig do
              params(
                gender:
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Gender::OrSymbol
              ).void
            end
            attr_writer :gender

            # The Azure region for the Speech service (e.g., `eastus`, `westeurope`). Required
            # when using a custom API key.
            sig { returns(T.nilable(String)) }
            attr_reader :region

            sig { params(region: String).void }
            attr_writer :region

            sig do
              params(
                api_key_ref: String,
                deployment_id: String,
                effect:
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Effect::OrSymbol,
                gender:
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Gender::OrSymbol,
                region: String,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The `identifier` for an integration secret that refers to your Azure Speech API
              # key.
              api_key_ref: nil,
              # The deployment ID for a custom Azure neural voice.
              deployment_id: nil,
              # Audio effect to apply.
              effect: nil,
              # Voice gender filter.
              gender: nil,
              # The Azure region for the Speech service (e.g., `eastus`, `westeurope`). Required
              # when using a custom API key.
              region: nil,
              # Voice settings provider type
              type: :azure
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  api_key_ref: String,
                  deployment_id: String,
                  effect:
                    Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Effect::OrSymbol,
                  gender:
                    Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Gender::OrSymbol,
                  region: String
                }
              )
            end
            def to_hash
            end

            # Audio effect to apply.
            module Effect
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Effect
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EQ_CAR =
                T.let(
                  :eq_car,
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Effect::TaggedSymbol
                )
              EQ_TELECOMHP8K =
                T.let(
                  :eq_telecomhp8k,
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Effect::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Effect::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Voice gender filter.
            module Gender
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Gender
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MALE =
                T.let(
                  :Male,
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Gender::TaggedSymbol
                )
              FEMALE =
                T.let(
                  :Female,
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Gender::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Azure::Gender::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Rime < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Rime,
                  Telnyx::Internal::AnyHash
                )
              end

            # Voice settings provider type
            sig { returns(Symbol) }
            attr_accessor :type

            # Speech speed multiplier. Default is 1.0.
            sig { returns(T.nilable(Float)) }
            attr_reader :voice_speed

            sig { params(voice_speed: Float).void }
            attr_writer :voice_speed

            sig do
              params(voice_speed: Float, type: Symbol).returns(T.attached_class)
            end
            def self.new(
              # Speech speed multiplier. Default is 1.0.
              voice_speed: nil,
              # Voice settings provider type
              type: :rime
            )
            end

            sig { override.returns({ type: Symbol, voice_speed: Float }) }
            def to_hash
            end
          end

          class Resemble < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble,
                  Telnyx::Internal::AnyHash
                )
              end

            # Voice settings provider type
            sig { returns(Symbol) }
            attr_accessor :type

            # Output audio format.
            sig do
              returns(
                T.nilable(
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Format::OrSymbol
                )
              )
            end
            attr_reader :format_

            sig do
              params(
                format_:
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Format::OrSymbol
              ).void
            end
            attr_writer :format_

            # Audio precision format.
            sig do
              returns(
                T.nilable(
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Precision::OrSymbol
                )
              )
            end
            attr_reader :precision

            sig do
              params(
                precision:
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Precision::OrSymbol
              ).void
            end
            attr_writer :precision

            # Audio sample rate in Hz.
            sig do
              returns(
                T.nilable(
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::SampleRate::OrSymbol
                )
              )
            end
            attr_reader :sample_rate

            sig do
              params(
                sample_rate:
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::SampleRate::OrSymbol
              ).void
            end
            attr_writer :sample_rate

            sig do
              params(
                format_:
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Format::OrSymbol,
                precision:
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Precision::OrSymbol,
                sample_rate:
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::SampleRate::OrSymbol,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Output audio format.
              format_: nil,
              # Audio precision format.
              precision: nil,
              # Audio sample rate in Hz.
              sample_rate: nil,
              # Voice settings provider type
              type: :resemble
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  format_:
                    Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Format::OrSymbol,
                  precision:
                    Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Precision::OrSymbol,
                  sample_rate:
                    Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::SampleRate::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Output audio format.
            module Format
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Format
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              WAV =
                T.let(
                  :wav,
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Format::TaggedSymbol
                )
              MP3 =
                T.let(
                  :mp3,
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Format::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Format::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Audio precision format.
            module Precision
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Precision
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PCM_16 =
                T.let(
                  :PCM_16,
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Precision::TaggedSymbol
                )
              PCM_24 =
                T.let(
                  :PCM_24,
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Precision::TaggedSymbol
                )
              PCM_32 =
                T.let(
                  :PCM_32,
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Precision::TaggedSymbol
                )
              MULAW =
                T.let(
                  :MULAW,
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Precision::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::Precision::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Audio sample rate in Hz.
            module SampleRate
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::SampleRate
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SAMPLE_RATE_8000 =
                T.let(
                  :"8000",
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                )
              SAMPLE_RATE_16000 =
                T.let(
                  :"16000",
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                )
              SAMPLE_RATE_22050 =
                T.let(
                  :"22050",
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                )
              SAMPLE_RATE_32000 =
                T.let(
                  :"32000",
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                )
              SAMPLE_RATE_44100 =
                T.let(
                  :"44100",
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                )
              SAMPLE_RATE_48000 =
                T.let(
                  :"48000",
                  Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::ActionStartAIAssistantParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
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
