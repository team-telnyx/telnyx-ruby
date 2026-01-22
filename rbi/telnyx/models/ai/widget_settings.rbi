# typed: strong

module Telnyx
  module Models
    module AI
      class WidgetSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::WidgetSettings, Telnyx::Internal::AnyHash)
          end

        # Text displayed while the agent is processing.
        sig { returns(T.nilable(String)) }
        attr_reader :agent_thinking_text

        sig { params(agent_thinking_text: String).void }
        attr_writer :agent_thinking_text

        sig { returns(T.nilable(Telnyx::AI::AudioVisualizerConfig)) }
        attr_reader :audio_visualizer_config

        sig do
          params(
            audio_visualizer_config: Telnyx::AI::AudioVisualizerConfig::OrHash
          ).void
        end
        attr_writer :audio_visualizer_config

        # The default state of the widget.
        sig do
          returns(T.nilable(Telnyx::AI::WidgetSettings::DefaultState::OrSymbol))
        end
        attr_reader :default_state

        sig do
          params(
            default_state: Telnyx::AI::WidgetSettings::DefaultState::OrSymbol
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
          returns(T.nilable(Telnyx::AI::WidgetSettings::Position::OrSymbol))
        end
        attr_reader :position

        sig do
          params(position: Telnyx::AI::WidgetSettings::Position::OrSymbol).void
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
        sig { returns(T.nilable(Telnyx::AI::WidgetSettings::Theme::OrSymbol)) }
        attr_reader :theme

        sig { params(theme: Telnyx::AI::WidgetSettings::Theme::OrSymbol).void }
        attr_writer :theme

        # URL to view conversation history.
        sig { returns(T.nilable(String)) }
        attr_accessor :view_history_url

        # Configuration settings for the assistant's web widget.
        sig do
          params(
            agent_thinking_text: String,
            audio_visualizer_config: Telnyx::AI::AudioVisualizerConfig::OrHash,
            default_state: Telnyx::AI::WidgetSettings::DefaultState::OrSymbol,
            give_feedback_url: T.nilable(String),
            logo_icon_url: T.nilable(String),
            position: Telnyx::AI::WidgetSettings::Position::OrSymbol,
            report_issue_url: T.nilable(String),
            speak_to_interrupt_text: String,
            start_call_text: String,
            theme: Telnyx::AI::WidgetSettings::Theme::OrSymbol,
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
              audio_visualizer_config: Telnyx::AI::AudioVisualizerConfig,
              default_state: Telnyx::AI::WidgetSettings::DefaultState::OrSymbol,
              give_feedback_url: T.nilable(String),
              logo_icon_url: T.nilable(String),
              position: Telnyx::AI::WidgetSettings::Position::OrSymbol,
              report_issue_url: T.nilable(String),
              speak_to_interrupt_text: String,
              start_call_text: String,
              theme: Telnyx::AI::WidgetSettings::Theme::OrSymbol,
              view_history_url: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # The default state of the widget.
        module DefaultState
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::WidgetSettings::DefaultState)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Telnyx::AI::WidgetSettings::DefaultState::TaggedSymbol
            )
          COLLAPSED =
            T.let(
              :collapsed,
              Telnyx::AI::WidgetSettings::DefaultState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::AI::WidgetSettings::DefaultState::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # The positioning style for the widget.
        module Position
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::WidgetSettings::Position) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FIXED =
            T.let(:fixed, Telnyx::AI::WidgetSettings::Position::TaggedSymbol)
          STATIC =
            T.let(:static, Telnyx::AI::WidgetSettings::Position::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::WidgetSettings::Position::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # The visual theme for the widget.
        module Theme
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::WidgetSettings::Theme) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIGHT = T.let(:light, Telnyx::AI::WidgetSettings::Theme::TaggedSymbol)
          DARK = T.let(:dark, Telnyx::AI::WidgetSettings::Theme::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::WidgetSettings::Theme::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
