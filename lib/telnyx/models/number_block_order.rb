# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberBlockOrders#list
    class NumberBlockOrder < Telnyx::Internal::Type::BaseModel
      # @!attribute connection_id
      #   Identifies the connection associated to all numbers in the phone number block.
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!attribute customer_reference
      #   A customer reference string for customer look ups.
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute messaging_profile_id
      #   Identifies the messaging profile associated to all numbers in the phone number
      #   block.
      #
      #   @return [String, nil]
      optional :messaging_profile_id, String

      # @!attribute range
      #   The phone number range included in the block.
      #
      #   @return [Integer, nil]
      optional :range, Integer

      # @!attribute starting_number
      #   Starting phone number block
      #
      #   @return [String, nil]
      optional :starting_number, String

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
        #   @return [Symbol, Telnyx::Models::NumberBlockOrder::Status, nil]
        optional :status, enum: -> { Telnyx::NumberBlockOrder::Status }

        # @!attribute updated_at
        #   An ISO 8901 datetime string for when the number order was updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time
      end

      # @!method initialize(id: nil, connection_id: nil, created_at: nil, customer_reference: nil, messaging_profile_id: nil, phone_numbers_count: nil, range: nil, record_type: nil, requirements_met: nil, starting_number: nil, status: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::NumberBlockOrder} for more details.
      #
      #   @param id [String]
      #
      #   @param connection_id [String] Identifies the connection associated to all numbers in the phone number block.
      #
      #   @param created_at [Time] An ISO 8901 datetime string denoting when the number order was created.
      #
      #   @param customer_reference [String] A customer reference string for customer look ups.
      #
      #   @param messaging_profile_id [String] Identifies the messaging profile associated to all numbers in the phone number b
      #
      #   @param phone_numbers_count [Integer] The count of phone numbers in the number order.
      #
      #   @param range [Integer] The phone number range included in the block.
      #
      #   @param record_type [String]
      #
      #   @param requirements_met [Boolean] True if all requirements are met for every phone number, false otherwise.
      #
      #   @param starting_number [String] Starting phone number block
      #
      #   @param status [Symbol, Telnyx::Models::NumberBlockOrder::Status] The status of the order.
      #
      #   @param updated_at [Time] An ISO 8901 datetime string for when the number order was updated.

      # The status of the order.
      #
      # @see Telnyx::Models::NumberBlockOrder#status
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
