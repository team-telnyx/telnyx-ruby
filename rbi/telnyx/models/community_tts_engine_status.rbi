# typed: strong

module Telnyx
  module Models
    # Whether the engine can serve traffic right now, independent of `visibility` and
    # `review_status`. `draft`: not yet approved (new and awaiting its first review,
    # rejected and awaiting a fix, or approved earlier and awaiting re-review after a
    # review-sensitive change). `active`: serving traffic. `disabled`: owner-paused,
    # reversible via `enable`. `suspended`: paused by Telnyx (repeated failures of a
    # public engine, or an abuse action); the owner cannot clear this by calling
    # `enable`, and Telnyx can reinstate it.
    module CommunityTtsEngineStatus
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Telnyx::CommunityTtsEngineStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DRAFT = T.let(:draft, Telnyx::CommunityTtsEngineStatus::TaggedSymbol)
      ACTIVE = T.let(:active, Telnyx::CommunityTtsEngineStatus::TaggedSymbol)
      DISABLED =
        T.let(:disabled, Telnyx::CommunityTtsEngineStatus::TaggedSymbol)
      SUSPENDED =
        T.let(:suspended, Telnyx::CommunityTtsEngineStatus::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Telnyx::CommunityTtsEngineStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
