# frozen_string_literal: true

module Telnyx
  module Models
    class NumberOrderPhoneNumber < Telnyx::Internal::Type::BaseModel
      # @!attribute country_code
      #
      #   @return [String, nil]
      optional :country_code, String

      # @!attribute deadline
      #
      #   @return [Time, nil]
      optional :deadline, Time

      # @!attribute is_block_number
      #
      #   @return [Boolean, nil]
      optional :is_block_number, Telnyx::Internal::Type::Boolean

      # @!attribute locality
      #
      #   @return [String, nil]
      optional :locality, String

      # @!attribute order_request_id
      #
      #   @return [String, nil]
      optional :order_request_id, String

      # @!attribute phone_number
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!attribute phone_number_type
      #
      #   @return [Symbol, Telnyx::Models::NumberOrderPhoneNumber::PhoneNumberType, nil]
      optional :phone_number_type, enum: -> { Telnyx::NumberOrderPhoneNumber::PhoneNumberType }

      # @!attribute regulatory_requirements
      #
      #   @return [Array<Telnyx::Models::SubNumberOrderRegulatoryRequirementWithValue>, nil]
      optional :regulatory_requirements,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SubNumberOrderRegulatoryRequirementWithValue] }

      # @!attribute sub_number_order_id
      #
      #   @return [String, nil]
      optional :sub_number_order_id, String

      response_only do
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute bundle_id
        #
        #   @return [String, nil]
        optional :bundle_id, String

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute requirements_met
        #   True if all requirements are met for a phone number, false otherwise.
        #
        #   @return [Boolean, nil]
        optional :requirements_met, Telnyx::Internal::Type::Boolean

        # @!attribute requirements_status
        #   Status of requirements (if applicable)
        #
        #   @return [Symbol, Telnyx::Models::NumberOrderPhoneNumber::RequirementsStatus, nil]
        optional :requirements_status, enum: -> { Telnyx::NumberOrderPhoneNumber::RequirementsStatus }

        # @!attribute status
        #   The status of the phone number in the order.
        #
        #   @return [Symbol, Telnyx::Models::NumberOrderPhoneNumber::Status, nil]
        optional :status, enum: -> { Telnyx::NumberOrderPhoneNumber::Status }
      end

      # @!method initialize(id: nil, bundle_id: nil, country_code: nil, deadline: nil, is_block_number: nil, locality: nil, order_request_id: nil, phone_number: nil, phone_number_type: nil, record_type: nil, regulatory_requirements: nil, requirements_met: nil, requirements_status: nil, status: nil, sub_number_order_id: nil)
      #   @param id [String]
      #
      #   @param bundle_id [String]
      #
      #   @param country_code [String]
      #
      #   @param deadline [Time]
      #
      #   @param is_block_number [Boolean]
      #
      #   @param locality [String]
      #
      #   @param order_request_id [String]
      #
      #   @param phone_number [String]
      #
      #   @param phone_number_type [Symbol, Telnyx::Models::NumberOrderPhoneNumber::PhoneNumberType]
      #
      #   @param record_type [String]
      #
      #   @param regulatory_requirements [Array<Telnyx::Models::SubNumberOrderRegulatoryRequirementWithValue>]
      #
      #   @param requirements_met [Boolean] True if all requirements are met for a phone number, false otherwise.
      #
      #   @param requirements_status [Symbol, Telnyx::Models::NumberOrderPhoneNumber::RequirementsStatus] Status of requirements (if applicable)
      #
      #   @param status [Symbol, Telnyx::Models::NumberOrderPhoneNumber::Status] The status of the phone number in the order.
      #
      #   @param sub_number_order_id [String]

      # @see Telnyx::Models::NumberOrderPhoneNumber#phone_number_type
      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        LOCAL = :local
        TOLL_FREE = :toll_free
        MOBILE = :mobile
        NATIONAL = :national
        SHARED_COST = :shared_cost
        LANDLINE = :landline

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status of requirements (if applicable)
      #
      # @see Telnyx::Models::NumberOrderPhoneNumber#requirements_status
      module RequirementsStatus
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        APPROVED = :approved
        CANCELLED = :cancelled
        DELETED = :deleted
        REQUIREMENT_INFO_EXCEPTION = :"requirement-info-exception"
        REQUIREMENT_INFO_PENDING = :"requirement-info-pending"
        REQUIREMENT_INFO_UNDER_REVIEW = :"requirement-info-under-review"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The status of the phone number in the order.
      #
      # @see Telnyx::Models::NumberOrderPhoneNumber#status
      module Status
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        SUCCESS = :success
        FAILURE = :failure

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
