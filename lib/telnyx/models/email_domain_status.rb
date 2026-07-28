# frozen_string_literal: true

module Telnyx
  module Models
    module EmailDomainStatus
      extend Telnyx::Internal::Type::Enum

      PENDING = :pending
      VERIFYING = :verifying
      VERIFIED = :verified
      FAILED = :failed
      DEGRADED = :degraded
      SUSPENDED = :suspended

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
