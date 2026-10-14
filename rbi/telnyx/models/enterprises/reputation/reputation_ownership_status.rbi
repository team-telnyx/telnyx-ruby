# typed: strong

module Telnyx
  module Models
    module Enterprises
      ReputationOwnershipStatus = Reputation::ReputationOwnershipStatus

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

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Enterprises::Reputation::ReputationOwnershipStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VERIFIED =
            T.let(
              :verified,
              Telnyx::Enterprises::Reputation::ReputationOwnershipStatus::TaggedSymbol
            )
          FLAGGED =
            T.let(
              :flagged,
              Telnyx::Enterprises::Reputation::ReputationOwnershipStatus::TaggedSymbol
            )
          PENDING_CONFIRMATION =
            T.let(
              :pending_confirmation,
              Telnyx::Enterprises::Reputation::ReputationOwnershipStatus::TaggedSymbol
            )
          REMOVED =
            T.let(
              :removed,
              Telnyx::Enterprises::Reputation::ReputationOwnershipStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Enterprises::Reputation::ReputationOwnershipStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
