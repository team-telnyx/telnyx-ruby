# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      module TaskStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Messaging10dlc::TaskStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, Telnyx::Messaging10dlc::TaskStatus::TaggedSymbol)
        STARTING =
          T.let(:starting, Telnyx::Messaging10dlc::TaskStatus::TaggedSymbol)
        RUNNING =
          T.let(:running, Telnyx::Messaging10dlc::TaskStatus::TaggedSymbol)
        COMPLETED =
          T.let(:completed, Telnyx::Messaging10dlc::TaskStatus::TaggedSymbol)
        FAILED =
          T.let(:failed, Telnyx::Messaging10dlc::TaskStatus::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::Messaging10dlc::TaskStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
