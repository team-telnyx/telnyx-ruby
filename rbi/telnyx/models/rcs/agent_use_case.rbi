# typed: strong

module Telnyx
  module Models
    module Rcs
      module AgentUseCase
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::Rcs::AgentUseCase) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MULTI_USE = T.let(:MULTI_USE, Telnyx::Rcs::AgentUseCase::TaggedSymbol)
        PROMOTIONAL =
          T.let(:PROMOTIONAL, Telnyx::Rcs::AgentUseCase::TaggedSymbol)
        TRANSACTIONAL =
          T.let(:TRANSACTIONAL, Telnyx::Rcs::AgentUseCase::TaggedSymbol)
        OTP = T.let(:OTP, Telnyx::Rcs::AgentUseCase::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::Rcs::AgentUseCase::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
