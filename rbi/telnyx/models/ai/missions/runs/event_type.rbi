# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          module EventType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::AI::Missions::Runs::EventType)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STATUS_CHANGE =
              T.let(
                :status_change,
                Telnyx::AI::Missions::Runs::EventType::TaggedSymbol
              )
            STEP_STARTED =
              T.let(
                :step_started,
                Telnyx::AI::Missions::Runs::EventType::TaggedSymbol
              )
            STEP_COMPLETED =
              T.let(
                :step_completed,
                Telnyx::AI::Missions::Runs::EventType::TaggedSymbol
              )
            STEP_FAILED =
              T.let(
                :step_failed,
                Telnyx::AI::Missions::Runs::EventType::TaggedSymbol
              )
            TOOL_CALL =
              T.let(
                :tool_call,
                Telnyx::AI::Missions::Runs::EventType::TaggedSymbol
              )
            TOOL_RESULT =
              T.let(
                :tool_result,
                Telnyx::AI::Missions::Runs::EventType::TaggedSymbol
              )
            MESSAGE =
              T.let(
                :message,
                Telnyx::AI::Missions::Runs::EventType::TaggedSymbol
              )
            ERROR =
              T.let(:error, Telnyx::AI::Missions::Runs::EventType::TaggedSymbol)
            CUSTOM =
              T.let(
                :custom,
                Telnyx::AI::Missions::Runs::EventType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[Telnyx::AI::Missions::Runs::EventType::TaggedSymbol]
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
