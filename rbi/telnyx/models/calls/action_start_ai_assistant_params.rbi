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

        # A list of messages to seed the conversation history before the assistant starts.
        # Follows the same message format as the `ai_assistant_add_messages` command.
        sig do
          returns(
            T.nilable(
              T::Array[
                T.any(
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::User,
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant,
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Tool,
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::System,
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Developer
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
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::User::OrHash,
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::OrHash,
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Tool::OrHash,
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::System::OrHash,
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Developer::OrHash
                )
              ]
          ).void
        end
        attr_writer :message_history

        # A list of participants to add to the conversation when it starts.
        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::Calls::ActionStartAIAssistantParams::Participant]
            )
          )
        end
        attr_reader :participants

        sig do
          params(
            participants:
              T::Array[
                Telnyx::Calls::ActionStartAIAssistantParams::Participant::OrHash
              ]
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
        #   `Inworld.Max.Oliver`). Supported models: `Mini`, `Max`.
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
                Telnyx::ResembleVoiceSettings
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
                Telnyx::ResembleVoiceSettings::OrHash
              )
          ).void
        end
        attr_writer :voice_settings

        sig do
          params(
            call_control_id: String,
            assistant:
              Telnyx::Calls::ActionStartAIAssistantParams::Assistant::OrHash,
            client_state: String,
            command_id: String,
            greeting: String,
            interruption_settings: Telnyx::Calls::InterruptionSettings::OrHash,
            message_history:
              T::Array[
                T.any(
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::User::OrHash,
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::OrHash,
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Tool::OrHash,
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::System::OrHash,
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Developer::OrHash
                )
              ],
            participants:
              T::Array[
                Telnyx::Calls::ActionStartAIAssistantParams::Participant::OrHash
              ],
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
                Telnyx::ResembleVoiceSettings::OrHash
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
          #   `Inworld.Max.Oliver`). Supported models: `Mini`, `Max`.
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
              assistant: Telnyx::Calls::ActionStartAIAssistantParams::Assistant,
              client_state: String,
              command_id: String,
              greeting: String,
              interruption_settings: Telnyx::Calls::InterruptionSettings,
              message_history:
                T::Array[
                  T.any(
                    Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::User,
                    Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant,
                    Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Tool,
                    Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::System,
                    Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Developer
                  )
                ],
              participants:
                T::Array[
                  Telnyx::Calls::ActionStartAIAssistantParams::Participant
                ],
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
                  Telnyx::ResembleVoiceSettings
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

          # The identifier of the AI assistant to use.
          sig { returns(String) }
          attr_accessor :id

          # Map of dynamic variables and their default values. Dynamic variables can be
          # referenced in instructions, greeting, and tool definitions using the
          # `{{variable_name}}` syntax. Call-control-agent automatically merges in
          # `telnyx_call_*` variables (telnyx_call_to, telnyx_call_from,
          # telnyx_conversation_channel, telnyx_agent_target, telnyx_end_user_target,
          # telnyx_call_caller_id_name) and custom header variables.
          sig do
            returns(
              T.nilable(
                T::Hash[
                  Symbol,
                  Telnyx::Calls::ActionStartAIAssistantParams::Assistant::DynamicVariable::Variants
                ]
              )
            )
          end
          attr_reader :dynamic_variables

          sig do
            params(
              dynamic_variables:
                T::Hash[
                  Symbol,
                  Telnyx::Calls::ActionStartAIAssistantParams::Assistant::DynamicVariable::Variants
                ]
            ).void
          end
          attr_writer :dynamic_variables

          # External LLM configuration for bringing your own LLM endpoint.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :external_llm

          sig { params(external_llm: T.anything).void }
          attr_writer :external_llm

          # Fallback LLM configuration used when the primary LLM provider is unavailable.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :fallback_config

          sig { params(fallback_config: T.anything).void }
          attr_writer :fallback_config

          # Initial greeting text spoken when the assistant starts. Can be plain text for
          # any voice or SSML for `AWS.Polly.<voice_id>` voices. There is a 3,000 character
          # limit.
          sig { returns(T.nilable(String)) }
          attr_reader :greeting

          sig { params(greeting: String).void }
          attr_writer :greeting

          # System instructions for the voice assistant. Can be templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
          # This will overwrite the instructions set in the assistant configuration.
          sig { returns(T.nilable(String)) }
          attr_reader :instructions

          sig { params(instructions: String).void }
          attr_writer :instructions

          # Integration secret identifier for the LLM provider API key. Use this field to
          # reference an
          # [integration secret](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          # containing your LLM provider API key. Supports any LLM provider (OpenAI,
          # Anthropic, etc.).
          sig { returns(T.nilable(String)) }
          attr_reader :llm_api_key_ref

          sig { params(llm_api_key_ref: String).void }
          attr_writer :llm_api_key_ref

          # MCP (Model Context Protocol) server configurations for extending the assistant's
          # capabilities with external tools and data sources.
          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :mcp_servers

          sig { params(mcp_servers: T::Array[T.anything]).void }
          attr_writer :mcp_servers

          # LLM model override for this call. If omitted, the assistant's configured model
          # is used.
          sig { returns(T.nilable(String)) }
          attr_reader :model

          sig { params(model: String).void }
          attr_writer :model

          # Assistant name override for this call.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Observability configuration for the assistant session, including Langfuse
          # integration for tracing and monitoring.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :observability_settings

          sig { params(observability_settings: T.anything).void }
          attr_writer :observability_settings

          # Deprecated — use `llm_api_key_ref` instead. Integration secret identifier for
          # the OpenAI API key. This field is maintained for backward compatibility;
          # `llm_api_key_ref` is the canonical field name and supports all LLM providers.
          sig { returns(T.nilable(String)) }
          attr_reader :openai_api_key_ref

          sig { params(openai_api_key_ref: String).void }
          attr_writer :openai_api_key_ref

          # Inline tool definitions available to the assistant (webhook, retrieval,
          # transfer, hangup, etc.). Overrides the assistant's stored tools if provided.
          sig do
            returns(
              T.nilable(
                T::Array[
                  T.any(
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::BookAppointment,
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::CheckAvailability,
                    Telnyx::AI::WebhookTool,
                    Telnyx::AI::HangupTool,
                    Telnyx::AI::TransferTool,
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::Retrieval
                  )
                ]
              )
            )
          end
          attr_reader :tools

          sig do
            params(
              tools:
                T::Array[
                  T.any(
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::BookAppointment::OrHash,
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::CheckAvailability::OrHash,
                    Telnyx::AI::WebhookTool::OrHash,
                    Telnyx::AI::HangupTool::OrHash,
                    Telnyx::AI::TransferTool::OrHash,
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::Retrieval::OrHash
                  )
                ]
            ).void
          end
          attr_writer :tools

          # AI Assistant configuration. All fields except `id` are optional — the
          # assistant's stored configuration will be used as fallback for any omitted
          # fields.
          sig do
            params(
              id: String,
              dynamic_variables:
                T::Hash[
                  Symbol,
                  Telnyx::Calls::ActionStartAIAssistantParams::Assistant::DynamicVariable::Variants
                ],
              external_llm: T.anything,
              fallback_config: T.anything,
              greeting: String,
              instructions: String,
              llm_api_key_ref: String,
              mcp_servers: T::Array[T.anything],
              model: String,
              name: String,
              observability_settings: T.anything,
              openai_api_key_ref: String,
              tools:
                T::Array[
                  T.any(
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::BookAppointment::OrHash,
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::CheckAvailability::OrHash,
                    Telnyx::AI::WebhookTool::OrHash,
                    Telnyx::AI::HangupTool::OrHash,
                    Telnyx::AI::TransferTool::OrHash,
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::Retrieval::OrHash
                  )
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # The identifier of the AI assistant to use.
            id:,
            # Map of dynamic variables and their default values. Dynamic variables can be
            # referenced in instructions, greeting, and tool definitions using the
            # `{{variable_name}}` syntax. Call-control-agent automatically merges in
            # `telnyx_call_*` variables (telnyx_call_to, telnyx_call_from,
            # telnyx_conversation_channel, telnyx_agent_target, telnyx_end_user_target,
            # telnyx_call_caller_id_name) and custom header variables.
            dynamic_variables: nil,
            # External LLM configuration for bringing your own LLM endpoint.
            external_llm: nil,
            # Fallback LLM configuration used when the primary LLM provider is unavailable.
            fallback_config: nil,
            # Initial greeting text spoken when the assistant starts. Can be plain text for
            # any voice or SSML for `AWS.Polly.<voice_id>` voices. There is a 3,000 character
            # limit.
            greeting: nil,
            # System instructions for the voice assistant. Can be templated with
            # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
            # This will overwrite the instructions set in the assistant configuration.
            instructions: nil,
            # Integration secret identifier for the LLM provider API key. Use this field to
            # reference an
            # [integration secret](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
            # containing your LLM provider API key. Supports any LLM provider (OpenAI,
            # Anthropic, etc.).
            llm_api_key_ref: nil,
            # MCP (Model Context Protocol) server configurations for extending the assistant's
            # capabilities with external tools and data sources.
            mcp_servers: nil,
            # LLM model override for this call. If omitted, the assistant's configured model
            # is used.
            model: nil,
            # Assistant name override for this call.
            name: nil,
            # Observability configuration for the assistant session, including Langfuse
            # integration for tracing and monitoring.
            observability_settings: nil,
            # Deprecated — use `llm_api_key_ref` instead. Integration secret identifier for
            # the OpenAI API key. This field is maintained for backward compatibility;
            # `llm_api_key_ref` is the canonical field name and supports all LLM providers.
            openai_api_key_ref: nil,
            # Inline tool definitions available to the assistant (webhook, retrieval,
            # transfer, hangup, etc.). Overrides the assistant's stored tools if provided.
            tools: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                dynamic_variables:
                  T::Hash[
                    Symbol,
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::DynamicVariable::Variants
                  ],
                external_llm: T.anything,
                fallback_config: T.anything,
                greeting: String,
                instructions: String,
                llm_api_key_ref: String,
                mcp_servers: T::Array[T.anything],
                model: String,
                name: String,
                observability_settings: T.anything,
                openai_api_key_ref: String,
                tools:
                  T::Array[
                    T.any(
                      Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::BookAppointment,
                      Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::CheckAvailability,
                      Telnyx::AI::WebhookTool,
                      Telnyx::AI::HangupTool,
                      Telnyx::AI::TransferTool,
                      Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::Retrieval
                    )
                  ]
              }
            )
          end
          def to_hash
          end

          module DynamicVariable
            extend Telnyx::Internal::Type::Union

            Variants = T.type_alias { T.any(String, Float, T::Boolean) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionStartAIAssistantParams::Assistant::DynamicVariable::Variants
                ]
              )
            end
            def self.variants
            end
          end

          module Tool
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::BookAppointment,
                  Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::CheckAvailability,
                  Telnyx::AI::WebhookTool,
                  Telnyx::AI::HangupTool,
                  Telnyx::AI::TransferTool,
                  Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::Retrieval
                )
              end

            class BookAppointment < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::BookAppointment,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::BookAppointment::BookAppointment
                )
              end
              attr_reader :book_appointment

              sig do
                params(
                  book_appointment:
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::BookAppointment::BookAppointment::OrHash
                ).void
              end
              attr_writer :book_appointment

              sig { returns(Symbol) }
              attr_accessor :type

              sig do
                params(
                  book_appointment:
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::BookAppointment::BookAppointment::OrHash,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(book_appointment:, type: :book_appointment)
              end

              sig do
                override.returns(
                  {
                    book_appointment:
                      Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::BookAppointment::BookAppointment,
                    type: Symbol
                  }
                )
              end
              def to_hash
              end

              class BookAppointment < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::BookAppointment::BookAppointment,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Reference to an integration secret that contains your Cal.com API key. You would
                # pass the `identifier` for an integration secret
                # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
                # that refers to your Cal.com API key.
                sig { returns(String) }
                attr_accessor :api_key_ref

                # Event Type ID for which slots are being fetched.
                # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-event-type-id)
                sig { returns(Integer) }
                attr_accessor :event_type_id

                # The name of the attendee
                # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-name).
                # If not provided, the assistant will ask for the attendee's name.
                sig { returns(T.nilable(String)) }
                attr_reader :attendee_name

                sig { params(attendee_name: String).void }
                attr_writer :attendee_name

                # The timezone of the attendee
                # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-timezone).
                # If not provided, the assistant will ask for the attendee's timezone.
                sig { returns(T.nilable(String)) }
                attr_reader :attendee_timezone

                sig { params(attendee_timezone: String).void }
                attr_writer :attendee_timezone

                sig do
                  params(
                    api_key_ref: String,
                    event_type_id: Integer,
                    attendee_name: String,
                    attendee_timezone: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Reference to an integration secret that contains your Cal.com API key. You would
                  # pass the `identifier` for an integration secret
                  # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
                  # that refers to your Cal.com API key.
                  api_key_ref:,
                  # Event Type ID for which slots are being fetched.
                  # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-event-type-id)
                  event_type_id:,
                  # The name of the attendee
                  # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-name).
                  # If not provided, the assistant will ask for the attendee's name.
                  attendee_name: nil,
                  # The timezone of the attendee
                  # [cal.com](https://cal.com/docs/api-reference/v2/bookings/create-a-booking#body-attendee-timezone).
                  # If not provided, the assistant will ask for the attendee's timezone.
                  attendee_timezone: nil
                )
                end

                sig do
                  override.returns(
                    {
                      api_key_ref: String,
                      event_type_id: Integer,
                      attendee_name: String,
                      attendee_timezone: String
                    }
                  )
                end
                def to_hash
                end
              end
            end

            class CheckAvailability < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::CheckAvailability,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::CheckAvailability::CheckAvailability
                )
              end
              attr_reader :check_availability

              sig do
                params(
                  check_availability:
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::CheckAvailability::CheckAvailability::OrHash
                ).void
              end
              attr_writer :check_availability

              sig { returns(Symbol) }
              attr_accessor :type

              sig do
                params(
                  check_availability:
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::CheckAvailability::CheckAvailability::OrHash,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(check_availability:, type: :check_availability)
              end

              sig do
                override.returns(
                  {
                    check_availability:
                      Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::CheckAvailability::CheckAvailability,
                    type: Symbol
                  }
                )
              end
              def to_hash
              end

              class CheckAvailability < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::CheckAvailability::CheckAvailability,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Reference to an integration secret that contains your Cal.com API key. You would
                # pass the `identifier` for an integration secret
                # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
                # that refers to your Cal.com API key.
                sig { returns(String) }
                attr_accessor :api_key_ref

                # Event Type ID for which slots are being fetched.
                # [cal.com](https://cal.com/docs/api-reference/v2/slots/get-available-slots#parameter-event-type-id)
                sig { returns(Integer) }
                attr_accessor :event_type_id

                sig do
                  params(api_key_ref: String, event_type_id: Integer).returns(
                    T.attached_class
                  )
                end
                def self.new(
                  # Reference to an integration secret that contains your Cal.com API key. You would
                  # pass the `identifier` for an integration secret
                  # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
                  # that refers to your Cal.com API key.
                  api_key_ref:,
                  # Event Type ID for which slots are being fetched.
                  # [cal.com](https://cal.com/docs/api-reference/v2/slots/get-available-slots#parameter-event-type-id)
                  event_type_id:
                )
                end

                sig do
                  override.returns(
                    { api_key_ref: String, event_type_id: Integer }
                  )
                end
                def to_hash
                end
              end
            end

            class Retrieval < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::Retrieval,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::Retrieval::Retrieval
                )
              end
              attr_reader :retrieval

              sig do
                params(
                  retrieval:
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::Retrieval::Retrieval::OrHash
                ).void
              end
              attr_writer :retrieval

              sig { returns(Symbol) }
              attr_accessor :type

              sig do
                params(
                  retrieval:
                    Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::Retrieval::Retrieval::OrHash,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(retrieval:, type: :retrieval)
              end

              sig do
                override.returns(
                  {
                    retrieval:
                      Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::Retrieval::Retrieval,
                    type: Symbol
                  }
                )
              end
              def to_hash
              end

              class Retrieval < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::Retrieval::Retrieval,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig { returns(T::Array[String]) }
                attr_accessor :bucket_ids

                # The maximum number of results to retrieve as context for the language model.
                sig { returns(T.nilable(Integer)) }
                attr_reader :max_num_results

                sig { params(max_num_results: Integer).void }
                attr_writer :max_num_results

                sig do
                  params(
                    bucket_ids: T::Array[String],
                    max_num_results: Integer
                  ).returns(T.attached_class)
                end
                def self.new(
                  bucket_ids:,
                  # The maximum number of results to retrieve as context for the language model.
                  max_num_results: nil
                )
                end

                sig do
                  override.returns(
                    { bucket_ids: T::Array[String], max_num_results: Integer }
                  )
                end
                def to_hash
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionStartAIAssistantParams::Assistant::Tool::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end

        # Messages sent by an end user
        module MessageHistory
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::User,
                Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant,
                Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Tool,
                Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::System,
                Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Developer
              )
            end

          class User < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::User,
                  Telnyx::Internal::AnyHash
                )
              end

            # The contents of the user message.
            sig { returns(String) }
            attr_accessor :content

            # The role of the messages author, in this case `user`.
            sig { returns(Symbol) }
            attr_accessor :role

            # Metadata to add to the message
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, T.anything]).void }
            attr_writer :metadata

            # Messages sent by an end user
            sig do
              params(
                content: String,
                metadata: T::Hash[Symbol, T.anything],
                role: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The contents of the user message.
              content:,
              # Metadata to add to the message
              metadata: nil,
              # The role of the messages author, in this case `user`.
              role: :user
            )
            end

            sig do
              override.returns(
                {
                  content: String,
                  role: Symbol,
                  metadata: T::Hash[Symbol, T.anything]
                }
              )
            end
            def to_hash
            end
          end

          class Assistant < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant,
                  Telnyx::Internal::AnyHash
                )
              end

            # The role of the messages author, in this case `assistant`.
            sig { returns(Symbol) }
            attr_accessor :role

            # The contents of the assistant message. Required unless `tool_calls`
            sig { returns(T.nilable(String)) }
            attr_reader :content

            sig { params(content: String).void }
            attr_writer :content

            # Metadata to add to the message
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, T.anything]).void }
            attr_writer :metadata

            # The tool calls generated by the model, such as function calls.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall
                  ]
                )
              )
            end
            attr_reader :tool_calls

            sig do
              params(
                tool_calls:
                  T::Array[
                    Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::OrHash
                  ]
              ).void
            end
            attr_writer :tool_calls

            # Messages sent by the model in response to user messages.
            sig do
              params(
                content: String,
                metadata: T::Hash[Symbol, T.anything],
                tool_calls:
                  T::Array[
                    Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::OrHash
                  ],
                role: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The contents of the assistant message. Required unless `tool_calls`
              content: nil,
              # Metadata to add to the message
              metadata: nil,
              # The tool calls generated by the model, such as function calls.
              tool_calls: nil,
              # The role of the messages author, in this case `assistant`.
              role: :assistant
            )
            end

            sig do
              override.returns(
                {
                  role: Symbol,
                  content: String,
                  metadata: T::Hash[Symbol, T.anything],
                  tool_calls:
                    T::Array[
                      Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall
                    ]
                }
              )
            end
            def to_hash
            end

            class ToolCall < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The ID of the tool call.
              sig { returns(String) }
              attr_accessor :id

              # The function that the model called.
              sig do
                returns(
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::Function
                )
              end
              attr_reader :function

              sig do
                params(
                  function:
                    Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::Function::OrHash
                ).void
              end
              attr_writer :function

              # The type of the tool. Currently, only `function` is supported.
              sig do
                returns(
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::Type::OrSymbol
                )
              end
              attr_accessor :type

              # A call to a function tool created by the model.
              sig do
                params(
                  id: String,
                  function:
                    Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::Function::OrHash,
                  type:
                    Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The ID of the tool call.
                id:,
                # The function that the model called.
                function:,
                # The type of the tool. Currently, only `function` is supported.
                type:
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    function:
                      Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::Function,
                    type:
                      Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::Type::OrSymbol
                  }
                )
              end
              def to_hash
              end

              class Function < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::Function,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # The name of the function to call.
                sig { returns(String) }
                attr_accessor :name

                # The function that the model called.
                sig { params(name: String).returns(T.attached_class) }
                def self.new(
                  # The name of the function to call.
                  name:
                )
                end

                sig { override.returns({ name: String }) }
                def to_hash
                end
              end

              # The type of the tool. Currently, only `function` is supported.
              module Type
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FUNCTION =
                  T.let(
                    :function,
                    Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Assistant::ToolCall::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class Tool < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Tool,
                  Telnyx::Internal::AnyHash
                )
              end

            # The contents of the tool message.
            sig { returns(String) }
            attr_accessor :content

            # The role of the messages author, in this case `tool`.
            sig { returns(Symbol) }
            attr_accessor :role

            # Tool call that this message is responding to.
            sig { returns(String) }
            attr_accessor :tool_call_id

            # Metadata to add to the message
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, T.anything]).void }
            attr_writer :metadata

            sig do
              params(
                content: String,
                tool_call_id: String,
                metadata: T::Hash[Symbol, T.anything],
                role: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The contents of the tool message.
              content:,
              # Tool call that this message is responding to.
              tool_call_id:,
              # Metadata to add to the message
              metadata: nil,
              # The role of the messages author, in this case `tool`.
              role: :tool
            )
            end

            sig do
              override.returns(
                {
                  content: String,
                  role: Symbol,
                  tool_call_id: String,
                  metadata: T::Hash[Symbol, T.anything]
                }
              )
            end
            def to_hash
            end
          end

          class System < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::System,
                  Telnyx::Internal::AnyHash
                )
              end

            # The contents of the system message.
            sig { returns(String) }
            attr_accessor :content

            # The role of the messages author, in this case `system`.
            sig { returns(Symbol) }
            attr_accessor :role

            # Metadata to add to the message
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, T.anything]).void }
            attr_writer :metadata

            # Developer-provided instructions that the model should follow, regardless of
            # messages sent by the user.
            sig do
              params(
                content: String,
                metadata: T::Hash[Symbol, T.anything],
                role: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The contents of the system message.
              content:,
              # Metadata to add to the message
              metadata: nil,
              # The role of the messages author, in this case `system`.
              role: :system
            )
            end

            sig do
              override.returns(
                {
                  content: String,
                  role: Symbol,
                  metadata: T::Hash[Symbol, T.anything]
                }
              )
            end
            def to_hash
            end
          end

          class Developer < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::ActionStartAIAssistantParams::MessageHistory::Developer,
                  Telnyx::Internal::AnyHash
                )
              end

            # The contents of the developer message.
            sig { returns(String) }
            attr_accessor :content

            # The role of the messages author, in this case developer.
            sig { returns(Symbol) }
            attr_accessor :role

            # Metadata to add to the message
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, T.anything]).void }
            attr_writer :metadata

            # Developer-provided instructions that the model should follow, regardless of
            # messages sent by the user.
            sig do
              params(
                content: String,
                metadata: T::Hash[Symbol, T.anything],
                role: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The contents of the developer message.
              content:,
              # Metadata to add to the message
              metadata: nil,
              # The role of the messages author, in this case developer.
              role: :developer
            )
            end

            sig do
              override.returns(
                {
                  content: String,
                  role: Symbol,
                  metadata: T::Hash[Symbol, T.anything]
                }
              )
            end
            def to_hash
            end
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

        class Participant < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::ActionStartAIAssistantParams::Participant,
                Telnyx::Internal::AnyHash
              )
            end

          # The call_control_id of the participant to add to the conversation.
          sig { returns(String) }
          attr_accessor :id

          # The role of the participant in the conversation.
          sig do
            returns(
              Telnyx::Calls::ActionStartAIAssistantParams::Participant::Role::OrSymbol
            )
          end
          attr_accessor :role

          # Display name for the participant.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Determines what happens to the conversation when this participant hangs up.
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::ActionStartAIAssistantParams::Participant::OnHangup::OrSymbol
              )
            )
          end
          attr_reader :on_hangup

          sig do
            params(
              on_hangup:
                Telnyx::Calls::ActionStartAIAssistantParams::Participant::OnHangup::OrSymbol
            ).void
          end
          attr_writer :on_hangup

          sig do
            params(
              id: String,
              role:
                Telnyx::Calls::ActionStartAIAssistantParams::Participant::Role::OrSymbol,
              name: String,
              on_hangup:
                Telnyx::Calls::ActionStartAIAssistantParams::Participant::OnHangup::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The call_control_id of the participant to add to the conversation.
            id:,
            # The role of the participant in the conversation.
            role:,
            # Display name for the participant.
            name: nil,
            # Determines what happens to the conversation when this participant hangs up.
            on_hangup: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                role:
                  Telnyx::Calls::ActionStartAIAssistantParams::Participant::Role::OrSymbol,
                name: String,
                on_hangup:
                  Telnyx::Calls::ActionStartAIAssistantParams::Participant::OnHangup::OrSymbol
              }
            )
          end
          def to_hash
          end

          # The role of the participant in the conversation.
          module Role
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::ActionStartAIAssistantParams::Participant::Role
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USER =
              T.let(
                :user,
                Telnyx::Calls::ActionStartAIAssistantParams::Participant::Role::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionStartAIAssistantParams::Participant::Role::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Determines what happens to the conversation when this participant hangs up.
          module OnHangup
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::ActionStartAIAssistantParams::Participant::OnHangup
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONTINUE_CONVERSATION =
              T.let(
                :continue_conversation,
                Telnyx::Calls::ActionStartAIAssistantParams::Participant::OnHangup::TaggedSymbol
              )
            END_CONVERSATION =
              T.let(
                :end_conversation,
                Telnyx::Calls::ActionStartAIAssistantParams::Participant::OnHangup::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionStartAIAssistantParams::Participant::OnHangup::TaggedSymbol
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
                Telnyx::Calls::AwsVoiceSettings,
                Telnyx::AzureVoiceSettings,
                Telnyx::RimeVoiceSettings,
                Telnyx::ResembleVoiceSettings
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
