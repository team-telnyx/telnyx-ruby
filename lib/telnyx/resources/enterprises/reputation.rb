# frozen_string_literal: true

module Telnyx
  module Resources
    class Enterprises
      # Manage Number Reputation enrollment and check frequency settings for an
      # enterprise
      class Reputation
        # Associate phone numbers with an enterprise for reputation monitoring and
        # retrieve reputation scores
        # @return [Telnyx::Resources::Enterprises::Reputation::Numbers]
        attr_reader :numbers

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Enterprises::ReputationCreateParams} for more details.
        #
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
        #
        # @overload create(enterprise_id, loa_document_id:, check_frequency: nil, request_options: {})
        #
        # @param enterprise_id [String] Unique identifier of the enterprise (UUID)
        #
        # @param loa_document_id [String] ID of the signed Letter of Authorization (LOA) document uploaded to the document
        #
        # @param check_frequency [Symbol, Telnyx::Models::Enterprises::ReputationCreateParams::CheckFrequency] Frequency for automatically refreshing reputation data
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Enterprises::ReputationCreateResponse]
        #
        # @see Telnyx::Models::Enterprises::ReputationCreateParams
        def create(enterprise_id, params)
          parsed, options = Telnyx::Enterprises::ReputationCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["enterprises/%1$s/reputation", enterprise_id],
            body: parsed,
            model: Telnyx::Models::Enterprises::ReputationCreateResponse,
            options: options
          )
        end

        # Retrieve the current Number Reputation settings for an enterprise.
        #
        # Returns the enrollment status (`pending`, `approved`, `rejected`, `deleted`),
        # check frequency, and any rejection reasons.
        #
        # Returns `404` if reputation has not been enabled for this enterprise.
        #
        # @overload list(enterprise_id, request_options: {})
        #
        # @param enterprise_id [String] Unique identifier of the enterprise (UUID)
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Enterprises::ReputationListResponse]
        #
        # @see Telnyx::Models::Enterprises::ReputationListParams
        def list(enterprise_id, params = {})
          @client.request(
            method: :get,
            path: ["enterprises/%1$s/reputation", enterprise_id],
            model: Telnyx::Models::Enterprises::ReputationListResponse,
            options: params[:request_options]
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
        #
        # @overload delete_all(enterprise_id, request_options: {})
        #
        # @param enterprise_id [String] Unique identifier of the enterprise (UUID)
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::Enterprises::ReputationDeleteAllParams
        def delete_all(enterprise_id, params = {})
          @client.request(
            method: :delete,
            path: ["enterprises/%1$s/reputation", enterprise_id],
            model: NilClass,
            options: params[:request_options]
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
        #
        # @overload update_frequency(enterprise_id, check_frequency:, request_options: {})
        #
        # @param enterprise_id [String] Unique identifier of the enterprise (UUID)
        #
        # @param check_frequency [Symbol, Telnyx::Models::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency] New frequency for refreshing reputation data
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Enterprises::ReputationUpdateFrequencyResponse]
        #
        # @see Telnyx::Models::Enterprises::ReputationUpdateFrequencyParams
        def update_frequency(enterprise_id, params)
          parsed, options = Telnyx::Enterprises::ReputationUpdateFrequencyParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["enterprises/%1$s/reputation/frequency", enterprise_id],
            body: parsed,
            model: Telnyx::Models::Enterprises::ReputationUpdateFrequencyResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @numbers = Telnyx::Resources::Enterprises::Reputation::Numbers.new(client: client)
        end
      end
    end
  end
end
