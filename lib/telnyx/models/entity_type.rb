# frozen_string_literal: true

module Telnyx
  module Models
    # Entity type behind the brand. This is the form of business establishment.
    module EntityType
      extend Telnyx::Internal::Type::Enum

      PRIVATE_PROFIT = :PRIVATE_PROFIT
      PUBLIC_PROFIT = :PUBLIC_PROFIT
      NON_PROFIT = :NON_PROFIT
      GOVERNMENT = :GOVERNMENT

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
