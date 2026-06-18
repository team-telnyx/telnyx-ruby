# frozen_string_literal: true

module Telnyx
  module Models
    module TermsOfService
      # Telnyx product the Terms of Service apply to.
      module TosProductType
        extend Telnyx::Internal::Type::Enum

        BRANDED_CALLING = :branded_calling
        NUMBER_REPUTATION = :number_reputation

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
