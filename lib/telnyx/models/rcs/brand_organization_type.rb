# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      module BrandOrganizationType
        extend Telnyx::Internal::Type::Enum

        PRIVATE_PROFIT = :PRIVATE_PROFIT
        PUBLIC_PROFIT = :PUBLIC_PROFIT
        NON_PROFIT = :NON_PROFIT
        GOVERNMENT = :GOVERNMENT
        UNKNOWN = :UNKNOWN

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
