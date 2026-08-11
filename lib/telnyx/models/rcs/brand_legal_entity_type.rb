# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      module BrandLegalEntityType
        extend Telnyx::Internal::Type::Enum

        LIMITED_LIABILITY_COMPANY = :LIMITED_LIABILITY_COMPANY
        SOLE_PROPRIETORSHIP = :SOLE_PROPRIETORSHIP
        PARTNERSHIP = :PARTNERSHIP
        CORPORATION = :CORPORATION
        S_CORPORATION = :S_CORPORATION

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
