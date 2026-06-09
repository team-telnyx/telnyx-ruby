# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Remediation#retrieve
        class RemediationRetrieveResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #   Full detail of a remediation request, returned on submit and GET by id.
          #
          #   @return [Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data]
          required :data, -> { Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data] Full detail of a remediation request, returned on submit and GET by id.

          # @see Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse#data
          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute call_purpose
            #
            #   @return [String]
            required :call_purpose, String

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute phone_numbers_count
            #   Total phone numbers in this batch, including any later cancelled. May exceed the
            #   sum of the per-category result buckets, which omit cancelled numbers.
            #
            #   @return [Integer]
            required :phone_numbers_count, Integer

            # @!attribute phone_numbers_ineligible
            #   Numbers rejected before submission (e.g. cooldown).
            #
            #   @return [Integer]
            required :phone_numbers_ineligible, Integer

            # @!attribute phone_numbers_submitted
            #   Numbers accepted for remediation, i.e. not rejected as ineligible. Counts
            #   numbers still queued (pending) as well as processed ones.
            #
            #   @return [Integer]
            required :phone_numbers_submitted, Integer

            # @!attribute status
            #   Customer-facing status of a remediation request.
            #
            #   @return [Symbol, Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Status]
            required :status,
                     enum: -> { Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Status }

            # @!attribute updated_at
            #
            #   @return [Time]
            required :updated_at, Time

            # @!attribute contact_email
            #
            #   @return [String, nil]
            optional :contact_email, String, nil?: true

            # @!attribute results
            #   Per-category buckets. Populated once results are available. Null while the
            #   request is still pending.
            #
            #   @return [Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Results, nil]
            optional :results,
                     -> { Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Results },
                     nil?: true

            # @!attribute tier1_completed_at
            #
            #   @return [Time, nil]
            optional :tier1_completed_at, Time, nil?: true

            # @!attribute tier2_completed_at
            #
            #   @return [Time, nil]
            optional :tier2_completed_at, Time, nil?: true

            # @!attribute webhook_url
            #
            #   @return [String, nil]
            optional :webhook_url, String, nil?: true

            # @!method initialize(id:, call_purpose:, created_at:, phone_numbers_count:, phone_numbers_ineligible:, phone_numbers_submitted:, status:, updated_at:, contact_email: nil, results: nil, tier1_completed_at: nil, tier2_completed_at: nil, webhook_url: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data} for
            #   more details.
            #
            #   Full detail of a remediation request, returned on submit and GET by id.
            #
            #   @param id [String]
            #
            #   @param call_purpose [String]
            #
            #   @param created_at [Time]
            #
            #   @param phone_numbers_count [Integer] Total phone numbers in this batch, including any later cancelled. May exceed the
            #
            #   @param phone_numbers_ineligible [Integer] Numbers rejected before submission (e.g. cooldown).
            #
            #   @param phone_numbers_submitted [Integer] Numbers accepted for remediation, i.e. not rejected as ineligible. Counts number
            #
            #   @param status [Symbol, Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Status] Customer-facing status of a remediation request.
            #
            #   @param updated_at [Time]
            #
            #   @param contact_email [String, nil]
            #
            #   @param results [Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data::Results, nil] Per-category buckets. Populated once results are available. Null while the reque
            #
            #   @param tier1_completed_at [Time, nil]
            #
            #   @param tier2_completed_at [Time, nil]
            #
            #   @param webhook_url [String, nil]

            # Customer-facing status of a remediation request.
            #
            # @see Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data#status
            module Status
              extend Telnyx::Internal::Type::Enum

              PENDING = :pending
              IN_PROGRESS = :in_progress
              COMPLETED = :completed
              FAILED = :failed
              CANCELLED = :cancelled

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse::Data#results
            class Results < Telnyx::Internal::Type::BaseModel
              # @!attribute ineligible
              #
              #   @return [Array<String>, nil]
              optional :ineligible, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute not_flagged
              #
              #   @return [Array<String>, nil]
              optional :not_flagged, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute refused
              #
              #   @return [Array<String>, nil]
              optional :refused, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute remediated
              #
              #   @return [Array<String>, nil]
              optional :remediated, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute requires_review
              #
              #   @return [Array<String>, nil]
              optional :requires_review, Telnyx::Internal::Type::ArrayOf[String]

              # @!method initialize(ineligible: nil, not_flagged: nil, refused: nil, remediated: nil, requires_review: nil)
              #   Per-category buckets. Populated once results are available. Null while the
              #   request is still pending.
              #
              #   @param ineligible [Array<String>]
              #   @param not_flagged [Array<String>]
              #   @param refused [Array<String>]
              #   @param remediated [Array<String>]
              #   @param requires_review [Array<String>]
            end
          end
        end
      end
    end
  end
end
