# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class RemediationRequest < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::RemediationRequest,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :call_purpose

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
              Telnyx::Enterprises::Reputation::RemediationStatus::TaggedSymbol
            )
          end
          attr_accessor :status

          sig { returns(Time) }
          attr_accessor :updated_at

          sig { returns(T.nilable(String)) }
          attr_accessor :contact_email

          # Per-category buckets. Populated once results are available. Null while the
          # request is still pending.
          sig do
            returns(
              T.nilable(
                Telnyx::Enterprises::Reputation::RemediationPerNumberResults
              )
            )
          end
          attr_reader :results

          sig do
            params(
              results:
                T.nilable(
                  Telnyx::Enterprises::Reputation::RemediationPerNumberResults::OrHash
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
              created_at: Time,
              phone_numbers_count: Integer,
              phone_numbers_ineligible: Integer,
              phone_numbers_submitted: Integer,
              status:
                Telnyx::Enterprises::Reputation::RemediationStatus::OrSymbol,
              updated_at: Time,
              contact_email: T.nilable(String),
              results:
                T.nilable(
                  Telnyx::Enterprises::Reputation::RemediationPerNumberResults::OrHash
                ),
              tier1_completed_at: T.nilable(Time),
              tier2_completed_at: T.nilable(Time),
              webhook_url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            call_purpose:,
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
            contact_email: nil,
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
                created_at: Time,
                phone_numbers_count: Integer,
                phone_numbers_ineligible: Integer,
                phone_numbers_submitted: Integer,
                status:
                  Telnyx::Enterprises::Reputation::RemediationStatus::TaggedSymbol,
                updated_at: Time,
                contact_email: T.nilable(String),
                results:
                  T.nilable(
                    Telnyx::Enterprises::Reputation::RemediationPerNumberResults
                  ),
                tier1_completed_at: T.nilable(Time),
                tier2_completed_at: T.nilable(Time),
                webhook_url: T.nilable(String)
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
