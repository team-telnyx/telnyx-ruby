# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionGatherUsingAIParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionGatherUsingAIParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The parameters described as a JSON Schema object that needs to be gathered by
        # the voice assistant. See the
        # [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
        # documentation about the format
        sig { returns(T.anything) }
        attr_accessor :parameters

        # Assistant configuration including choice of LLM, custom instructions, and tools.
        sig { returns(T.nilable(Telnyx::AI::Assistant)) }
        attr_reader :assistant

        sig { params(assistant: Telnyx::AI::Assistant::OrHash).void }
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

        # Text that will be played when the gathering starts, if none then nothing will be
        # played when the gathering starts. The greeting can be text for any voice or SSML
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

        # Language to use for speech recognition
        sig do
          returns(
            T.nilable(Telnyx::Calls::GoogleTranscriptionLanguage::OrSymbol)
          )
        end
        attr_reader :language

        sig do
          params(
            language: Telnyx::Calls::GoogleTranscriptionLanguage::OrSymbol
          ).void
        end
        attr_writer :language

        # The message history you want the voice assistant to be aware of, this can be
        # useful to keep the context of the conversation, or to pass additional
        # information to the voice assistant.
        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::Calls::ActionGatherUsingAIParams::MessageHistory]
            )
          )
        end
        attr_reader :message_history

        sig do
          params(
            message_history:
              T::Array[
                Telnyx::Calls::ActionGatherUsingAIParams::MessageHistory::OrHash
              ]
          ).void
        end
        attr_writer :message_history

        # Default is `false`. If set to `true`, the voice assistant will send updates to
        # the message history via the `call.ai_gather.message_history_updated` callback in
        # real time as the message history is updated.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :send_message_history_updates

        sig { params(send_message_history_updates: T::Boolean).void }
        attr_writer :send_message_history_updates

        # Default is `false`. If set to `true`, the voice assistant will send partial
        # results via the `call.ai_gather.partial_results` callback in real time as
        # individual fields are gathered. If set to `false`, the voice assistant will only
        # send the final result via the `call.ai_gather.ended` callback.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :send_partial_results

        sig { params(send_partial_results: T::Boolean).void }
        attr_writer :send_partial_results

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

        # The number of milliseconds to wait for a user response before the voice
        # assistant times out and check if the user is still there.
        sig { returns(T.nilable(Integer)) }
        attr_reader :user_response_timeout_ms

        sig { params(user_response_timeout_ms: Integer).void }
        attr_writer :user_response_timeout_ms

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
                T.anything
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
                T.anything
              )
          ).void
        end
        attr_writer :voice_settings

        sig do
          params(
            parameters: T.anything,
            assistant: Telnyx::AI::Assistant::OrHash,
            client_state: String,
            command_id: String,
            greeting: String,
            interruption_settings: Telnyx::Calls::InterruptionSettings::OrHash,
            language: Telnyx::Calls::GoogleTranscriptionLanguage::OrSymbol,
            message_history:
              T::Array[
                Telnyx::Calls::ActionGatherUsingAIParams::MessageHistory::OrHash
              ],
            send_message_history_updates: T::Boolean,
            send_partial_results: T::Boolean,
            transcription: Telnyx::Calls::TranscriptionConfig::OrHash,
            user_response_timeout_ms: Integer,
            voice: String,
            voice_settings:
              T.any(
                Telnyx::Calls::ElevenLabsVoiceSettings::OrHash,
                Telnyx::Calls::TelnyxVoiceSettings::OrHash,
                T.anything
              ),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The parameters described as a JSON Schema object that needs to be gathered by
          # the voice assistant. See the
          # [JSON Schema reference](https://json-schema.org/understanding-json-schema) for
          # documentation about the format
          parameters:,
          # Assistant configuration including choice of LLM, custom instructions, and tools.
          assistant: nil,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Text that will be played when the gathering starts, if none then nothing will be
          # played when the gathering starts. The greeting can be text for any voice or SSML
          # for `AWS.Polly.<voice_id>` voices. There is a 3,000 character limit.
          greeting: nil,
          # Settings for handling user interruptions during assistant speech
          interruption_settings: nil,
          # Language to use for speech recognition
          language: nil,
          # The message history you want the voice assistant to be aware of, this can be
          # useful to keep the context of the conversation, or to pass additional
          # information to the voice assistant.
          message_history: nil,
          # Default is `false`. If set to `true`, the voice assistant will send updates to
          # the message history via the `call.ai_gather.message_history_updated` callback in
          # real time as the message history is updated.
          send_message_history_updates: nil,
          # Default is `false`. If set to `true`, the voice assistant will send partial
          # results via the `call.ai_gather.partial_results` callback in real time as
          # individual fields are gathered. If set to `false`, the voice assistant will only
          # send the final result via the `call.ai_gather.ended` callback.
          send_partial_results: nil,
          # The settings associated with speech to text for the voice assistant. This is
          # only relevant if the assistant uses a text-to-text language model. Any assistant
          # using a model with native audio support (e.g. `fixie-ai/ultravox-v0_4`) will
          # ignore this field.
          transcription: nil,
          # The number of milliseconds to wait for a user response before the voice
          # assistant times out and check if the user is still there.
          user_response_timeout_ms: nil,
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
              parameters: T.anything,
              assistant: Telnyx::AI::Assistant,
              client_state: String,
              command_id: String,
              greeting: String,
              interruption_settings: Telnyx::Calls::InterruptionSettings,
              language: Telnyx::Calls::GoogleTranscriptionLanguage::OrSymbol,
              message_history:
                T::Array[
                  Telnyx::Calls::ActionGatherUsingAIParams::MessageHistory
                ],
              send_message_history_updates: T::Boolean,
              send_partial_results: T::Boolean,
              transcription: Telnyx::Calls::TranscriptionConfig,
              user_response_timeout_ms: Integer,
              voice: String,
              voice_settings:
                T.any(
                  Telnyx::Calls::ElevenLabsVoiceSettings,
                  Telnyx::Calls::TelnyxVoiceSettings,
                  T.anything
                ),
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class MessageHistory < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::ActionGatherUsingAIParams::MessageHistory,
                Telnyx::Internal::AnyHash
              )
            end

          # The content of the message
          sig { returns(T.nilable(String)) }
          attr_reader :content

          sig { params(content: String).void }
          attr_writer :content

          # The role of the message sender
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::ActionGatherUsingAIParams::MessageHistory::Role::OrSymbol
              )
            )
          end
          attr_reader :role

          sig do
            params(
              role:
                Telnyx::Calls::ActionGatherUsingAIParams::MessageHistory::Role::OrSymbol
            ).void
          end
          attr_writer :role

          sig do
            params(
              content: String,
              role:
                Telnyx::Calls::ActionGatherUsingAIParams::MessageHistory::Role::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The content of the message
            content: nil,
            # The role of the message sender
            role: nil
          )
          end

          sig do
            override.returns(
              {
                content: String,
                role:
                  Telnyx::Calls::ActionGatherUsingAIParams::MessageHistory::Role::OrSymbol
              }
            )
          end
          def to_hash
          end

          # The role of the message sender
          module Role
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::ActionGatherUsingAIParams::MessageHistory::Role
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ASSISTANT =
              T.let(
                :assistant,
                Telnyx::Calls::ActionGatherUsingAIParams::MessageHistory::Role::TaggedSymbol
              )
            USER =
              T.let(
                :user,
                Telnyx::Calls::ActionGatherUsingAIParams::MessageHistory::Role::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionGatherUsingAIParams::MessageHistory::Role::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
                T.anything
              )
            end

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionGatherUsingAIParams::VoiceSettings::Variants
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
