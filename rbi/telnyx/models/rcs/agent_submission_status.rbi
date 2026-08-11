# typed: strong

module Telnyx
  module Models
    module Rcs
      module AgentSubmissionStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Rcs::AgentSubmissionStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBMITTED =
          T.let(:SUBMITTED, Telnyx::Rcs::AgentSubmissionStatus::TaggedSymbol)
        APPROVED =
          T.let(:APPROVED, Telnyx::Rcs::AgentSubmissionStatus::TaggedSymbol)
        REJECTED =
          T.let(:REJECTED, Telnyx::Rcs::AgentSubmissionStatus::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::Rcs::AgentSubmissionStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
