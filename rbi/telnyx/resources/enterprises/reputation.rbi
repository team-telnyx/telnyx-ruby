# typed: strong

module Telnyx
  module Resources
    class Enterprises
      # Phone-number reputation monitoring (spam-score lookup and tracking).
      class Reputation
        # Phone-number reputation monitoring (spam-score lookup and tracking).
        sig { returns(Telnyx::Resources::Enterprises::Reputation::Numbers) }
        attr_reader :numbers

        # Phone-number reputation monitoring (spam-score lookup and tracking).
        sig { returns(Telnyx::Resources::Enterprises::Reputation::Loa) }
        attr_reader :loa

        # Phone Number Reputation tracks how your outbound caller-IDs are perceived (spam
        # risk, engagement, etc.) across the call-screening ecosystem. This endpoint reads
        # the enterprise-level settings: whether the product is enabled, the refresh
        # cadence, and the stored Letter of Authorization document id.
        #
        # Returns `404` if reputation has never been enabled for this enterprise.
        sig do
          params(
            enterprise_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Enterprises::ReputationRetrieveResponse)
        end
        def retrieve(
          # The enterprise id. Lowercase UUID.
          enterprise_id,
          request_options: {}
        )
        end

        # Disable Phone Number Reputation. All registered numbers are de-registered as a
        # cascade. The enterprise itself is unaffected. Returns `204` on success, `404` if
        # reputation is not enabled for this enterprise.
        sig do
          params(
            enterprise_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def disable(
          # The enterprise id. Lowercase UUID.
          enterprise_id,
          request_options: {}
        )
        end

        # Activate Phone Number Reputation for the given enterprise. Requires an uploaded
        # Letter of Authorization document (the `loa_document_id` references the Telnyx
        # Documents API) and a refresh-frequency selection. After activation, individual
        # phone numbers can be registered via `POST .../reputation/numbers`.
        #
        # **Prerequisite**: the calling user must have agreed to the Phone Number
        # Reputation Terms of Service (`POST /terms_of_service/number_reputation/agree`).
        #
        # Failure modes:
        #
        # - `403` - Phone Number Reputation Terms of Service not accepted.
        # - `404` - enterprise does not exist or does not belong to your account.
        # - `400` - reputation already enabled for this enterprise.
        # - `422` - `loa_document_id` missing or `check_frequency` invalid.
        #
        # **Pricing:** This is a billable action. See https://telnyx.com/pricing/numbers
        # for current pricing.
        sig do
          params(
            enterprise_id: String,
            loa_document_id: String,
            check_frequency:
              Telnyx::Enterprises::ReputationEnableParams::CheckFrequency::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Enterprises::ReputationEnableResponse)
        end
        def enable(
          # The enterprise id. Lowercase UUID.
          enterprise_id,
          # Id of the signed Letter of Authorization document, returned by the Telnyx
          # Documents API after upload (upload via `POST /v2/documents`; see
          # https://developers.telnyx.com/api/documents).
          loa_document_id:,
          # How often Telnyx refreshes the stored reputation data for this enterprise's
          # registered numbers.
          check_frequency: nil,
          request_options: {}
        )
        end

        # Update how often Telnyx refreshes the reputation data for this enterprise's
        # registered numbers. The new frequency takes effect on the next scheduled
        # refresh.
        #
        # The enterprise's reputation must be in `approved` status. A request made while
        # the status is `pending` is rejected with `400 Bad Request`.
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
          # The enterprise id. Lowercase UUID.
          enterprise_id,
          # How often Telnyx refreshes the stored reputation data for this enterprise's
          # registered numbers.
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
