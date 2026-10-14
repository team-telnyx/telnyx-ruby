# typed: strong

module Telnyx
  module Models
    module Enterprises
      ReputationPhoneNumber = Reputation::ReputationPhoneNumber

      module Reputation
        class ReputationPhoneNumber < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::ReputationPhoneNumber,
                Telnyx::Internal::AnyHash
              )
            end

          # Deadline to confirm you still own the number. Set only while `ownership_status`
          # is `pending_confirmation`.
          sig { returns(T.nilable(Time)) }
          attr_accessor :confirm_by

          sig { returns(T.nilable(String)) }
          attr_reader :enterprise_id

          sig { params(enterprise_id: String).void }
          attr_writer :enterprise_id

          # Why the number's ownership was flagged. `carrier_changed` when an ownership
          # check found the number with a different carrier.
          sig { returns(T.nilable(String)) }
          attr_accessor :flag_reason

          # Result of ongoing ownership checks. `verified`: the number is with the carrier
          # on record. `pending_confirmation`: the number's carrier changed, or a periodic
          # ownership re-verification is due; confirm you still own it before `confirm_by`.
          # `flagged`: a periodic re-verification went unanswered; the number stays
          # monitored and is not removed, but confirm ownership
          # (`POST .../ownership_confirm`) to return it to `verified`. `removed`: the number
          # is no longer monitored; returned by `POST .../ownership_confirm` with
          # `still_own: false`, and when listing numbers with
          # `filter[ownership_status]=removed`.
          sig do
            returns(
              T.nilable(
                Telnyx::Enterprises::Reputation::ReputationOwnershipStatus::TaggedSymbol
              )
            )
          end
          attr_reader :ownership_status

          sig do
            params(
              ownership_status:
                Telnyx::Enterprises::Reputation::ReputationOwnershipStatus::OrSymbol
            ).void
          end
          attr_writer :ownership_status

          # E.164 with leading `+`.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # Why a number was removed. `ported_away`: you confirmed the number left your
          # control after a carrier change. `unconfirmed_ownership`: a carrier change was
          # not confirmed before the deadline. `reassigned`: the number was reported as
          # permanently disconnected. `customer_reported`: you reported that you no longer
          # own the number. `customer_removed`: you removed the number.
          sig do
            returns(
              T.nilable(
                Telnyx::Enterprises::Reputation::ReputationPhoneNumber::RemovalReason::TaggedSymbol
              )
            )
          end
          attr_accessor :removal_reason

          # When the number was removed. Set only for removed numbers.
          sig { returns(T.nilable(Time)) }
          attr_accessor :removed_at

          # Reputation snapshot for a phone number. Each metric is a 0–100 score;
          # `spam_risk` is a coarse bucket. Field set may grow over time - read by key.
          sig { returns(T.nilable(Telnyx::ReputationData)) }
          attr_reader :reputation_data

          sig do
            params(
              reputation_data: T.nilable(Telnyx::ReputationData::OrHash)
            ).void
          end
          attr_writer :reputation_data

          # Where the phone number is hosted. `telnyx`: in your Telnyx inventory.
          # `external`: a number you own that is hosted with another provider.
          sig do
            returns(
              T.nilable(
                Telnyx::Enterprises::Reputation::ReputationNumberSource::TaggedSymbol
              )
            )
          end
          attr_reader :source

          sig do
            params(
              source:
                Telnyx::Enterprises::Reputation::ReputationNumberSource::OrSymbol
            ).void
          end
          attr_writer :source

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          sig do
            params(
              id: String,
              confirm_by: T.nilable(Time),
              created_at: Time,
              enterprise_id: String,
              flag_reason: T.nilable(String),
              ownership_status:
                Telnyx::Enterprises::Reputation::ReputationOwnershipStatus::OrSymbol,
              phone_number: String,
              removal_reason:
                T.nilable(
                  Telnyx::Enterprises::Reputation::ReputationPhoneNumber::RemovalReason::OrSymbol
                ),
              removed_at: T.nilable(Time),
              reputation_data: T.nilable(Telnyx::ReputationData::OrHash),
              source:
                Telnyx::Enterprises::Reputation::ReputationNumberSource::OrSymbol,
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            # Deadline to confirm you still own the number. Set only while `ownership_status`
            # is `pending_confirmation`.
            confirm_by: nil,
            created_at: nil,
            enterprise_id: nil,
            # Why the number's ownership was flagged. `carrier_changed` when an ownership
            # check found the number with a different carrier.
            flag_reason: nil,
            # Result of ongoing ownership checks. `verified`: the number is with the carrier
            # on record. `pending_confirmation`: the number's carrier changed, or a periodic
            # ownership re-verification is due; confirm you still own it before `confirm_by`.
            # `flagged`: a periodic re-verification went unanswered; the number stays
            # monitored and is not removed, but confirm ownership
            # (`POST .../ownership_confirm`) to return it to `verified`. `removed`: the number
            # is no longer monitored; returned by `POST .../ownership_confirm` with
            # `still_own: false`, and when listing numbers with
            # `filter[ownership_status]=removed`.
            ownership_status: nil,
            # E.164 with leading `+`.
            phone_number: nil,
            # Why a number was removed. `ported_away`: you confirmed the number left your
            # control after a carrier change. `unconfirmed_ownership`: a carrier change was
            # not confirmed before the deadline. `reassigned`: the number was reported as
            # permanently disconnected. `customer_reported`: you reported that you no longer
            # own the number. `customer_removed`: you removed the number.
            removal_reason: nil,
            # When the number was removed. Set only for removed numbers.
            removed_at: nil,
            # Reputation snapshot for a phone number. Each metric is a 0–100 score;
            # `spam_risk` is a coarse bucket. Field set may grow over time - read by key.
            reputation_data: nil,
            # Where the phone number is hosted. `telnyx`: in your Telnyx inventory.
            # `external`: a number you own that is hosted with another provider.
            source: nil,
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                confirm_by: T.nilable(Time),
                created_at: Time,
                enterprise_id: String,
                flag_reason: T.nilable(String),
                ownership_status:
                  Telnyx::Enterprises::Reputation::ReputationOwnershipStatus::TaggedSymbol,
                phone_number: String,
                removal_reason:
                  T.nilable(
                    Telnyx::Enterprises::Reputation::ReputationPhoneNumber::RemovalReason::TaggedSymbol
                  ),
                removed_at: T.nilable(Time),
                reputation_data: T.nilable(Telnyx::ReputationData),
                source:
                  Telnyx::Enterprises::Reputation::ReputationNumberSource::TaggedSymbol,
                updated_at: Time
              }
            )
          end
          def to_hash
          end

          # Why a number was removed. `ported_away`: you confirmed the number left your
          # control after a carrier change. `unconfirmed_ownership`: a carrier change was
          # not confirmed before the deadline. `reassigned`: the number was reported as
          # permanently disconnected. `customer_reported`: you reported that you no longer
          # own the number. `customer_removed`: you removed the number.
          module RemovalReason
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Enterprises::Reputation::ReputationPhoneNumber::RemovalReason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PORTED_AWAY =
              T.let(
                :ported_away,
                Telnyx::Enterprises::Reputation::ReputationPhoneNumber::RemovalReason::TaggedSymbol
              )
            UNCONFIRMED_OWNERSHIP =
              T.let(
                :unconfirmed_ownership,
                Telnyx::Enterprises::Reputation::ReputationPhoneNumber::RemovalReason::TaggedSymbol
              )
            REASSIGNED =
              T.let(
                :reassigned,
                Telnyx::Enterprises::Reputation::ReputationPhoneNumber::RemovalReason::TaggedSymbol
              )
            CUSTOMER_REPORTED =
              T.let(
                :customer_reported,
                Telnyx::Enterprises::Reputation::ReputationPhoneNumber::RemovalReason::TaggedSymbol
              )
            CUSTOMER_REMOVED =
              T.let(
                :customer_removed,
                Telnyx::Enterprises::Reputation::ReputationPhoneNumber::RemovalReason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Enterprises::Reputation::ReputationPhoneNumber::RemovalReason::TaggedSymbol
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
end
