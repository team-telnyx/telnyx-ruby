# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      module BudgetDuration
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::LlmTokenGateway::BudgetDuration)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUDGET_DURATION_1D =
          T.let(:"1d", Telnyx::LlmTokenGateway::BudgetDuration::TaggedSymbol)
        BUDGET_DURATION_7D =
          T.let(:"7d", Telnyx::LlmTokenGateway::BudgetDuration::TaggedSymbol)
        BUDGET_DURATION_30D =
          T.let(:"30d", Telnyx::LlmTokenGateway::BudgetDuration::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::LlmTokenGateway::BudgetDuration::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
