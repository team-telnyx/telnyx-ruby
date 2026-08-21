# frozen_string_literal: true

module Telnyx
  module Models
    class NumbersSubNumberOrder < Telnyx::Internal::Type::BaseModel
      # @!attribute customer_reference
      #   A customer reference string for customer look ups.
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute phone_number_type
      #
      #   @return [Symbol, Telnyx::Models::NumbersSubNumberOrder::PhoneNumberType, nil]
      optional :phone_number_type, enum: -> { Telnyx::NumbersSubNumberOrder::PhoneNumberType }

      # @!attribute regulatory_requirements
      #
      #   @return [Array<Telnyx::Models::SubNumberOrderRegulatoryRequirement>, nil]
      optional :regulatory_requirements,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SubNumberOrderRegulatoryRequirement] }

      # @!attribute user_id
      #
      #   @return [String, nil]
      optional :user_id, String

      response_only do
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute country_code
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute created_at
        #   An ISO 8901 datetime string denoting when the number order was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute is_block_sub_number_order
        #   True if the sub number order is a block sub number order
        #
        #   @return [Boolean, nil]
        optional :is_block_sub_number_order, Telnyx::Internal::Type::Boolean

        # @!attribute order_request_id
        #
        #   @return [String, nil]
        optional :order_request_id, String

        # @!attribute phone_numbers
        #   The first 50 phone numbers in the sub number order, including their per-number
        #   regulatory requirement statuses. Only present when
        #   filter[include_phone_numbers]=true is used.
        #
        #   @return [Array<Telnyx::Models::NumbersSubNumberOrder::PhoneNumber>, nil]
        optional :phone_numbers,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::NumbersSubNumberOrder::PhoneNumber] }

        # @!attribute phone_numbers_count
        #   The count of phone numbers in the number order.
        #
        #   @return [Integer, nil]
        optional :phone_numbers_count, Integer

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute requirements_met
        #   True if all requirements are met for every phone number, false otherwise.
        #
        #   @return [Boolean, nil]
        optional :requirements_met, Telnyx::Internal::Type::Boolean

        # @!attribute status
        #   The status of the order.
        #
        #   @return [Symbol, Telnyx::Models::NumbersSubNumberOrder::Status, nil]
        optional :status, enum: -> { Telnyx::NumbersSubNumberOrder::Status }

        # @!attribute updated_at
        #   An ISO 8901 datetime string for when the number order was updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time
      end

      # @!method initialize(id: nil, country_code: nil, created_at: nil, customer_reference: nil, is_block_sub_number_order: nil, order_request_id: nil, phone_number_type: nil, phone_numbers: nil, phone_numbers_count: nil, record_type: nil, regulatory_requirements: nil, requirements_met: nil, status: nil, updated_at: nil, user_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::NumbersSubNumberOrder} for more details.
      #
      #   @param id [String]
      #
      #   @param country_code [String]
      #
      #   @param created_at [Time] An ISO 8901 datetime string denoting when the number order was created.
      #
      #   @param customer_reference [String] A customer reference string for customer look ups.
      #
      #   @param is_block_sub_number_order [Boolean] True if the sub number order is a block sub number order
      #
      #   @param order_request_id [String]
      #
      #   @param phone_number_type [Symbol, Telnyx::Models::NumbersSubNumberOrder::PhoneNumberType]
      #
      #   @param phone_numbers [Array<Telnyx::Models::NumbersSubNumberOrder::PhoneNumber>] The first 50 phone numbers in the sub number order, including their per-number r
      #
      #   @param phone_numbers_count [Integer] The count of phone numbers in the number order.
      #
      #   @param record_type [String]
      #
      #   @param regulatory_requirements [Array<Telnyx::Models::SubNumberOrderRegulatoryRequirement>]
      #
      #   @param requirements_met [Boolean] True if all requirements are met for every phone number, false otherwise.
      #
      #   @param status [Symbol, Telnyx::Models::NumbersSubNumberOrder::Status] The status of the order.
      #
      #   @param updated_at [Time] An ISO 8901 datetime string for when the number order was updated.
      #
      #   @param user_id [String]

      # @see Telnyx::Models::NumbersSubNumberOrder#phone_number_type
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

      class PhoneNumber < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute bundle_id
        #
        #   @return [String, nil]
        optional :bundle_id, String, nil?: true

        # @!attribute country_code
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute phone_number
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute phone_number_type
        #
        #   @return [String, nil]
        optional :phone_number_type, String

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute regulatory_requirements
        #
        #   @return [Array<Telnyx::Models::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement>, nil]
        optional :regulatory_requirements,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement] }

        # @!attribute requirements_met
        #
        #   @return [Boolean, nil]
        optional :requirements_met, Telnyx::Internal::Type::Boolean

        # @!attribute requirements_status
        #
        #   @return [String, nil]
        optional :requirements_status, String

        # @!attribute status
        #
        #   @return [String, nil]
        optional :status, String

        # @!method initialize(id: nil, bundle_id: nil, country_code: nil, phone_number: nil, phone_number_type: nil, record_type: nil, regulatory_requirements: nil, requirements_met: nil, requirements_status: nil, status: nil)
        #   @param id [String]
        #   @param bundle_id [String, nil]
        #   @param country_code [String]
        #   @param phone_number [String]
        #   @param phone_number_type [String]
        #   @param record_type [String]
        #   @param regulatory_requirements [Array<Telnyx::Models::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement>]
        #   @param requirements_met [Boolean]
        #   @param requirements_status [String]
        #   @param status [String]

        class RegulatoryRequirement < Telnyx::Internal::Type::BaseModel
          # @!attribute field_value
          #   The value of the requirement, this could be an id to a resource or a string
          #   value.
          #
          #   @return [String, nil]
          optional :field_value, String

          # @!attribute requirement_id
          #   Unique id for a requirement.
          #
          #   @return [String, nil]
          optional :requirement_id, String

          response_only do
            # @!attribute field_type
            #
            #   @return [Symbol, Telnyx::Models::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::FieldType, nil]
            optional :field_type,
                     enum: -> { Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::FieldType }

            # @!attribute record_type
            #
            #   @return [String, nil]
            optional :record_type, String

            # @!attribute status
            #   The status of the regulatory requirement for this phone number.
            #
            #   @return [Symbol, Telnyx::Models::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::Status, nil]
            optional :status, enum: -> { Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::Status }
          end

          # @!method initialize(field_type: nil, field_value: nil, record_type: nil, requirement_id: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement} for
          #   more details.
          #
          #   @param field_type [Symbol, Telnyx::Models::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::FieldType]
          #
          #   @param field_value [String] The value of the requirement, this could be an id to a resource or a string valu
          #
          #   @param record_type [String]
          #
          #   @param requirement_id [String] Unique id for a requirement.
          #
          #   @param status [Symbol, Telnyx::Models::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::Status] The status of the regulatory requirement for this phone number.

          # @see Telnyx::Models::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement#field_type
          module FieldType
            extend Telnyx::Internal::Type::Enum

            TEXTUAL = :textual
            DATETIME = :datetime
            ADDRESS = :address
            DOCUMENT = :document

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The status of the regulatory requirement for this phone number.
          #
          # @see Telnyx::Models::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement#status
          module Status
            extend Telnyx::Internal::Type::Enum

            APPROVED = :approved
            DECLINED = :declined
            AWAITING_VALUE = :"awaiting-value"
            PENDING_APPROVAL = :"pending-approval"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # The status of the order.
      #
      # @see Telnyx::Models::NumbersSubNumberOrder#status
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
