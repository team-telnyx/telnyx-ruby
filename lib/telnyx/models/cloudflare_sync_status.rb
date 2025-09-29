# frozen_string_literal: true

module Telnyx
  module Models
    # An enumeration.
    module CloudflareSyncStatus
      extend Telnyx::Internal::Type::Enum

      PENDING = :pending
      ADDED = :added

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
