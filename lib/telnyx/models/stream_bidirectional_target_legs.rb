# frozen_string_literal: true

module Telnyx
  module Models
    # Specifies which call legs should receive the bidirectional stream audio.
    module StreamBidirectionalTargetLegs
      extend Telnyx::Internal::Type::Enum

      BOTH = :both
      SELF = :self
      OPPOSITE = :opposite

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
