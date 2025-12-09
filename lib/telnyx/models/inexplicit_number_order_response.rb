# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::InexplicitNumberOrders#list
    class InexplicitNumberOrderResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the inexplicit number order
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute billing_group_id
      #   Billing group id to apply to phone numbers that are purchased
      #
      #   @return [String, nil]
      optional :billing_group_id, String

      # @!attribute connection_id
      #   Connection id to apply to phone numbers that are purchased
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!attribute created_at
      #   ISO 8601 formatted date indicating when the resource was created
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute customer_reference
      #   Reference label for the customer
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute messaging_profile_id
      #   Messaging profile id to apply to phone numbers that are purchased
      #
      #   @return [String, nil]
      optional :messaging_profile_id, String

      # @!attribute ordering_groups
      #
      #   @return [Array<Telnyx::Models::InexplicitNumberOrderResponse::OrderingGroup>, nil]
      optional :ordering_groups,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::InexplicitNumberOrderResponse::OrderingGroup] }

      # @!attribute updated_at
      #   ISO 8601 formatted date indicating when the resource was updated
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id: nil, billing_group_id: nil, connection_id: nil, created_at: nil, customer_reference: nil, messaging_profile_id: nil, ordering_groups: nil, updated_at: nil)
      #   @param id [String] Unique identifier for the inexplicit number order
      #
      #   @param billing_group_id [String] Billing group id to apply to phone numbers that are purchased
      #
      #   @param connection_id [String] Connection id to apply to phone numbers that are purchased
      #
      #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created
      #
      #   @param customer_reference [String] Reference label for the customer
      #
      #   @param messaging_profile_id [String] Messaging profile id to apply to phone numbers that are purchased
      #
      #   @param ordering_groups [Array<Telnyx::Models::InexplicitNumberOrderResponse::OrderingGroup>]
      #
      #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated

      class OrderingGroup < Telnyx::Internal::Type::BaseModel
        # @!attribute administrative_area
        #   Filter for phone numbers in a given state / province
        #
        #   @return [String, nil]
        optional :administrative_area, String

        # @!attribute count_allocated
        #   Quantity of phone numbers allocated
        #
        #   @return [Integer, nil]
        optional :count_allocated, Integer

        # @!attribute count_requested
        #   Quantity of phone numbers requested
        #
        #   @return [Integer, nil]
        optional :count_requested, Integer

        # @!attribute country_iso
        #   Country where you would like to purchase phone numbers
        #
        #   @return [String, nil]
        optional :country_iso, String

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the ordering group was created
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute error_reason
        #   Error reason if applicable
        #
        #   @return [String, nil]
        optional :error_reason, String

        # @!attribute exclude_held_numbers
        #   Filter to exclude phone numbers that are currently on hold/reserved for your
        #   account.
        #
        #   @return [Boolean, nil]
        optional :exclude_held_numbers, Telnyx::Internal::Type::Boolean

        # @!attribute national_destination_code
        #   Filter by area code
        #
        #   @return [String, nil]
        optional :national_destination_code, String

        # @!attribute orders
        #   Array of orders created to fulfill the inexplicit order
        #
        #   @return [Array<Telnyx::Models::InexplicitNumberOrderResponse::OrderingGroup::Order>, nil]
        optional :orders,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::InexplicitNumberOrderResponse::OrderingGroup::Order] }

        # @!attribute phone_number_type
        #   Number type
        #
        #   @return [String, nil]
        optional :phone_number_type, String

        # @!attribute phone_number_contains
        #   Filter for phone numbers that contain the digits specified
        #
        #   @return [String, nil]
        optional :phone_number_contains, String, api_name: :"phone_number[contains]"

        # @!attribute phone_number_ends_with
        #   Filter by the ending digits of the phone number
        #
        #   @return [String, nil]
        optional :phone_number_ends_with, String, api_name: :"phone_number[ends_with]"

        # @!attribute phone_number_starts_with
        #   Filter by the starting digits of the phone number
        #
        #   @return [String, nil]
        optional :phone_number_starts_with, String, api_name: :"phone_number[starts_with]"

        # @!attribute quickship
        #   Filter to exclude phone numbers that need additional time after to purchase to
        #   activate. Only applicable for +1 toll_free numbers.
        #
        #   @return [Boolean, nil]
        optional :quickship, Telnyx::Internal::Type::Boolean

        # @!attribute status
        #   Status of the ordering group
        #
        #   @return [Symbol, Telnyx::Models::InexplicitNumberOrderResponse::OrderingGroup::Status, nil]
        optional :status, enum: -> { Telnyx::InexplicitNumberOrderResponse::OrderingGroup::Status }

        # @!attribute strategy
        #   Ordering strategy used
        #
        #   @return [Symbol, Telnyx::Models::InexplicitNumberOrderResponse::OrderingGroup::Strategy, nil]
        optional :strategy, enum: -> { Telnyx::InexplicitNumberOrderResponse::OrderingGroup::Strategy }

        # @!attribute updated_at
        #   ISO 8601 formatted date indicating when the ordering group was updated
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!method initialize(administrative_area: nil, count_allocated: nil, count_requested: nil, country_iso: nil, created_at: nil, error_reason: nil, exclude_held_numbers: nil, national_destination_code: nil, orders: nil, phone_number_type: nil, phone_number_contains: nil, phone_number_ends_with: nil, phone_number_starts_with: nil, quickship: nil, status: nil, strategy: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::InexplicitNumberOrderResponse::OrderingGroup} for more details.
        #
        #   @param administrative_area [String] Filter for phone numbers in a given state / province
        #
        #   @param count_allocated [Integer] Quantity of phone numbers allocated
        #
        #   @param count_requested [Integer] Quantity of phone numbers requested
        #
        #   @param country_iso [String] Country where you would like to purchase phone numbers
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the ordering group was created
        #
        #   @param error_reason [String] Error reason if applicable
        #
        #   @param exclude_held_numbers [Boolean] Filter to exclude phone numbers that are currently on hold/reserved for your acc
        #
        #   @param national_destination_code [String] Filter by area code
        #
        #   @param orders [Array<Telnyx::Models::InexplicitNumberOrderResponse::OrderingGroup::Order>] Array of orders created to fulfill the inexplicit order
        #
        #   @param phone_number_type [String] Number type
        #
        #   @param phone_number_contains [String] Filter for phone numbers that contain the digits specified
        #
        #   @param phone_number_ends_with [String] Filter by the ending digits of the phone number
        #
        #   @param phone_number_starts_with [String] Filter by the starting digits of the phone number
        #
        #   @param quickship [Boolean] Filter to exclude phone numbers that need additional time after to purchase to a
        #
        #   @param status [Symbol, Telnyx::Models::InexplicitNumberOrderResponse::OrderingGroup::Status] Status of the ordering group
        #
        #   @param strategy [Symbol, Telnyx::Models::InexplicitNumberOrderResponse::OrderingGroup::Strategy] Ordering strategy used
        #
        #   @param updated_at [Time] ISO 8601 formatted date indicating when the ordering group was updated

        class Order < Telnyx::Internal::Type::BaseModel
          # @!attribute number_order_id
          #   ID of the main number order
          #
          #   @return [String]
          required :number_order_id, String

          # @!attribute sub_number_order_ids
          #   Array of sub number order IDs
          #
          #   @return [Array<String>]
          required :sub_number_order_ids, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(number_order_id:, sub_number_order_ids:)
          #   @param number_order_id [String] ID of the main number order
          #
          #   @param sub_number_order_ids [Array<String>] Array of sub number order IDs
        end

        # Status of the ordering group
        #
        # @see Telnyx::Models::InexplicitNumberOrderResponse::OrderingGroup#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          PROCESSING = :processing
          FAILED = :failed
          SUCCESS = :success
          PARTIAL_SUCCESS = :partial_success

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Ordering strategy used
        #
        # @see Telnyx::Models::InexplicitNumberOrderResponse::OrderingGroup#strategy
        module Strategy
          extend Telnyx::Internal::Type::Enum

          ALWAYS = :always
          NEVER = :never

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
