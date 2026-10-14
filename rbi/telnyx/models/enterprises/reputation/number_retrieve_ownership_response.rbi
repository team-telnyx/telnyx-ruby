# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class NumberRetrieveOwnershipResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            # Service provider ID (SPID) of the carrier that held the number when its
            # ownership was last established.
            sig { returns(T.nilable(String)) }
            attr_accessor :baseline_carrier

            sig { returns(T.nilable(Time)) }
            attr_accessor :baseline_recorded_at

            sig { returns(T.nilable(Time)) }
            attr_accessor :confirm_by

            sig { returns(T.nilable(String)) }
            attr_accessor :flag_reason

            # Ownership events, most recent first.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse::Data::History
                  ]
                )
              )
            end
            attr_reader :history

            sig do
              params(
                history:
                  T::Array[
                    Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse::Data::History::OrHash
                  ]
              ).void
            end
            attr_writer :history

            # When ownership of the number was last checked.
            sig { returns(T.nilable(Time)) }
            attr_accessor :last_checked_at

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

            sig { returns(T.nilable(String)) }
            attr_reader :phone_number

            sig { params(phone_number: String).void }
            attr_writer :phone_number

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

            sig do
              params(
                baseline_carrier: T.nilable(String),
                baseline_recorded_at: T.nilable(Time),
                confirm_by: T.nilable(Time),
                flag_reason: T.nilable(String),
                history:
                  T::Array[
                    Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse::Data::History::OrHash
                  ],
                last_checked_at: T.nilable(Time),
                ownership_status:
                  Telnyx::Enterprises::Reputation::ReputationOwnershipStatus::OrSymbol,
                phone_number: String,
                source:
                  Telnyx::Enterprises::Reputation::ReputationNumberSource::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Service provider ID (SPID) of the carrier that held the number when its
              # ownership was last established.
              baseline_carrier: nil,
              baseline_recorded_at: nil,
              confirm_by: nil,
              flag_reason: nil,
              # Ownership events, most recent first.
              history: nil,
              # When ownership of the number was last checked.
              last_checked_at: nil,
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
              phone_number: nil,
              # Where the phone number is hosted. `telnyx`: in your Telnyx inventory.
              # `external`: a number you own that is hosted with another provider.
              source: nil
            )
            end

            sig do
              override.returns(
                {
                  baseline_carrier: T.nilable(String),
                  baseline_recorded_at: T.nilable(Time),
                  confirm_by: T.nilable(Time),
                  flag_reason: T.nilable(String),
                  history:
                    T::Array[
                      Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse::Data::History
                    ],
                  last_checked_at: T.nilable(Time),
                  ownership_status:
                    Telnyx::Enterprises::Reputation::ReputationOwnershipStatus::TaggedSymbol,
                  phone_number: String,
                  source:
                    Telnyx::Enterprises::Reputation::ReputationNumberSource::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            class History < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse::Data::History,
                    Telnyx::Internal::AnyHash
                  )
                end

              # `added`, `check`, `flag`, `confirm` or `removed`.
              sig { returns(T.nilable(String)) }
              attr_reader :event_type

              sig { params(event_type: String).void }
              attr_writer :event_type

              sig { returns(T.nilable(Time)) }
              attr_reader :occurred_at

              sig { params(occurred_at: Time).void }
              attr_writer :occurred_at

              # What the event found or did, for example `unchanged` or `carrier_changed`.
              sig { returns(T.nilable(String)) }
              attr_accessor :outcome

              sig do
                params(
                  event_type: String,
                  occurred_at: Time,
                  outcome: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # `added`, `check`, `flag`, `confirm` or `removed`.
                event_type: nil,
                occurred_at: nil,
                # What the event found or did, for example `unchanged` or `carrier_changed`.
                outcome: nil
              )
              end

              sig do
                override.returns(
                  {
                    event_type: String,
                    occurred_at: Time,
                    outcome: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
