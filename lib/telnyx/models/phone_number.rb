# frozen_string_literal: true

module Telnyx
  module Models
    class PhoneNumber < Telnyx::Internal::Type::BaseModel
      # @!attribute phone_number
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!attribute regulatory_requirements
      #
      #   @return [Array<Telnyx::Models::SubNumberOrderRegulatoryRequirementWithValue>, nil]
      optional :regulatory_requirements,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SubNumberOrderRegulatoryRequirementWithValue] }

      response_only do
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute bundle_id
        #
        #   @return [String, nil]
        optional :bundle_id, String

        # @!attribute country_code
        #   Country code of the phone number
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute country_iso_alpha2
        #   The ISO 3166-1 alpha-2 country code of the phone number.
        #
        #   @return [String, nil]
        optional :country_iso_alpha2, String

        # @!attribute phone_number_type
        #   Phone number type
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumber::PhoneNumberType, nil]
        optional :phone_number_type, enum: -> { Telnyx::PhoneNumber::PhoneNumberType }

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
        #   Status of document requirements (if applicable)
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumber::RequirementsStatus, nil]
        optional :requirements_status, enum: -> { Telnyx::PhoneNumber::RequirementsStatus }

        # @!attribute status
        #   The status of the phone number in the order.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumber::Status, nil]
        optional :status, enum: -> { Telnyx::PhoneNumber::Status }
      end

      # @!method initialize(id: nil, bundle_id: nil, country_code: nil, country_iso_alpha2: nil, phone_number: nil, phone_number_type: nil, record_type: nil, regulatory_requirements: nil, requirements_met: nil, requirements_status: nil, status: nil)
      #   @param id [String]
      #
      #   @param bundle_id [String]
      #
      #   @param country_code [String] Country code of the phone number
      #
      #   @param country_iso_alpha2 [String] The ISO 3166-1 alpha-2 country code of the phone number.
      #
      #   @param phone_number [String]
      #
      #   @param phone_number_type [Symbol, Telnyx::Models::PhoneNumber::PhoneNumberType] Phone number type
      #
      #   @param record_type [String]
      #
      #   @param regulatory_requirements [Array<Telnyx::Models::SubNumberOrderRegulatoryRequirementWithValue>]
      #
      #   @param requirements_met [Boolean] True if all requirements are met for a phone number, false otherwise.
      #
      #   @param requirements_status [Symbol, Telnyx::Models::PhoneNumber::RequirementsStatus] Status of document requirements (if applicable)
      #
      #   @param status [Symbol, Telnyx::Models::PhoneNumber::Status] The status of the phone number in the order.

      # Phone number type
      #
      # @see Telnyx::Models::PhoneNumber#phone_number_type
      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        LOCAL = :local
        MOBILE = :mobile
        NATIONAL = :national
        SHARED_COST = :shared_cost
        TOLL_FREE = :toll_free

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status of document requirements (if applicable)
      #
      # @see Telnyx::Models::PhoneNumber#requirements_status
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
      # @see Telnyx::Models::PhoneNumber#status
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
