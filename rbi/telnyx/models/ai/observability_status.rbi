# typed: strong

module Telnyx
  module Models
    module AI
      module ObservabilityStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::AI::ObservabilityStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED = T.let(:enabled, Telnyx::AI::ObservabilityStatus::TaggedSymbol)
        DISABLED =
          T.let(:disabled, Telnyx::AI::ObservabilityStatus::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::AI::ObservabilityStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
