# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # Review state of the ownership proof that allows adding phone numbers hosted with
        # another provider.
        module ExternalVerificationStatus
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          APPROVED = :approved
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
