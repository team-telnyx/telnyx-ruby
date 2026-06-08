# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class RemediationRetrieveResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse,
                Telnyx::Internal::AnyHash
              )
            end

          # Full detail of a remediation request, returned on submit and GET by id.
          sig do
            returns(
              Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Full detail of a remediation request, returned on submit and GET by id.
            data:
          )
          end

          sig do
            override.returns(
              {
                data:
                  Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(String) }
            attr_accessor :call_purpose

            sig { returns(String) }
            attr_accessor :contact_email

            sig { returns(Time) }
            attr_accessor :created_at

            # Total phone numbers in this batch, including any later cancelled. May exceed the
            # sum of the per-category result buckets, which omit cancelled numbers.
            sig { returns(Integer) }
            attr_accessor :phone_numbers_count

            # Numbers rejected before submission (e.g. cooldown).
            sig { returns(Integer) }
            attr_accessor :phone_numbers_ineligible

            # Numbers accepted for remediation, i.e. not rejected as ineligible. Counts
            # numbers still queued (pending) as well as processed ones.
            sig { returns(Integer) }
            attr_accessor :phone_numbers_submitted

            # Customer-facing status of a remediation request.
            sig do
              returns(
                Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            sig { returns(Time) }
            attr_accessor :updated_at

            # Per-category buckets. Populated once results are available. Null while the
            # request is still pending.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Results
                )
              )
            end
            attr_reader :results

            sig do
              params(
                results:
                  T.nilable(
                    Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Results::OrHash
                  )
              ).void
            end
            attr_writer :results

            sig { returns(T.nilable(Time)) }
            attr_accessor :tier1_completed_at

            sig { returns(T.nilable(Time)) }
            attr_accessor :tier2_completed_at

            sig { returns(T.nilable(String)) }
            attr_accessor :webhook_url

            # Full detail of a remediation request, returned on submit and GET by id.
            sig do
              params(
                id: String,
                call_purpose: String,
                contact_email: String,
                created_at: Time,
                phone_numbers_count: Integer,
                phone_numbers_ineligible: Integer,
                phone_numbers_submitted: Integer,
                status:
                  Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Status::OrSymbol,
                updated_at: Time,
                results:
                  T.nilable(
                    Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Results::OrHash
                  ),
                tier1_completed_at: T.nilable(Time),
                tier2_completed_at: T.nilable(Time),
                webhook_url: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              call_purpose:,
              contact_email:,
              created_at:,
              # Total phone numbers in this batch, including any later cancelled. May exceed the
              # sum of the per-category result buckets, which omit cancelled numbers.
              phone_numbers_count:,
              # Numbers rejected before submission (e.g. cooldown).
              phone_numbers_ineligible:,
              # Numbers accepted for remediation, i.e. not rejected as ineligible. Counts
              # numbers still queued (pending) as well as processed ones.
              phone_numbers_submitted:,
              # Customer-facing status of a remediation request.
              status:,
              updated_at:,
              # Per-category buckets. Populated once results are available. Null while the
              # request is still pending.
              results: nil,
              tier1_completed_at: nil,
              tier2_completed_at: nil,
              webhook_url: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  call_purpose: String,
                  contact_email: String,
                  created_at: Time,
                  phone_numbers_count: Integer,
                  phone_numbers_ineligible: Integer,
                  phone_numbers_submitted: Integer,
                  status:
                    Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Status::TaggedSymbol,
                  updated_at: Time,
                  results:
                    T.nilable(
                      Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Results
                    ),
                  tier1_completed_at: T.nilable(Time),
                  tier2_completed_at: T.nilable(Time),
                  webhook_url: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # Customer-facing status of a remediation request.
            module Status
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PENDING =
                T.let(
                  :pending,
                  Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Status::TaggedSymbol
                )
              IN_PROGRESS =
                T.let(
                  :in_progress,
                  Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Status::TaggedSymbol
                )
              COMPLETED =
                T.let(
                  :completed,
                  Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Status::TaggedSymbol
                )
              FAILED =
                T.let(
                  :failed,
                  Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Status::TaggedSymbol
                )
              CANCELLED =
                T.let(
                  :cancelled,
                  Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class Results < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Results,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :ineligible

              sig { params(ineligible: T::Array[String]).void }
              attr_writer :ineligible

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :not_flagged

              sig { params(not_flagged: T::Array[String]).void }
              attr_writer :not_flagged

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :refused

              sig { params(refused: T::Array[String]).void }
              attr_writer :refused

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :remediated

              sig { params(remediated: T::Array[String]).void }
              attr_writer :remediated

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :requires_review

              sig { params(requires_review: T::Array[String]).void }
              attr_writer :requires_review

              # Per-category buckets. Populated once results are available. Null while the
              # request is still pending.
              sig do
                params(
                  ineligible: T::Array[String],
                  not_flagged: T::Array[String],
                  refused: T::Array[String],
                  remediated: T::Array[String],
                  requires_review: T::Array[String]
                ).returns(T.attached_class)
              end
              def self.new(
                ineligible: nil,
                not_flagged: nil,
                refused: nil,
                remediated: nil,
                requires_review: nil
              )
              end

              sig do
                override.returns(
                  {
                    ineligible: T::Array[String],
                    not_flagged: T::Array[String],
                    refused: T::Array[String],
                    remediated: T::Array[String],
                    requires_review: T::Array[String]
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
