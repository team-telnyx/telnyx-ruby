# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PortingPhoneNumbers#list
    class PortingPhoneNumber < Telnyx::Internal::Type::BaseModel
      # @!attribute activation_status
      #   Activation status
      #
      #   @return [Symbol, Telnyx::Models::PortingOrderActivationStatus, nil]
      optional :activation_status, enum: -> { Telnyx::PortingOrderActivationStatus }

      # @!attribute phone_number
      #   E164 formatted phone number
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!attribute phone_number_type
      #   The type of the phone number
      #
      #   @return [Symbol, Telnyx::Models::PortingPhoneNumber::PhoneNumberType, nil]
      optional :phone_number_type, enum: -> { Telnyx::PortingPhoneNumber::PhoneNumberType }

      # @!attribute portability_status
      #   Specifies whether Telnyx is able to confirm portability this number in the
      #   United States & Canada. International phone numbers are provisional by default.
      #
      #   @return [Symbol, Telnyx::Models::PortingPhoneNumber::PortabilityStatus, nil]
      optional :portability_status, enum: -> { Telnyx::PortingPhoneNumber::PortabilityStatus }

      # @!attribute porting_order_id
      #   Identifies the associated port request
      #
      #   @return [String, nil]
      optional :porting_order_id, String

      # @!attribute porting_order_status
      #   The current status of the porting order
      #
      #   @return [Symbol, Telnyx::Models::PortingPhoneNumber::PortingOrderStatus, nil]
      optional :porting_order_status, enum: -> { Telnyx::PortingPhoneNumber::PortingOrderStatus }

      # @!attribute requirements_status
      #   The current status of the requirements in a INTL porting order
      #
      #   @return [Symbol, Telnyx::Models::PortingPhoneNumber::RequirementsStatus, nil]
      optional :requirements_status, enum: -> { Telnyx::PortingPhoneNumber::RequirementsStatus }

      # @!attribute support_key
      #   A key to reference this porting order when contacting Telnyx customer support
      #
      #   @return [String, nil]
      optional :support_key, String

      response_only do
        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String
      end

      # @!method initialize(activation_status: nil, phone_number: nil, phone_number_type: nil, portability_status: nil, porting_order_id: nil, porting_order_status: nil, record_type: nil, requirements_status: nil, support_key: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PortingPhoneNumber} for more details.
      #
      #   @param activation_status [Symbol, Telnyx::Models::PortingOrderActivationStatus] Activation status
      #
      #   @param phone_number [String] E164 formatted phone number
      #
      #   @param phone_number_type [Symbol, Telnyx::Models::PortingPhoneNumber::PhoneNumberType] The type of the phone number
      #
      #   @param portability_status [Symbol, Telnyx::Models::PortingPhoneNumber::PortabilityStatus] Specifies whether Telnyx is able to confirm portability this number in the Unite
      #
      #   @param porting_order_id [String] Identifies the associated port request
      #
      #   @param porting_order_status [Symbol, Telnyx::Models::PortingPhoneNumber::PortingOrderStatus] The current status of the porting order
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param requirements_status [Symbol, Telnyx::Models::PortingPhoneNumber::RequirementsStatus] The current status of the requirements in a INTL porting order
      #
      #   @param support_key [String] A key to reference this porting order when contacting Telnyx customer support

      # The type of the phone number
      #
      # @see Telnyx::Models::PortingPhoneNumber#phone_number_type
      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        LANDLINE = :landline
        LOCAL = :local
        MOBILE = :mobile
        NATIONAL = :national
        SHARED_COST = :shared_cost
        TOLL_FREE = :toll_free

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Specifies whether Telnyx is able to confirm portability this number in the
      # United States & Canada. International phone numbers are provisional by default.
      #
      # @see Telnyx::Models::PortingPhoneNumber#portability_status
      module PortabilityStatus
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        CONFIRMED = :confirmed
        PROVISIONAL = :provisional

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The current status of the porting order
      #
      # @see Telnyx::Models::PortingPhoneNumber#porting_order_status
      module PortingOrderStatus
        extend Telnyx::Internal::Type::Enum

        DRAFT = :draft
        IN_PROCESS = :"in-process"
        SUBMITTED = :submitted
        EXCEPTION = :exception
        FOC_DATE_CONFIRMED = :"foc-date-confirmed"
        CANCEL_PENDING = :"cancel-pending"
        PORTED = :ported
        CANCELLED = :cancelled

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The current status of the requirements in a INTL porting order
      #
      # @see Telnyx::Models::PortingPhoneNumber#requirements_status
      module RequirementsStatus
        extend Telnyx::Internal::Type::Enum

        REQUIREMENT_INFO_PENDING = :"requirement-info-pending"
        REQUIREMENT_INFO_UNDER_REVIEW = :"requirement-info-under-review"
        REQUIREMENT_INFO_EXCEPTION = :"requirement-info-exception"
        APPROVED = :approved

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
