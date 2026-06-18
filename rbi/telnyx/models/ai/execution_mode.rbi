# typed: strong

module Telnyx
  module Models
    module AI
      module ExecutionMode
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::AI::ExecutionMode) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXTERNAL = T.let(:external, Telnyx::AI::ExecutionMode::TaggedSymbol)
        MANAGED = T.let(:managed, Telnyx::AI::ExecutionMode::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::AI::ExecutionMode::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
