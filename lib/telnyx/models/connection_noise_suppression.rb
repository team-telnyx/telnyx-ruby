# frozen_string_literal: true

module Telnyx
  module Models
    # Controls when noise suppression is applied to calls. When set to 'inbound',
    # noise suppression is applied to incoming audio. When set to 'outbound', it's
    # applied to outgoing audio. When set to 'both', it's applied in both directions.
    # When set to 'disabled', noise suppression is turned off.
    module ConnectionNoiseSuppression
      extend Telnyx::Internal::Type::Enum

      INBOUND = :inbound
      OUTBOUND = :outbound
      BOTH = :both
      DISABLED = :disabled

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
