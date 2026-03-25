# typed: strong

module Telnyx
  module Resources
    class Enterprises
      # Manage Number Reputation enrollment and check frequency settings for an
      # enterprise
      class Reputation
        # Associate phone numbers with an enterprise for reputation monitoring and
        # retrieve reputation scores
        sig { returns(Telnyx::Resources::Enterprises::Reputation::Numbers) }
        attr_reader :numbers

        # Enable Number Reputation service for an enterprise.
        #
        # **Requirements:**
        #
        # - Signed LOA (Letter of Authorization) document ID
        # - Reputation check frequency (defaults to `business_daily`)
        # - Number Reputation Terms of Service must be accepted
        #
        # **Flow:**
        #
        # 1. Registers the enterprise for reputation monitoring
        # 2. Creates reputation settings with `pending` status
        # 3. Awaits admin approval before monitoring begins
        #
        # **Resubmission After Rejection:** If a previously rejected record exists, this
        # endpoint will delete it and create a new `pending` record.
        #
        # **Available Frequencies:**
        #
        # - `business_daily` — Monday–Friday
        # - `daily` — Every day
        # - `weekly` — Once per week
        # - `biweekly` — Once every two weeks
        # - `monthly` — Once per month
        # - `never` — Manual refresh only
        sig do
          params(
            enterprise_id: String,
            loa_document_id: String,
            check_frequency:
              Telnyx::Enterprises::ReputationCreateParams::CheckFrequency::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Enterprises::ReputationCreateResponse)
        end
        def create(
          # Unique identifier of the enterprise (UUID)
          enterprise_id,
          # ID of the signed Letter of Authorization (LOA) document uploaded to the document
          # service
          loa_document_id:,
          # Frequency for automatically refreshing reputation data
          check_frequency: nil,
          request_options: {}
        )
        end

        # Retrieve the current Number Reputation settings for an enterprise.
        #
        # Returns the enrollment status (`pending`, `approved`, `rejected`, `deleted`),
        # check frequency, and any rejection reasons.
        #
        # Returns `404` if reputation has not been enabled for this enterprise.
        sig do
          params(
            enterprise_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Enterprises::ReputationListResponse)
        end
        def list(
          # Unique identifier of the enterprise (UUID)
          enterprise_id,
          request_options: {}
        )
        end

        # Disable Number Reputation for an enterprise.
        #
        # This will:
        #
        # - Delete the reputation settings record
        # - Log the deletion for audit purposes
        # - Stop all future automated reputation checks
        #
        # **Note:** Can only be performed on `approved` reputation settings.
        sig do
          params(
            enterprise_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete_all(
          # Unique identifier of the enterprise (UUID)
          enterprise_id,
          request_options: {}
        )
        end

        # Update how often reputation data is automatically refreshed.
        #
        # **Note:** The enterprise must have `approved` reputation settings. Updating
        # frequency on `pending` or `rejected` settings will return an error.
        #
        # **Available Frequencies:**
        #
        # - `business_daily` — Monday–Friday
        # - `daily` — Every day including weekends
        # - `weekly` — Once per week
        # - `biweekly` — Once every two weeks
        # - `monthly` — Once per month
        # - `never` — Manual refresh only (no automatic checks)
        sig do
          params(
            enterprise_id: String,
            check_frequency:
              Telnyx::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::Enterprises::ReputationUpdateFrequencyResponse
          )
        end
        def update_frequency(
          # Unique identifier of the enterprise (UUID)
          enterprise_id,
          # New frequency for refreshing reputation data
          check_frequency:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
