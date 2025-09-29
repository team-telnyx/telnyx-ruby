# frozen_string_literal: true

module Telnyx
  module Models
    module Payment
      # @see Telnyx::Resources::Payment::AutoRechargePrefs#list
      class AutoRechargePrefListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Payment::AutoRechargePrefListResponse::Data, nil]
        optional :data, -> { Telnyx::Models::Payment::AutoRechargePrefListResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Payment::AutoRechargePrefListResponse::Data]

        # @see Telnyx::Models::Payment::AutoRechargePrefListResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the auto recharge preference.
          #
          #   @return [String, nil]
          optional :id, String

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
          #   @return [Symbol, Telnyx::Models::Payment::AutoRechargePrefListResponse::Data::Preference, nil]
          optional :preference, enum: -> { Telnyx::Models::Payment::AutoRechargePrefListResponse::Data::Preference }

          # @!attribute recharge_amount
          #   The amount to recharge the account, the actual recharge amount will be the
          #   amount necessary to reach the threshold amount plus the recharge amount.
          #
          #   @return [String, nil]
          optional :recharge_amount, String

          # @!attribute record_type
          #   The record type.
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute threshold_amount
          #   The threshold amount at which the account will be recharged.
          #
          #   @return [String, nil]
          optional :threshold_amount, String

          # @!method initialize(id: nil, enabled: nil, invoice_enabled: nil, preference: nil, recharge_amount: nil, record_type: nil, threshold_amount: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Payment::AutoRechargePrefListResponse::Data} for more details.
          #
          #   @param id [String] The unique identifier for the auto recharge preference.
          #
          #   @param enabled [Boolean] Whether auto recharge is enabled.
          #
          #   @param invoice_enabled [Boolean]
          #
          #   @param preference [Symbol, Telnyx::Models::Payment::AutoRechargePrefListResponse::Data::Preference] The payment preference for auto recharge.
          #
          #   @param recharge_amount [String] The amount to recharge the account, the actual recharge amount will be the amoun
          #
          #   @param record_type [String] The record type.
          #
          #   @param threshold_amount [String] The threshold amount at which the account will be recharged.

          # The payment preference for auto recharge.
          #
          # @see Telnyx::Models::Payment::AutoRechargePrefListResponse::Data#preference
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
end
