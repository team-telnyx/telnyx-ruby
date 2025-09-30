# frozen_string_literal: true

module Telnyx
  module Resources
    class Payment
      class AutoRechargePrefs
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Payment::AutoRechargePrefUpdateParams} for more details.
        #
        # Update payment auto recharge preferences.
        #
        # @overload update(enabled: nil, invoice_enabled: nil, preference: nil, recharge_amount: nil, threshold_amount: nil, request_options: {})
        #
        # @param enabled [Boolean] Whether auto recharge is enabled.
        #
        # @param invoice_enabled [Boolean]
        #
        # @param preference [Symbol, Telnyx::Models::Payment::AutoRechargePrefUpdateParams::Preference] The payment preference for auto recharge.
        #
        # @param recharge_amount [String] The amount to recharge the account, the actual recharge amount will be the amoun
        #
        # @param threshold_amount [String] The threshold amount at which the account will be recharged.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Payment::AutoRechargePrefUpdateResponse]
        #
        # @see Telnyx::Models::Payment::AutoRechargePrefUpdateParams
        def update(params = {})
          parsed, options = Telnyx::Payment::AutoRechargePrefUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: "payment/auto_recharge_prefs",
            body: parsed,
            model: Telnyx::Models::Payment::AutoRechargePrefUpdateResponse,
            options: options
          )
        end

        # Returns the payment auto recharge preferences.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Payment::AutoRechargePrefListResponse]
        #
        # @see Telnyx::Models::Payment::AutoRechargePrefListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "payment/auto_recharge_prefs",
            model: Telnyx::Models::Payment::AutoRechargePrefListResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
