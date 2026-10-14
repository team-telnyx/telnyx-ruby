# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      module BudgetDuration
        extend Telnyx::Internal::Type::Enum

        BUDGET_DURATION_1D = :"1d"
        BUDGET_DURATION_7D = :"7d"
        BUDGET_DURATION_30D = :"30d"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
