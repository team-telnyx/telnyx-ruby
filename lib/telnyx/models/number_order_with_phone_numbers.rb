# frozen_string_literal: true

module Telnyx
  module Models
    class NumberOrderWithPhoneNumbers < Telnyx::Internal::Type::BaseModel
      # @!attribute billing_group_id
      #   Identifies the messaging profile associated with the phone number.
      #
      #   @return [String, nil]
      optional :billing_group_id, String

      # @!attribute connection_id
      #   Identifies the connection associated with this phone number.
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!attribute customer_reference
      #   A customer reference string for customer look ups.
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute messaging_profile_id
      #   Identifies the messaging profile associated with the phone number.
      #
      #   @return [String, nil]
      optional :messaging_profile_id, String

      # @!attribute phone_numbers
      #
      #   @return [Array<Telnyx::Models::PhoneNumber>, nil]
      optional :phone_numbers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumber] }

      # @!attribute sub_number_orders_ids
      #
      #   @return [Array<String>, nil]
      optional :sub_number_orders_ids, Telnyx::Internal::Type::ArrayOf[String]

      response_only do
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   An ISO 8901 datetime string denoting when the number order was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

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
        #   @return [Symbol, Telnyx::Models::NumberOrderWithPhoneNumbers::Status, nil]
        optional :status, enum: -> { Telnyx::NumberOrderWithPhoneNumbers::Status }

        # @!attribute updated_at
        #   An ISO 8901 datetime string for when the number order was updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time
      end

      # @!method initialize(id: nil, billing_group_id: nil, connection_id: nil, created_at: nil, customer_reference: nil, messaging_profile_id: nil, phone_numbers: nil, phone_numbers_count: nil, record_type: nil, requirements_met: nil, status: nil, sub_number_orders_ids: nil, updated_at: nil)
      #   @param id [String]
      #
      #   @param billing_group_id [String] Identifies the messaging profile associated with the phone number.
      #
      #   @param connection_id [String] Identifies the connection associated with this phone number.
      #
      #   @param created_at [Time] An ISO 8901 datetime string denoting when the number order was created.
      #
      #   @param customer_reference [String] A customer reference string for customer look ups.
      #
      #   @param messaging_profile_id [String] Identifies the messaging profile associated with the phone number.
      #
      #   @param phone_numbers [Array<Telnyx::Models::PhoneNumber>]
      #
      #   @param phone_numbers_count [Integer] The count of phone numbers in the number order.
      #
      #   @param record_type [String]
      #
      #   @param requirements_met [Boolean] True if all requirements are met for every phone number, false otherwise.
      #
      #   @param status [Symbol, Telnyx::Models::NumberOrderWithPhoneNumbers::Status] The status of the order.
      #
      #   @param sub_number_orders_ids [Array<String>]
      #
      #   @param updated_at [Time] An ISO 8901 datetime string for when the number order was updated.

      # The status of the order.
      #
      # @see Telnyx::Models::NumberOrderWithPhoneNumbers#status
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
