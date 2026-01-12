# frozen_string_literal: true

module Telnyx
  module Models
    class PortingOrderMisc < Telnyx::Internal::Type::BaseModel
      # @!attribute new_billing_phone_number
      #   New billing phone number for the remaining numbers. Used in case the current
      #   billing phone number is being ported to Telnyx. This will be set on your account
      #   with your current service provider and should be one of the numbers remaining on
      #   that account.
      #
      #   @return [String, nil]
      optional :new_billing_phone_number, String, nil?: true

      # @!attribute remaining_numbers_action
      #   Remaining numbers can be either kept with their current service provider or
      #   disconnected. 'new_billing_telephone_number' is required when
      #   'remaining_numbers_action' is 'keep'.
      #
      #   @return [Symbol, Telnyx::Models::PortingOrderMisc::RemainingNumbersAction, nil]
      optional :remaining_numbers_action,
               enum: -> { Telnyx::PortingOrderMisc::RemainingNumbersAction },
               nil?: true

      # @!attribute type
      #   A port can be either 'full' or 'partial'. When type is 'full' the other
      #   attributes should be omitted.
      #
      #   @return [Symbol, Telnyx::Models::PortingOrderType, nil]
      optional :type, enum: -> { Telnyx::PortingOrderType }

      # @!method initialize(new_billing_phone_number: nil, remaining_numbers_action: nil, type: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PortingOrderMisc} for more details.
      #
      #   @param new_billing_phone_number [String, nil] New billing phone number for the remaining numbers. Used in case the current bil
      #
      #   @param remaining_numbers_action [Symbol, Telnyx::Models::PortingOrderMisc::RemainingNumbersAction, nil] Remaining numbers can be either kept with their current service provider or disc
      #
      #   @param type [Symbol, Telnyx::Models::PortingOrderType] A port can be either 'full' or 'partial'. When type is 'full' the other attribut

      # Remaining numbers can be either kept with their current service provider or
      # disconnected. 'new_billing_telephone_number' is required when
      # 'remaining_numbers_action' is 'keep'.
      #
      # @see Telnyx::Models::PortingOrderMisc#remaining_numbers_action
      module RemainingNumbersAction
        extend Telnyx::Internal::Type::Enum

        KEEP = :keep
        DISCONNECT = :disconnect

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
