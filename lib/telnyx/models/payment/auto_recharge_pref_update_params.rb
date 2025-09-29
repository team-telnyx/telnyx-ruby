# frozen_string_literal: true

module Telnyx
  module Models
    module Payment
      # @see Telnyx::Resources::Payment::AutoRechargePrefs#update
      class AutoRechargePrefUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute enabled
        #   Whether auto recharge is enabled.
        #
        #   @return [Boolean, nil]
        optional :enabled, Telnyx::Internal::Type::Boolean

        # @!attribute invoice_enabled
        #
        #   @return [Boolean, nil]
        optional :invoice_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute preference
        #   The payment preference for auto recharge.
        #
        #   @return [Symbol, Telnyx::Models::Payment::AutoRechargePrefUpdateParams::Preference, nil]
        optional :preference, enum: -> { Telnyx::Payment::AutoRechargePrefUpdateParams::Preference }

        # @!attribute recharge_amount
        #   The amount to recharge the account, the actual recharge amount will be the
        #   amount necessary to reach the threshold amount plus the recharge amount.
        #
        #   @return [String, nil]
        optional :recharge_amount, String

        # @!attribute threshold_amount
        #   The threshold amount at which the account will be recharged.
        #
        #   @return [String, nil]
        optional :threshold_amount, String

        # @!method initialize(enabled: nil, invoice_enabled: nil, preference: nil, recharge_amount: nil, threshold_amount: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Payment::AutoRechargePrefUpdateParams} for more details.
        #
        #   @param enabled [Boolean] Whether auto recharge is enabled.
        #
        #   @param invoice_enabled [Boolean]
        #
        #   @param preference [Symbol, Telnyx::Models::Payment::AutoRechargePrefUpdateParams::Preference] The payment preference for auto recharge.
        #
        #   @param recharge_amount [String] The amount to recharge the account, the actual recharge amount will be the amoun
        #
        #   @param threshold_amount [String] The threshold amount at which the account will be recharged.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # The payment preference for auto recharge.
        module Preference
          extend Telnyx::Internal::Type::Enum

          CREDIT_PAYPAL = :credit_paypal
          ACH = :ach

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
