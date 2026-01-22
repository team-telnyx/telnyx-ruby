# typed: strong

module Telnyx
  module Models
    module AI
      UpdateAssistant = Assistants::UpdateAssistant

      module Assistants
        class UpdateAssistant < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::UpdateAssistant,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Map of dynamic variables and their default values
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :dynamic_variables

          sig { params(dynamic_variables: T::Hash[Symbol, T.anything]).void }
          attr_writer :dynamic_variables

          # If the dynamic_variables_webhook_url is set for the assistant, we will send a
          # request at the start of the conversation. See our
          # [guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          # for more information.
          sig { returns(T.nilable(String)) }
          attr_reader :dynamic_variables_webhook_url

          sig { params(dynamic_variables_webhook_url: String).void }
          attr_writer :dynamic_variables_webhook_url

          sig do
            returns(T.nilable(T::Array[Telnyx::AI::EnabledFeatures::OrSymbol]))
          end
          attr_reader :enabled_features

          sig do
            params(
              enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol]
            ).void
          end
          attr_writer :enabled_features

          # Text that the assistant will use to start the conversation. This may be
          # templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
          # Use an empty string to have the assistant wait for the user to speak first. Use
          # the special value `<assistant-speaks-first-with-model-generated-message>` to
          # have the assistant generate the greeting based on the system instructions.
          sig { returns(T.nilable(String)) }
          attr_reader :greeting

          sig { params(greeting: String).void }
          attr_writer :greeting

          sig { returns(T.nilable(Telnyx::AI::InsightSettings)) }
          attr_reader :insight_settings

          sig do
            params(insight_settings: Telnyx::AI::InsightSettings::OrHash).void
          end
          attr_writer :insight_settings

          # System instructions for the assistant. These may be templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          sig { returns(T.nilable(String)) }
          attr_reader :instructions

          sig { params(instructions: String).void }
          attr_writer :instructions

          # This is only needed when using third-party inference providers. The `identifier`
          # for an integration secret
          # [/v2/integration_secrets](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
          # that refers to your LLM provider's API key. Warning: Free plans are unlikely to
          # work with this integration.
          sig { returns(T.nilable(String)) }
          attr_reader :llm_api_key_ref

          sig { params(llm_api_key_ref: String).void }
          attr_writer :llm_api_key_ref

          sig { returns(T.nilable(Telnyx::AI::MessagingSettings)) }
          attr_reader :messaging_settings

          sig do
            params(
              messaging_settings: Telnyx::AI::MessagingSettings::OrHash
            ).void
          end
          attr_writer :messaging_settings

          # ID of the model to use. You can use the
          # [Get models API](https://developers.telnyx.com/api-reference/chat/get-available-models)
          # to see all of your available models,
          sig { returns(T.nilable(String)) }
          attr_reader :model

          sig { params(model: String).void }
          attr_writer :model

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(Telnyx::AI::PrivacySettings)) }
          attr_reader :privacy_settings

          sig do
            params(privacy_settings: Telnyx::AI::PrivacySettings::OrHash).void
          end
          attr_writer :privacy_settings

          sig { returns(T.nilable(Telnyx::AI::TelephonySettings)) }
          attr_reader :telephony_settings

          sig do
            params(
              telephony_settings: Telnyx::AI::TelephonySettings::OrHash
            ).void
          end
          attr_writer :telephony_settings

          # The tools that the assistant can use. These may be templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          sig do
            returns(
              T.nilable(
                T::Array[
                  T.any(
                    Telnyx::AI::AssistantTool::Webhook,
                    Telnyx::AI::RetrievalTool,
                    Telnyx::AI::AssistantTool::Handoff,
                    Telnyx::AI::HangupTool,
                    Telnyx::AI::AssistantTool::Transfer,
                    Telnyx::AI::AssistantTool::Refer,
                    Telnyx::AI::AssistantTool::SendDtmf,
                    Telnyx::AI::AssistantTool::SendMessage
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
                    Telnyx::AI::AssistantTool::Webhook::OrHash,
                    Telnyx::AI::RetrievalTool::OrHash,
                    Telnyx::AI::AssistantTool::Handoff::OrHash,
                    Telnyx::AI::HangupTool::OrHash,
                    Telnyx::AI::AssistantTool::Transfer::OrHash,
                    Telnyx::AI::AssistantTool::Refer::OrHash,
                    Telnyx::AI::AssistantTool::SendDtmf::OrHash,
                    Telnyx::AI::AssistantTool::SendMessage::OrHash
                  )
                ]
            ).void
          end
          attr_writer :tools

          sig { returns(T.nilable(Telnyx::AI::TranscriptionSettings)) }
          attr_reader :transcription

          sig do
            params(
              transcription: Telnyx::AI::TranscriptionSettings::OrHash
            ).void
          end
          attr_writer :transcription

          sig { returns(T.nilable(Telnyx::AI::VoiceSettings)) }
          attr_reader :voice_settings

          sig { params(voice_settings: Telnyx::AI::VoiceSettings::OrHash).void }
          attr_writer :voice_settings

          # Configuration settings for the assistant's web widget.
          sig do
            returns(
              T.nilable(Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings)
            )
          end
          attr_reader :widget_settings

          sig do
            params(
              widget_settings:
                Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::OrHash
            ).void
          end
          attr_writer :widget_settings

          sig do
            params(
              description: String,
              dynamic_variables: T::Hash[Symbol, T.anything],
              dynamic_variables_webhook_url: String,
              enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol],
              greeting: String,
              insight_settings: Telnyx::AI::InsightSettings::OrHash,
              instructions: String,
              llm_api_key_ref: String,
              messaging_settings: Telnyx::AI::MessagingSettings::OrHash,
              model: String,
              name: String,
              privacy_settings: Telnyx::AI::PrivacySettings::OrHash,
              telephony_settings: Telnyx::AI::TelephonySettings::OrHash,
              tools:
                T::Array[
                  T.any(
                    Telnyx::AI::AssistantTool::Webhook::OrHash,
                    Telnyx::AI::RetrievalTool::OrHash,
                    Telnyx::AI::AssistantTool::Handoff::OrHash,
                    Telnyx::AI::HangupTool::OrHash,
                    Telnyx::AI::AssistantTool::Transfer::OrHash,
                    Telnyx::AI::AssistantTool::Refer::OrHash,
                    Telnyx::AI::AssistantTool::SendDtmf::OrHash,
                    Telnyx::AI::AssistantTool::SendMessage::OrHash
                  )
                ],
              transcription: Telnyx::AI::TranscriptionSettings::OrHash,
              voice_settings: Telnyx::AI::VoiceSettings::OrHash,
              widget_settings:
                Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            description: nil,
            # Map of dynamic variables and their default values
            dynamic_variables: nil,
            # If the dynamic_variables_webhook_url is set for the assistant, we will send a
            # request at the start of the conversation. See our
            # [guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
            # for more information.
            dynamic_variables_webhook_url: nil,
            enabled_features: nil,
            # Text that the assistant will use to start the conversation. This may be
            # templated with
            # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
            # Use an empty string to have the assistant wait for the user to speak first. Use
            # the special value `<assistant-speaks-first-with-model-generated-message>` to
            # have the assistant generate the greeting based on the system instructions.
            greeting: nil,
            insight_settings: nil,
            # System instructions for the assistant. These may be templated with
            # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
            instructions: nil,
            # This is only needed when using third-party inference providers. The `identifier`
            # for an integration secret
            # [/v2/integration_secrets](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
            # that refers to your LLM provider's API key. Warning: Free plans are unlikely to
            # work with this integration.
            llm_api_key_ref: nil,
            messaging_settings: nil,
            # ID of the model to use. You can use the
            # [Get models API](https://developers.telnyx.com/api-reference/chat/get-available-models)
            # to see all of your available models,
            model: nil,
            name: nil,
            privacy_settings: nil,
            telephony_settings: nil,
            # The tools that the assistant can use. These may be templated with
            # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
            tools: nil,
            transcription: nil,
            voice_settings: nil,
            # Configuration settings for the assistant's web widget.
            widget_settings: nil
          )
          end

          sig do
            override.returns(
              {
                description: String,
                dynamic_variables: T::Hash[Symbol, T.anything],
                dynamic_variables_webhook_url: String,
                enabled_features:
                  T::Array[Telnyx::AI::EnabledFeatures::OrSymbol],
                greeting: String,
                insight_settings: Telnyx::AI::InsightSettings,
                instructions: String,
                llm_api_key_ref: String,
                messaging_settings: Telnyx::AI::MessagingSettings,
                model: String,
                name: String,
                privacy_settings: Telnyx::AI::PrivacySettings,
                telephony_settings: Telnyx::AI::TelephonySettings,
                tools:
                  T::Array[
                    T.any(
                      Telnyx::AI::AssistantTool::Webhook,
                      Telnyx::AI::RetrievalTool,
                      Telnyx::AI::AssistantTool::Handoff,
                      Telnyx::AI::HangupTool,
                      Telnyx::AI::AssistantTool::Transfer,
                      Telnyx::AI::AssistantTool::Refer,
                      Telnyx::AI::AssistantTool::SendDtmf,
                      Telnyx::AI::AssistantTool::SendMessage
                    )
                  ],
                transcription: Telnyx::AI::TranscriptionSettings,
                voice_settings: Telnyx::AI::VoiceSettings,
                widget_settings:
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings
              }
            )
          end
          def to_hash
          end

          class WidgetSettings < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings,
                  Telnyx::Internal::AnyHash
                )
              end

            # Text displayed while the agent is processing.
            sig { returns(T.nilable(String)) }
            attr_reader :agent_thinking_text

            sig { params(agent_thinking_text: String).void }
            attr_writer :agent_thinking_text

            sig do
              returns(
                T.nilable(
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::AudioVisualizerConfig
                )
              )
            end
            attr_reader :audio_visualizer_config

            sig do
              params(
                audio_visualizer_config:
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::AudioVisualizerConfig::OrHash
              ).void
            end
            attr_writer :audio_visualizer_config

            # The default state of the widget.
            sig do
              returns(
                T.nilable(
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::DefaultState::OrSymbol
                )
              )
            end
            attr_reader :default_state

            sig do
              params(
                default_state:
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::DefaultState::OrSymbol
              ).void
            end
            attr_writer :default_state

            # URL for users to give feedback.
            sig { returns(T.nilable(String)) }
            attr_accessor :give_feedback_url

            # URL to a custom logo icon for the widget.
            sig { returns(T.nilable(String)) }
            attr_accessor :logo_icon_url

            # The positioning style for the widget.
            sig do
              returns(
                T.nilable(
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::Position::OrSymbol
                )
              )
            end
            attr_reader :position

            sig do
              params(
                position:
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::Position::OrSymbol
              ).void
            end
            attr_writer :position

            # URL for users to report issues.
            sig { returns(T.nilable(String)) }
            attr_accessor :report_issue_url

            # Text prompting users to speak to interrupt.
            sig { returns(T.nilable(String)) }
            attr_reader :speak_to_interrupt_text

            sig { params(speak_to_interrupt_text: String).void }
            attr_writer :speak_to_interrupt_text

            # Custom text displayed on the start call button.
            sig { returns(T.nilable(String)) }
            attr_reader :start_call_text

            sig { params(start_call_text: String).void }
            attr_writer :start_call_text

            # The visual theme for the widget.
            sig do
              returns(
                T.nilable(
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::Theme::OrSymbol
                )
              )
            end
            attr_reader :theme

            sig do
              params(
                theme:
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::Theme::OrSymbol
              ).void
            end
            attr_writer :theme

            # URL to view conversation history.
            sig { returns(T.nilable(String)) }
            attr_accessor :view_history_url

            # Configuration settings for the assistant's web widget.
            sig do
              params(
                agent_thinking_text: String,
                audio_visualizer_config:
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::AudioVisualizerConfig::OrHash,
                default_state:
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::DefaultState::OrSymbol,
                give_feedback_url: T.nilable(String),
                logo_icon_url: T.nilable(String),
                position:
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::Position::OrSymbol,
                report_issue_url: T.nilable(String),
                speak_to_interrupt_text: String,
                start_call_text: String,
                theme:
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::Theme::OrSymbol,
                view_history_url: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Text displayed while the agent is processing.
              agent_thinking_text: nil,
              audio_visualizer_config: nil,
              # The default state of the widget.
              default_state: nil,
              # URL for users to give feedback.
              give_feedback_url: nil,
              # URL to a custom logo icon for the widget.
              logo_icon_url: nil,
              # The positioning style for the widget.
              position: nil,
              # URL for users to report issues.
              report_issue_url: nil,
              # Text prompting users to speak to interrupt.
              speak_to_interrupt_text: nil,
              # Custom text displayed on the start call button.
              start_call_text: nil,
              # The visual theme for the widget.
              theme: nil,
              # URL to view conversation history.
              view_history_url: nil
            )
            end

            sig do
              override.returns(
                {
                  agent_thinking_text: String,
                  audio_visualizer_config:
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::AudioVisualizerConfig,
                  default_state:
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::DefaultState::OrSymbol,
                  give_feedback_url: T.nilable(String),
                  logo_icon_url: T.nilable(String),
                  position:
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::Position::OrSymbol,
                  report_issue_url: T.nilable(String),
                  speak_to_interrupt_text: String,
                  start_call_text: String,
                  theme:
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::Theme::OrSymbol,
                  view_history_url: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            class AudioVisualizerConfig < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::AudioVisualizerConfig,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The color theme for the audio visualizer.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::AudioVisualizerConfig::Color::OrSymbol
                  )
                )
              end
              attr_reader :color

              sig do
                params(
                  color:
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::AudioVisualizerConfig::Color::OrSymbol
                ).void
              end
              attr_writer :color

              # The preset style for the audio visualizer.
              sig { returns(T.nilable(String)) }
              attr_reader :preset

              sig { params(preset: String).void }
              attr_writer :preset

              sig do
                params(
                  color:
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::AudioVisualizerConfig::Color::OrSymbol,
                  preset: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The color theme for the audio visualizer.
                color: nil,
                # The preset style for the audio visualizer.
                preset: nil
              )
              end

              sig do
                override.returns(
                  {
                    color:
                      Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::AudioVisualizerConfig::Color::OrSymbol,
                    preset: String
                  }
                )
              end
              def to_hash
              end

              # The color theme for the audio visualizer.
              module Color
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::AudioVisualizerConfig::Color
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                VERDANT =
                  T.let(
                    :verdant,
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::AudioVisualizerConfig::Color::TaggedSymbol
                  )
                TWILIGHT =
                  T.let(
                    :twilight,
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::AudioVisualizerConfig::Color::TaggedSymbol
                  )
                BLOOM =
                  T.let(
                    :bloom,
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::AudioVisualizerConfig::Color::TaggedSymbol
                  )
                MYSTIC =
                  T.let(
                    :mystic,
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::AudioVisualizerConfig::Color::TaggedSymbol
                  )
                FLARE =
                  T.let(
                    :flare,
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::AudioVisualizerConfig::Color::TaggedSymbol
                  )
                GLACIER =
                  T.let(
                    :glacier,
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::AudioVisualizerConfig::Color::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::AudioVisualizerConfig::Color::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # The default state of the widget.
            module DefaultState
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::DefaultState
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EXPANDED =
                T.let(
                  :expanded,
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::DefaultState::TaggedSymbol
                )
              COLLAPSED =
                T.let(
                  :collapsed,
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::DefaultState::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::DefaultState::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The positioning style for the widget.
            module Position
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::Position
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FIXED =
                T.let(
                  :fixed,
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::Position::TaggedSymbol
                )
              STATIC =
                T.let(
                  :static,
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::Position::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::Position::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The visual theme for the widget.
            module Theme
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::Theme
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              LIGHT =
                T.let(
                  :light,
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::Theme::TaggedSymbol
                )
              DARK =
                T.let(
                  :dark,
                  Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::Theme::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::Theme::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
