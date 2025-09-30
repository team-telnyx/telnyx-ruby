# frozen_string_literal: true

module Telnyx
  module Models
    # Setting for how costs for outbound profile are calculated.
    module UsagePaymentMethod
      extend Telnyx::Internal::Type::Enum

      RATE_DECK = :"rate-deck"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
