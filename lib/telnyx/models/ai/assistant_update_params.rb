# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#update
      class AssistantUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute dynamic_variables
        #   Map of dynamic variables and their default values
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :dynamic_variables, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute dynamic_variables_webhook_url
        #   If the dynamic_variables_webhook_url is set for the assistant, we will send a
        #   request at the start of the conversation. See our
        #   [guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        #   for more information.
        #
        #   @return [String, nil]
        optional :dynamic_variables_webhook_url, String

        # @!attribute enabled_features
        #
        #   @return [Array<Symbol, Telnyx::Models::AI::EnabledFeatures>, nil]
        optional :enabled_features, -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::AI::EnabledFeatures] }

        # @!attribute greeting
        #   Text that the assistant will use to start the conversation. This may be
        #   templated with
        #   [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
        #   Use an empty string to have the assistant wait for the user to speak first. Use
        #   the special value `<assistant-speaks-first-with-model-generated-message>` to
        #   have the assistant generate the greeting based on the system instructions.
        #
        #   @return [String, nil]
        optional :greeting, String

        # @!attribute insight_settings
        #
        #   @return [Telnyx::Models::AI::InsightSettings, nil]
        optional :insight_settings, -> { Telnyx::AI::InsightSettings }

        # @!attribute instructions
        #   System instructions for the assistant. These may be templated with
        #   [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        #
        #   @return [String, nil]
        optional :instructions, String

        # @!attribute llm_api_key_ref
        #   This is only needed when using third-party inference providers. The `identifier`
        #   for an integration secret
        #   [/v2/integration_secrets](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
        #   that refers to your LLM provider's API key. Warning: Free plans are unlikely to
        #   work with this integration.
        #
        #   @return [String, nil]
        optional :llm_api_key_ref, String

        # @!attribute messaging_settings
        #
        #   @return [Telnyx::Models::AI::MessagingSettings, nil]
        optional :messaging_settings, -> { Telnyx::AI::MessagingSettings }

        # @!attribute model
        #   ID of the model to use. You can use the
        #   [Get models API](https://developers.telnyx.com/api-reference/chat/get-available-models)
        #   to see all of your available models,
        #
        #   @return [String, nil]
        optional :model, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute privacy_settings
        #
        #   @return [Telnyx::Models::AI::PrivacySettings, nil]
        optional :privacy_settings, -> { Telnyx::AI::PrivacySettings }

        # @!attribute promote_to_main
        #   Indicates whether the assistant should be promoted to the main version. Defaults
        #   to true.
        #
        #   @return [Boolean, nil]
        optional :promote_to_main, Telnyx::Internal::Type::Boolean

        # @!attribute telephony_settings
        #
        #   @return [Telnyx::Models::AI::TelephonySettings, nil]
        optional :telephony_settings, -> { Telnyx::AI::TelephonySettings }

        # @!attribute tools
        #   The tools that the assistant can use. These may be templated with
        #   [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        #
        #   @return [Array<Telnyx::Models::AI::AssistantTool::Webhook, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::Handoff, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::AssistantTool::Transfer, Telnyx::Models::AI::AssistantTool::Refer, Telnyx::Models::AI::AssistantTool::SendDtmf, Telnyx::Models::AI::AssistantTool::SendMessage>, nil]
        optional :tools, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::AssistantTool] }

        # @!attribute transcription
        #
        #   @return [Telnyx::Models::AI::TranscriptionSettings, nil]
        optional :transcription, -> { Telnyx::AI::TranscriptionSettings }

        # @!attribute voice_settings
        #
        #   @return [Telnyx::Models::AI::VoiceSettings, nil]
        optional :voice_settings, -> { Telnyx::AI::VoiceSettings }

        # @!attribute widget_settings
        #   Configuration settings for the assistant's web widget.
        #
        #   @return [Telnyx::Models::AI::AssistantUpdateParams::WidgetSettings, nil]
        optional :widget_settings, -> { Telnyx::AI::AssistantUpdateParams::WidgetSettings }

        # @!method initialize(description: nil, dynamic_variables: nil, dynamic_variables_webhook_url: nil, enabled_features: nil, greeting: nil, insight_settings: nil, instructions: nil, llm_api_key_ref: nil, messaging_settings: nil, model: nil, name: nil, privacy_settings: nil, promote_to_main: nil, telephony_settings: nil, tools: nil, transcription: nil, voice_settings: nil, widget_settings: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AssistantUpdateParams} for more details.
        #
        #   @param description [String]
        #
        #   @param dynamic_variables [Hash{Symbol=>Object}] Map of dynamic variables and their default values
        #
        #   @param dynamic_variables_webhook_url [String] If the dynamic_variables_webhook_url is set for the assistant, we will send a re
        #
        #   @param enabled_features [Array<Symbol, Telnyx::Models::AI::EnabledFeatures>]
        #
        #   @param greeting [String] Text that the assistant will use to start the conversation. This may be template
        #
        #   @param insight_settings [Telnyx::Models::AI::InsightSettings]
        #
        #   @param instructions [String] System instructions for the assistant. These may be templated with [dynamic vari
        #
        #   @param llm_api_key_ref [String] This is only needed when using third-party inference providers. The `identifier`
        #
        #   @param messaging_settings [Telnyx::Models::AI::MessagingSettings]
        #
        #   @param model [String] ID of the model to use. You can use the [Get models API](https://developers.teln
        #
        #   @param name [String]
        #
        #   @param privacy_settings [Telnyx::Models::AI::PrivacySettings]
        #
        #   @param promote_to_main [Boolean] Indicates whether the assistant should be promoted to the main version. Defaults
        #
        #   @param telephony_settings [Telnyx::Models::AI::TelephonySettings]
        #
        #   @param tools [Array<Telnyx::Models::AI::AssistantTool::Webhook, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::Handoff, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::AssistantTool::Transfer, Telnyx::Models::AI::AssistantTool::Refer, Telnyx::Models::AI::AssistantTool::SendDtmf, Telnyx::Models::AI::AssistantTool::SendMessage>] The tools that the assistant can use. These may be templated with [dynamic varia
        #
        #   @param transcription [Telnyx::Models::AI::TranscriptionSettings]
        #
        #   @param voice_settings [Telnyx::Models::AI::VoiceSettings]
        #
        #   @param widget_settings [Telnyx::Models::AI::AssistantUpdateParams::WidgetSettings] Configuration settings for the assistant's web widget.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class WidgetSettings < Telnyx::Internal::Type::BaseModel
          # @!attribute agent_thinking_text
          #   Text displayed while the agent is processing.
          #
          #   @return [String, nil]
          optional :agent_thinking_text, String

          # @!attribute audio_visualizer_config
          #
          #   @return [Telnyx::Models::AI::AssistantUpdateParams::WidgetSettings::AudioVisualizerConfig, nil]
          optional :audio_visualizer_config,
                   -> { Telnyx::AI::AssistantUpdateParams::WidgetSettings::AudioVisualizerConfig }

          # @!attribute default_state
          #   The default state of the widget.
          #
          #   @return [Symbol, Telnyx::Models::AI::AssistantUpdateParams::WidgetSettings::DefaultState, nil]
          optional :default_state, enum: -> { Telnyx::AI::AssistantUpdateParams::WidgetSettings::DefaultState }

          # @!attribute give_feedback_url
          #   URL for users to give feedback.
          #
          #   @return [String, nil]
          optional :give_feedback_url, String, nil?: true

          # @!attribute logo_icon_url
          #   URL to a custom logo icon for the widget.
          #
          #   @return [String, nil]
          optional :logo_icon_url, String, nil?: true

          # @!attribute position
          #   The positioning style for the widget.
          #
          #   @return [Symbol, Telnyx::Models::AI::AssistantUpdateParams::WidgetSettings::Position, nil]
          optional :position, enum: -> { Telnyx::AI::AssistantUpdateParams::WidgetSettings::Position }

          # @!attribute report_issue_url
          #   URL for users to report issues.
          #
          #   @return [String, nil]
          optional :report_issue_url, String, nil?: true

          # @!attribute speak_to_interrupt_text
          #   Text prompting users to speak to interrupt.
          #
          #   @return [String, nil]
          optional :speak_to_interrupt_text, String

          # @!attribute start_call_text
          #   Custom text displayed on the start call button.
          #
          #   @return [String, nil]
          optional :start_call_text, String

          # @!attribute theme
          #   The visual theme for the widget.
          #
          #   @return [Symbol, Telnyx::Models::AI::AssistantUpdateParams::WidgetSettings::Theme, nil]
          optional :theme, enum: -> { Telnyx::AI::AssistantUpdateParams::WidgetSettings::Theme }

          # @!attribute view_history_url
          #   URL to view conversation history.
          #
          #   @return [String, nil]
          optional :view_history_url, String, nil?: true

          # @!method initialize(agent_thinking_text: nil, audio_visualizer_config: nil, default_state: nil, give_feedback_url: nil, logo_icon_url: nil, position: nil, report_issue_url: nil, speak_to_interrupt_text: nil, start_call_text: nil, theme: nil, view_history_url: nil)
          #   Configuration settings for the assistant's web widget.
          #
          #   @param agent_thinking_text [String] Text displayed while the agent is processing.
          #
          #   @param audio_visualizer_config [Telnyx::Models::AI::AssistantUpdateParams::WidgetSettings::AudioVisualizerConfig]
          #
          #   @param default_state [Symbol, Telnyx::Models::AI::AssistantUpdateParams::WidgetSettings::DefaultState] The default state of the widget.
          #
          #   @param give_feedback_url [String, nil] URL for users to give feedback.
          #
          #   @param logo_icon_url [String, nil] URL to a custom logo icon for the widget.
          #
          #   @param position [Symbol, Telnyx::Models::AI::AssistantUpdateParams::WidgetSettings::Position] The positioning style for the widget.
          #
          #   @param report_issue_url [String, nil] URL for users to report issues.
          #
          #   @param speak_to_interrupt_text [String] Text prompting users to speak to interrupt.
          #
          #   @param start_call_text [String] Custom text displayed on the start call button.
          #
          #   @param theme [Symbol, Telnyx::Models::AI::AssistantUpdateParams::WidgetSettings::Theme] The visual theme for the widget.
          #
          #   @param view_history_url [String, nil] URL to view conversation history.

          # @see Telnyx::Models::AI::AssistantUpdateParams::WidgetSettings#audio_visualizer_config
          class AudioVisualizerConfig < Telnyx::Internal::Type::BaseModel
            # @!attribute color
            #   The color theme for the audio visualizer.
            #
            #   @return [Symbol, Telnyx::Models::AI::AssistantUpdateParams::WidgetSettings::AudioVisualizerConfig::Color, nil]
            optional :color,
                     enum: -> { Telnyx::AI::AssistantUpdateParams::WidgetSettings::AudioVisualizerConfig::Color }

            # @!attribute preset
            #   The preset style for the audio visualizer.
            #
            #   @return [String, nil]
            optional :preset, String

            # @!method initialize(color: nil, preset: nil)
            #   @param color [Symbol, Telnyx::Models::AI::AssistantUpdateParams::WidgetSettings::AudioVisualizerConfig::Color] The color theme for the audio visualizer.
            #
            #   @param preset [String] The preset style for the audio visualizer.

            # The color theme for the audio visualizer.
            #
            # @see Telnyx::Models::AI::AssistantUpdateParams::WidgetSettings::AudioVisualizerConfig#color
            module Color
              extend Telnyx::Internal::Type::Enum

              VERDANT = :verdant
              TWILIGHT = :twilight
              BLOOM = :bloom
              MYSTIC = :mystic
              FLARE = :flare
              GLACIER = :glacier

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # The default state of the widget.
          #
          # @see Telnyx::Models::AI::AssistantUpdateParams::WidgetSettings#default_state
          module DefaultState
            extend Telnyx::Internal::Type::Enum

            EXPANDED = :expanded
            COLLAPSED = :collapsed

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The positioning style for the widget.
          #
          # @see Telnyx::Models::AI::AssistantUpdateParams::WidgetSettings#position
          module Position
            extend Telnyx::Internal::Type::Enum

            FIXED = :fixed
            STATIC = :static

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The visual theme for the widget.
          #
          # @see Telnyx::Models::AI::AssistantUpdateParams::WidgetSettings#theme
          module Theme
            extend Telnyx::Internal::Type::Enum

            LIGHT = :light
            DARK = :dark

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
