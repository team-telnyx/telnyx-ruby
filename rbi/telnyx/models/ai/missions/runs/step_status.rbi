# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          module StepStatus
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::AI::Missions::Runs::StepStatus)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::AI::Missions::Runs::StepStatus::TaggedSymbol
              )
            IN_PROGRESS =
              T.let(
                :in_progress,
                Telnyx::AI::Missions::Runs::StepStatus::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::AI::Missions::Runs::StepStatus::TaggedSymbol
              )
            SKIPPED =
              T.let(
                :skipped,
                Telnyx::AI::Missions::Runs::StepStatus::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::AI::Missions::Runs::StepStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[Telnyx::AI::Missions::Runs::StepStatus::TaggedSymbol]
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
