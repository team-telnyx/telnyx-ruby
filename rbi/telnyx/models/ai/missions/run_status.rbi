# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        module RunStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::Missions::RunStatus) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(:pending, Telnyx::AI::Missions::RunStatus::TaggedSymbol)
          RUNNING =
            T.let(:running, Telnyx::AI::Missions::RunStatus::TaggedSymbol)
          PAUSED = T.let(:paused, Telnyx::AI::Missions::RunStatus::TaggedSymbol)
          SUCCEEDED =
            T.let(:succeeded, Telnyx::AI::Missions::RunStatus::TaggedSymbol)
          FAILED = T.let(:failed, Telnyx::AI::Missions::RunStatus::TaggedSymbol)
          CANCELLED =
            T.let(:cancelled, Telnyx::AI::Missions::RunStatus::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::Missions::RunStatus::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
