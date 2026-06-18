# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # Customer-facing status of a remediation request.
        module RemediationStatus
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          IN_PROGRESS = :in_progress
          COMPLETED = :completed
          FAILED = :failed
          CANCELLED = :cancelled

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
