# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Numbers#list
        class ReputationPhoneNumber < Telnyx::Internal::Type::BaseModel
          # @!attribute confirm_by
          #   Deadline to confirm you still own the number. Set only while `ownership_status`
          #   is `pending_confirmation`.
          #
          #   @return [Time, nil]
          optional :confirm_by, Time, nil?: true

          # @!attribute enterprise_id
          #
          #   @return [String, nil]
          optional :enterprise_id, String

          # @!attribute flag_reason
          #   Why the number's ownership was flagged. `carrier_changed` when an ownership
          #   check found the number with a different carrier.
          #
          #   @return [String, nil]
          optional :flag_reason, String, nil?: true

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
          #   E.164 with leading `+`.
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute removal_reason
          #   Why a number was removed. `ported_away`: you confirmed the number left your
          #   control after a carrier change. `unconfirmed_ownership`: a carrier change was
          #   not confirmed before the deadline. `reassigned`: the number was reported as
          #   permanently disconnected. `customer_reported`: you reported that you no longer
          #   own the number. `customer_removed`: you removed the number.
          #
          #   @return [Symbol, Telnyx::Models::Enterprises::Reputation::ReputationPhoneNumber::RemovalReason, nil]
          optional :removal_reason,
                   enum: -> { Telnyx::Enterprises::Reputation::ReputationPhoneNumber::RemovalReason },
                   nil?: true

          # @!attribute removed_at
          #   When the number was removed. Set only for removed numbers.
          #
          #   @return [Time, nil]
          optional :removed_at, Time, nil?: true

          # @!attribute reputation_data
          #   Reputation snapshot for a phone number. Each metric is a 0–100 score;
          #   `spam_risk` is a coarse bucket. Field set may grow over time - read by key.
          #
          #   @return [Telnyx::Models::ReputationData, nil]
          optional :reputation_data, -> { Telnyx::ReputationData }, nil?: true

          # @!attribute source
          #   Where the phone number is hosted. `telnyx`: in your Telnyx inventory.
          #   `external`: a number you own that is hosted with another provider.
          #
          #   @return [Symbol, Telnyx::Models::Enterprises::Reputation::ReputationNumberSource, nil]
          optional :source, enum: -> { Telnyx::Enterprises::Reputation::ReputationNumberSource }

          response_only do
            # @!attribute id
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute created_at
            #
            #   @return [Time, nil]
            optional :created_at, Time

            # @!attribute updated_at
            #
            #   @return [Time, nil]
            optional :updated_at, Time
          end

          # @!method initialize(id: nil, confirm_by: nil, created_at: nil, enterprise_id: nil, flag_reason: nil, ownership_status: nil, phone_number: nil, removal_reason: nil, removed_at: nil, reputation_data: nil, source: nil, updated_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Enterprises::Reputation::ReputationPhoneNumber} for more
          #   details.
          #
          #   @param id [String]
          #
          #   @param confirm_by [Time, nil] Deadline to confirm you still own the number. Set only while `ownership_status`
          #
          #   @param created_at [Time]
          #
          #   @param enterprise_id [String]
          #
          #   @param flag_reason [String, nil] Why the number's ownership was flagged. `carrier_changed` when an ownership chec
          #
          #   @param ownership_status [Symbol, Telnyx::Models::Enterprises::Reputation::ReputationOwnershipStatus] Result of ongoing ownership checks. `verified`: the number is with the carrier o
          #
          #   @param phone_number [String] E.164 with leading `+`.
          #
          #   @param removal_reason [Symbol, Telnyx::Models::Enterprises::Reputation::ReputationPhoneNumber::RemovalReason, nil] Why a number was removed. `ported_away`: you confirmed the number left your cont
          #
          #   @param removed_at [Time, nil] When the number was removed. Set only for removed numbers.
          #
          #   @param reputation_data [Telnyx::Models::ReputationData, nil] Reputation snapshot for a phone number. Each metric is a 0–100 score; `spam_risk
          #
          #   @param source [Symbol, Telnyx::Models::Enterprises::Reputation::ReputationNumberSource] Where the phone number is hosted. `telnyx`: in your Telnyx inventory. `external`
          #
          #   @param updated_at [Time]

          # Why a number was removed. `ported_away`: you confirmed the number left your
          # control after a carrier change. `unconfirmed_ownership`: a carrier change was
          # not confirmed before the deadline. `reassigned`: the number was reported as
          # permanently disconnected. `customer_reported`: you reported that you no longer
          # own the number. `customer_removed`: you removed the number.
          #
          # @see Telnyx::Models::Enterprises::Reputation::ReputationPhoneNumber#removal_reason
          module RemovalReason
            extend Telnyx::Internal::Type::Enum

            PORTED_AWAY = :ported_away
            UNCONFIRMED_OWNERSHIP = :unconfirmed_ownership
            REASSIGNED = :reassigned
            CUSTOMER_REPORTED = :customer_reported
            CUSTOMER_REMOVED = :customer_removed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      ReputationPhoneNumber = Reputation::ReputationPhoneNumber
    end
  end
end
