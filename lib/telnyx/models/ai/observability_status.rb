# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module ObservabilityStatus
        extend Telnyx::Internal::Type::Enum

        ENABLED = :enabled
        DISABLED = :disabled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
