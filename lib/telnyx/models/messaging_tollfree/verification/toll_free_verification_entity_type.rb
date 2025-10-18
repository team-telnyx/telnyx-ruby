# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        # Business entity classification
        module TollFreeVerificationEntityType
          extend Telnyx::Internal::Type::Enum

          SOLE_PROPRIETOR = :SOLE_PROPRIETOR
          PRIVATE_PROFIT = :PRIVATE_PROFIT
          PUBLIC_PROFIT = :PUBLIC_PROFIT
          NON_PROFIT = :NON_PROFIT
          GOVERNMENT = :GOVERNMENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
