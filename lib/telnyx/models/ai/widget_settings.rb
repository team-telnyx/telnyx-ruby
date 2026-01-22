# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class WidgetSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute agent_thinking_text
        #   Text displayed while the agent is processing.
        #
        #   @return [String, nil]
        optional :agent_thinking_text, String

        # @!attribute audio_visualizer_config
        #
        #   @return [Telnyx::Models::AI::AudioVisualizerConfig, nil]
        optional :audio_visualizer_config, -> { Telnyx::AI::AudioVisualizerConfig }

        # @!attribute default_state
        #   The default state of the widget.
        #
        #   @return [Symbol, Telnyx::Models::AI::WidgetSettings::DefaultState, nil]
        optional :default_state, enum: -> { Telnyx::AI::WidgetSettings::DefaultState }

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
        #   @return [Symbol, Telnyx::Models::AI::WidgetSettings::Position, nil]
        optional :position, enum: -> { Telnyx::AI::WidgetSettings::Position }

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
        #   @return [Symbol, Telnyx::Models::AI::WidgetSettings::Theme, nil]
        optional :theme, enum: -> { Telnyx::AI::WidgetSettings::Theme }

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
        #   @param audio_visualizer_config [Telnyx::Models::AI::AudioVisualizerConfig]
        #
        #   @param default_state [Symbol, Telnyx::Models::AI::WidgetSettings::DefaultState] The default state of the widget.
        #
        #   @param give_feedback_url [String, nil] URL for users to give feedback.
        #
        #   @param logo_icon_url [String, nil] URL to a custom logo icon for the widget.
        #
        #   @param position [Symbol, Telnyx::Models::AI::WidgetSettings::Position] The positioning style for the widget.
        #
        #   @param report_issue_url [String, nil] URL for users to report issues.
        #
        #   @param speak_to_interrupt_text [String] Text prompting users to speak to interrupt.
        #
        #   @param start_call_text [String] Custom text displayed on the start call button.
        #
        #   @param theme [Symbol, Telnyx::Models::AI::WidgetSettings::Theme] The visual theme for the widget.
        #
        #   @param view_history_url [String, nil] URL to view conversation history.

        # The default state of the widget.
        #
        # @see Telnyx::Models::AI::WidgetSettings#default_state
        module DefaultState
          extend Telnyx::Internal::Type::Enum

          EXPANDED = :expanded
          COLLAPSED = :collapsed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The positioning style for the widget.
        #
        # @see Telnyx::Models::AI::WidgetSettings#position
        module Position
          extend Telnyx::Internal::Type::Enum

          FIXED = :fixed
          STATIC = :static

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The visual theme for the widget.
        #
        # @see Telnyx::Models::AI::WidgetSettings#theme
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
