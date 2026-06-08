# frozen_string_literal: true

module Telnyx
  module Resources
    class Enterprises
      # Phone-number reputation monitoring (spam-score lookup and tracking).
      class Reputation
        # Phone-number reputation monitoring (spam-score lookup and tracking).
        # @return [Telnyx::Resources::Enterprises::Reputation::Numbers]
        attr_reader :numbers

        # Phone-number reputation monitoring (spam-score lookup and tracking).
        # @return [Telnyx::Resources::Enterprises::Reputation::Loa]
        attr_reader :loa

        # Phone Number Reputation tracks how your outbound caller-IDs are perceived (spam
        # risk, engagement, etc.) across the call-screening ecosystem. This endpoint reads
        # the enterprise-level settings: whether the product is enabled, the refresh
        # cadence, and the stored Letter of Authorization document id.
        #
        # Returns `404` if reputation has never been enabled for this enterprise.
        #
        # @overload retrieve(enterprise_id, request_options: {})
        #
        # @param enterprise_id [String] The enterprise id. Lowercase UUID.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Enterprises::ReputationRetrieveResponse]
        #
        # @see Telnyx::Models::Enterprises::ReputationRetrieveParams
        def retrieve(enterprise_id, params = {})
          @client.request(
            method: :get,
            path: ["enterprises/%1$s/reputation", enterprise_id],
            model: Telnyx::Models::Enterprises::ReputationRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Disable Phone Number Reputation. All registered numbers are de-registered as a
        # cascade. The enterprise itself is unaffected. Returns `204` on success, `404` if
        # reputation is not enabled for this enterprise.
        #
        # @overload disable(enterprise_id, request_options: {})
        #
        # @param enterprise_id [String] The enterprise id. Lowercase UUID.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::Enterprises::ReputationDisableParams
        def disable(enterprise_id, params = {})
          @client.request(
            method: :delete,
            path: ["enterprises/%1$s/reputation", enterprise_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Enterprises::ReputationEnableParams} for more details.
        #
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
        #
        # @overload enable(enterprise_id, loa_document_id:, check_frequency: nil, request_options: {})
        #
        # @param enterprise_id [String] The enterprise id. Lowercase UUID.
        #
        # @param loa_document_id [String] Id of the signed Letter of Authorization document, returned by the Telnyx Docume
        #
        # @param check_frequency [Symbol, Telnyx::Models::Enterprises::ReputationEnableParams::CheckFrequency] How often Telnyx refreshes the stored reputation data for this enterprise's regi
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Enterprises::ReputationEnableResponse]
        #
        # @see Telnyx::Models::Enterprises::ReputationEnableParams
        def enable(enterprise_id, params)
          parsed, options = Telnyx::Enterprises::ReputationEnableParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["enterprises/%1$s/reputation", enterprise_id],
            body: parsed,
            model: Telnyx::Models::Enterprises::ReputationEnableResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Enterprises::ReputationUpdateFrequencyParams} for more details.
        #
        # Update how often Telnyx refreshes the reputation data for this enterprise's
        # registered numbers. The new frequency takes effect on the next scheduled
        # refresh.
        #
        # The enterprise's reputation must be in `approved` status. A request made while
        # the status is `pending` is rejected with `400 Bad Request`.
        #
        # @overload update_frequency(enterprise_id, check_frequency:, request_options: {})
        #
        # @param enterprise_id [String] The enterprise id. Lowercase UUID.
        #
        # @param check_frequency [Symbol, Telnyx::Models::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency] How often Telnyx refreshes the stored reputation data for this enterprise's regi
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
          @loa = Telnyx::Resources::Enterprises::Reputation::Loa.new(client: client)
        end
      end
    end
  end
end
