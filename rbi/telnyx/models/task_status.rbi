# typed: strong

module Telnyx
  module Models
    module TaskStatus
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::TaskStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING = T.let(:pending, Telnyx::TaskStatus::TaggedSymbol)
      STARTING = T.let(:starting, Telnyx::TaskStatus::TaggedSymbol)
      RUNNING = T.let(:running, Telnyx::TaskStatus::TaggedSymbol)
      COMPLETED = T.let(:completed, Telnyx::TaskStatus::TaggedSymbol)
      FAILED = T.let(:failed, Telnyx::TaskStatus::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::TaskStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
