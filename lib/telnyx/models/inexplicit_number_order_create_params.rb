# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::InexplicitNumberOrders#create
    class InexplicitNumberOrderCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute ordering_groups
      #   Group(s) of numbers to order. You can have multiple ordering_groups objects
      #   added to a single request.
      #
      #   @return [Array<Telnyx::Models::InexplicitNumberOrderCreateParams::OrderingGroup>]
      required :ordering_groups,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup] }

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

      # @!method initialize(ordering_groups:, billing_group_id: nil, connection_id: nil, customer_reference: nil, messaging_profile_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::InexplicitNumberOrderCreateParams} for more details.
      #
      #   @param ordering_groups [Array<Telnyx::Models::InexplicitNumberOrderCreateParams::OrderingGroup>] Group(s) of numbers to order. You can have multiple ordering_groups objects adde
      #
      #   @param billing_group_id [String] Billing group id to apply to phone numbers that are purchased
      #
      #   @param connection_id [String] Connection id to apply to phone numbers that are purchased
      #
      #   @param customer_reference [String] Reference label for the customer
      #
      #   @param messaging_profile_id [String] Messaging profile id to apply to phone numbers that are purchased
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class OrderingGroup < Telnyx::Internal::Type::BaseModel
        # @!attribute count_requested
        #   Quantity of phone numbers to order
        #
        #   @return [String]
        required :count_requested, String

        # @!attribute country_iso
        #   Country where you would like to purchase phone numbers. Allowable values: US, CA
        #
        #   @return [Symbol, Telnyx::Models::InexplicitNumberOrderCreateParams::OrderingGroup::CountryISO]
        required :country_iso, enum: -> { Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::CountryISO }

        # @!attribute phone_number_type
        #   Number type (local, toll-free, etc.)
        #
        #   @return [String]
        required :phone_number_type, String

        # @!attribute administrative_area
        #   Filter for phone numbers in a given state / province
        #
        #   @return [String, nil]
        optional :administrative_area, String

        # @!attribute features
        #   Filter for phone numbers that have the features to satisfy your use case (e.g.,
        #   ["voice"])
        #
        #   @return [Array<String>, nil]
        optional :features, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute locality
        #   Filter for phone numbers in a given city / region / rate center
        #
        #   @return [String, nil]
        optional :locality, String

        # @!attribute national_destination_code
        #   Filter by area code
        #
        #   @return [String, nil]
        optional :national_destination_code, String

        # @!attribute phone_number
        #   Phone number search criteria
        #
        #   @return [Telnyx::Models::InexplicitNumberOrderCreateParams::OrderingGroup::PhoneNumber, nil]
        optional :phone_number, -> { Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::PhoneNumber }

        # @!attribute strategy
        #   Ordering strategy. Define what action should be taken if we don't have enough
        #   phone numbers to fulfill your request. Allowable values are: always = proceed
        #   with ordering phone numbers, regardless of current inventory levels; never = do
        #   not place any orders unless there are enough phone numbers to satisfy the
        #   request. If not specified, the always strategy will be enforced.
        #
        #   @return [Symbol, Telnyx::Models::InexplicitNumberOrderCreateParams::OrderingGroup::Strategy, nil]
        optional :strategy, enum: -> { Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::Strategy }

        # @!method initialize(count_requested:, country_iso:, phone_number_type:, administrative_area: nil, features: nil, locality: nil, national_destination_code: nil, phone_number: nil, strategy: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::InexplicitNumberOrderCreateParams::OrderingGroup} for more
        #   details.
        #
        #   @param count_requested [String] Quantity of phone numbers to order
        #
        #   @param country_iso [Symbol, Telnyx::Models::InexplicitNumberOrderCreateParams::OrderingGroup::CountryISO] Country where you would like to purchase phone numbers. Allowable values: US, CA
        #
        #   @param phone_number_type [String] Number type (local, toll-free, etc.)
        #
        #   @param administrative_area [String] Filter for phone numbers in a given state / province
        #
        #   @param features [Array<String>] Filter for phone numbers that have the features to satisfy your use case (e.g.,
        #
        #   @param locality [String] Filter for phone numbers in a given city / region / rate center
        #
        #   @param national_destination_code [String] Filter by area code
        #
        #   @param phone_number [Telnyx::Models::InexplicitNumberOrderCreateParams::OrderingGroup::PhoneNumber] Phone number search criteria
        #
        #   @param strategy [Symbol, Telnyx::Models::InexplicitNumberOrderCreateParams::OrderingGroup::Strategy] Ordering strategy. Define what action should be taken if we don't have enough ph

        # Country where you would like to purchase phone numbers. Allowable values: US, CA
        #
        # @see Telnyx::Models::InexplicitNumberOrderCreateParams::OrderingGroup#country_iso
        module CountryISO
          extend Telnyx::Internal::Type::Enum

          US = :US
          CA = :CA

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::InexplicitNumberOrderCreateParams::OrderingGroup#phone_number
        class PhoneNumber < Telnyx::Internal::Type::BaseModel
          # @!attribute contains
          #   Filter for phone numbers that contain the digits specified
          #
          #   @return [String, nil]
          optional :contains, String

          # @!attribute ends_with
          #   Filter by the ending digits of the phone number
          #
          #   @return [String, nil]
          optional :ends_with, String

          # @!attribute starts_with
          #   Filter by the starting digits of the phone number
          #
          #   @return [String, nil]
          optional :starts_with, String

          # @!method initialize(contains: nil, ends_with: nil, starts_with: nil)
          #   Phone number search criteria
          #
          #   @param contains [String] Filter for phone numbers that contain the digits specified
          #
          #   @param ends_with [String] Filter by the ending digits of the phone number
          #
          #   @param starts_with [String] Filter by the starting digits of the phone number
        end

        # Ordering strategy. Define what action should be taken if we don't have enough
        # phone numbers to fulfill your request. Allowable values are: always = proceed
        # with ordering phone numbers, regardless of current inventory levels; never = do
        # not place any orders unless there are enough phone numbers to satisfy the
        # request. If not specified, the always strategy will be enforced.
        #
        # @see Telnyx::Models::InexplicitNumberOrderCreateParams::OrderingGroup#strategy
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
