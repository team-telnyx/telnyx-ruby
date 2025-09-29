# frozen_string_literal: true

module Telnyx
  module Models
    class SubNumberOrder < Telnyx::Internal::Type::BaseModel
      # @!attribute customer_reference
      #   A customer reference string for customer look ups.
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute phone_number_type
      #
      #   @return [Symbol, Telnyx::Models::SubNumberOrder::PhoneNumberType, nil]
      optional :phone_number_type, enum: -> { Telnyx::SubNumberOrder::PhoneNumberType }

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
        #   @return [Symbol, Telnyx::Models::SubNumberOrder::Status, nil]
        optional :status, enum: -> { Telnyx::SubNumberOrder::Status }

        # @!attribute updated_at
        #   An ISO 8901 datetime string for when the number order was updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time
      end

      # @!method initialize(id: nil, country_code: nil, created_at: nil, customer_reference: nil, is_block_sub_number_order: nil, order_request_id: nil, phone_number_type: nil, phone_numbers_count: nil, record_type: nil, regulatory_requirements: nil, requirements_met: nil, status: nil, updated_at: nil, user_id: nil)
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
      #   @param phone_number_type [Symbol, Telnyx::Models::SubNumberOrder::PhoneNumberType]
      #
      #   @param phone_numbers_count [Integer] The count of phone numbers in the number order.
      #
      #   @param record_type [String]
      #
      #   @param regulatory_requirements [Array<Telnyx::Models::SubNumberOrderRegulatoryRequirement>]
      #
      #   @param requirements_met [Boolean] True if all requirements are met for every phone number, false otherwise.
      #
      #   @param status [Symbol, Telnyx::Models::SubNumberOrder::Status] The status of the order.
      #
      #   @param updated_at [Time] An ISO 8901 datetime string for when the number order was updated.
      #
      #   @param user_id [String]

      # @see Telnyx::Models::SubNumberOrder#phone_number_type
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

      # The status of the order.
      #
      # @see Telnyx::Models::SubNumberOrder#status
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
