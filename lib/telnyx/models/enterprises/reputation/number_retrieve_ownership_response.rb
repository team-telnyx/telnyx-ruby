# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Numbers#retrieve_ownership
        class NumberRetrieveOwnershipResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse::Data]
          required :data, -> { Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse::Data }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse::Data]

          # @see Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse#data
          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute baseline_carrier
            #   Service provider ID (SPID) of the carrier that held the number when its
            #   ownership was last established.
            #
            #   @return [String, nil]
            optional :baseline_carrier, String, nil?: true

            # @!attribute baseline_recorded_at
            #
            #   @return [Time, nil]
            optional :baseline_recorded_at, Time, nil?: true

            # @!attribute confirm_by
            #
            #   @return [Time, nil]
            optional :confirm_by, Time, nil?: true

            # @!attribute flag_reason
            #
            #   @return [String, nil]
            optional :flag_reason, String, nil?: true

            # @!attribute history
            #   Ownership events, most recent first.
            #
            #   @return [Array<Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse::Data::History>, nil]
            optional :history,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse::Data::History] }

            # @!attribute last_checked_at
            #   When ownership of the number was last checked.
            #
            #   @return [Time, nil]
            optional :last_checked_at, Time, nil?: true

            # @!attribute ownership_status
            #   Result of ongoing ownership checks. `verified`: the number is with the carrier
            #   on record. `pending_confirmation`: the number's carrier changed, or a periodic
            #   ownership re-verification is due; confirm you still own it before `confirm_by`.
            #   `flagged`: a periodic re-verification went unanswered; the number stays
            #   monitored and is not removed, but confirm ownership
            #   (`POST .../ownership_confirm`) to return it to `verified`. `removed`: the number
            #   is no longer monitored; returned by `POST .../ownership_confirm` with
            #   `still_own: false`, and when listing numbers with
            #   `filter[ownership_status]=removed`.
            #
            #   @return [Symbol, Telnyx::Models::Enterprises::Reputation::ReputationOwnershipStatus, nil]
            optional :ownership_status, enum: -> { Telnyx::Enterprises::Reputation::ReputationOwnershipStatus }

            # @!attribute phone_number
            #
            #   @return [String, nil]
            optional :phone_number, String

            # @!attribute source
            #   Where the phone number is hosted. `telnyx`: in your Telnyx inventory.
            #   `external`: a number you own that is hosted with another provider.
            #
            #   @return [Symbol, Telnyx::Models::Enterprises::Reputation::ReputationNumberSource, nil]
            optional :source, enum: -> { Telnyx::Enterprises::Reputation::ReputationNumberSource }

            # @!method initialize(baseline_carrier: nil, baseline_recorded_at: nil, confirm_by: nil, flag_reason: nil, history: nil, last_checked_at: nil, ownership_status: nil, phone_number: nil, source: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse::Data}
            #   for more details.
            #
            #   @param baseline_carrier [String, nil] Service provider ID (SPID) of the carrier that held the number when its ownershi
            #
            #   @param baseline_recorded_at [Time, nil]
            #
            #   @param confirm_by [Time, nil]
            #
            #   @param flag_reason [String, nil]
            #
            #   @param history [Array<Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse::Data::History>] Ownership events, most recent first.
            #
            #   @param last_checked_at [Time, nil] When ownership of the number was last checked.
            #
            #   @param ownership_status [Symbol, Telnyx::Models::Enterprises::Reputation::ReputationOwnershipStatus] Result of ongoing ownership checks. `verified`: the number is with the carrier o
            #
            #   @param phone_number [String]
            #
            #   @param source [Symbol, Telnyx::Models::Enterprises::Reputation::ReputationNumberSource] Where the phone number is hosted. `telnyx`: in your Telnyx inventory. `external`

            class History < Telnyx::Internal::Type::BaseModel
              # @!attribute event_type
              #   `added`, `check`, `flag`, `confirm` or `removed`.
              #
              #   @return [String, nil]
              optional :event_type, String

              # @!attribute occurred_at
              #
              #   @return [Time, nil]
              optional :occurred_at, Time

              # @!attribute outcome
              #   What the event found or did, for example `unchanged` or `carrier_changed`.
              #
              #   @return [String, nil]
              optional :outcome, String, nil?: true

              # @!method initialize(event_type: nil, occurred_at: nil, outcome: nil)
              #   @param event_type [String] `added`, `check`, `flag`, `confirm` or `removed`.
              #
              #   @param occurred_at [Time]
              #
              #   @param outcome [String, nil] What the event found or did, for example `unchanged` or `carrier_changed`.
            end
          end
        end
      end
    end
  end
end
