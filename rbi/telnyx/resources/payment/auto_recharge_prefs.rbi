# typed: strong

module Telnyx
  module Resources
    class Payment
      class AutoRechargePrefs
        # Update payment auto recharge preferences.
        sig do
          params(
            enabled: T::Boolean,
            invoice_enabled: T::Boolean,
            preference:
              Telnyx::Payment::AutoRechargePrefUpdateParams::Preference::OrSymbol,
            recharge_amount: String,
            threshold_amount: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Payment::AutoRechargePrefUpdateResponse)
        end
        def update(
          # Whether auto recharge is enabled.
          enabled: nil,
          invoice_enabled: nil,
          # The payment preference for auto recharge.
          preference: nil,
          # The amount to recharge the account, the actual recharge amount will be the
          # amount necessary to reach the threshold amount plus the recharge amount.
          recharge_amount: nil,
          # The threshold amount at which the account will be recharged.
          threshold_amount: nil,
          request_options: {}
        )
        end

        # Returns the payment auto recharge preferences.
        sig do
          params(request_options: Telnyx::RequestOptions::OrHash).returns(
            Telnyx::Models::Payment::AutoRechargePrefListResponse
          )
        end
        def list(request_options: {})
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
