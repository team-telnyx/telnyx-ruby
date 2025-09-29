# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        module EventStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::Assistants::EventStatus) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(:pending, Telnyx::AI::Assistants::EventStatus::TaggedSymbol)
          IN_PROGRESS =
            T.let(
              :in_progress,
              Telnyx::AI::Assistants::EventStatus::TaggedSymbol
            )
          COMPLETED =
            T.let(:completed, Telnyx::AI::Assistants::EventStatus::TaggedSymbol)
          FAILED =
            T.let(:failed, Telnyx::AI::Assistants::EventStatus::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::Assistants::EventStatus::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
