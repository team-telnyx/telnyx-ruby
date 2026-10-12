# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # Result of ongoing ownership checks. `verified`: the number is with the carrier
        # on record. `pending_confirmation`: the number's carrier changed, or a periodic
        # ownership re-verification is due; confirm you still own it before `confirm_by`.
        # `flagged`: a periodic re-verification went unanswered; the number stays
        # monitored and is not removed, but confirm ownership
        # (`POST .../ownership_confirm`) to return it to `verified`. `removed`: the number
        # is no longer monitored; returned by `POST .../ownership_confirm` with
        # `still_own: false`, and when listing numbers with
        # `filter[ownership_status]=removed`.
        module ReputationOwnershipStatus
          extend Telnyx::Internal::Type::Enum

          VERIFIED = :verified
          FLAGGED = :flagged
          PENDING_CONFIRMATION = :pending_confirmation
          REMOVED = :removed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      ReputationOwnershipStatus = Reputation::ReputationOwnershipStatus
    end
  end
end
