# typed: strong

module Telnyx
  module Models
    module AI
      # Status of an embeddings task.
      module BackgroundTaskStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::AI::BackgroundTaskStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUEUED = T.let(:queued, Telnyx::AI::BackgroundTaskStatus::TaggedSymbol)
        PROCESSING =
          T.let(:processing, Telnyx::AI::BackgroundTaskStatus::TaggedSymbol)
        SUCCESS =
          T.let(:success, Telnyx::AI::BackgroundTaskStatus::TaggedSymbol)
        FAILURE =
          T.let(:failure, Telnyx::AI::BackgroundTaskStatus::TaggedSymbol)
        PARTIAL_SUCCESS =
          T.let(
            :partial_success,
            Telnyx::AI::BackgroundTaskStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::AI::BackgroundTaskStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
