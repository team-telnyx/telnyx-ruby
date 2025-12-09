# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::AssociatedPhoneNumbers#list
      class PortingAssociatedPhoneNumber < Telnyx::Internal::Type::BaseModel
        # @!attribute action
        #   Specifies the action to take with this phone number during partial porting.
        #
        #   @return [Symbol, Telnyx::Models::PortingOrders::PortingAssociatedPhoneNumber::Action, nil]
        optional :action, enum: -> { Telnyx::PortingOrders::PortingAssociatedPhoneNumber::Action }

        # @!attribute country_code
        #   Specifies the country code for this associated phone number. It is a two-letter
        #   ISO 3166-1 alpha-2 country code.
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute phone_number_range
        #   Specifies the phone number range for this associated phone number.
        #
        #   @return [Telnyx::Models::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberRange, nil]
        optional :phone_number_range, -> { Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberRange }

        # @!attribute phone_number_type
        #   Specifies the phone number type for this associated phone number.
        #
        #   @return [Symbol, Telnyx::Models::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberType, nil]
        optional :phone_number_type,
                 enum: -> { Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberType }

        # @!attribute porting_order_id
        #   Identifies the porting order associated with this phone number.
        #
        #   @return [String, nil]
        optional :porting_order_id, String

        response_only do
          # @!attribute id
          #   Uniquely identifies this associated phone number.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute updated_at
          #   ISO 8601 formatted date indicating when the resource was last updated.
          #
          #   @return [Time, nil]
          optional :updated_at, Time
        end

        # @!method initialize(id: nil, action: nil, country_code: nil, created_at: nil, phone_number_range: nil, phone_number_type: nil, porting_order_id: nil, record_type: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrders::PortingAssociatedPhoneNumber} for more details.
        #
        #   @param id [String] Uniquely identifies this associated phone number.
        #
        #   @param action [Symbol, Telnyx::Models::PortingOrders::PortingAssociatedPhoneNumber::Action] Specifies the action to take with this phone number during partial porting.
        #
        #   @param country_code [String] Specifies the country code for this associated phone number. It is a two-letter
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param phone_number_range [Telnyx::Models::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberRange] Specifies the phone number range for this associated phone number.
        #
        #   @param phone_number_type [Symbol, Telnyx::Models::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberType] Specifies the phone number type for this associated phone number.
        #
        #   @param porting_order_id [String] Identifies the porting order associated with this phone number.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was last updated.

        # Specifies the action to take with this phone number during partial porting.
        #
        # @see Telnyx::Models::PortingOrders::PortingAssociatedPhoneNumber#action
        module Action
          extend Telnyx::Internal::Type::Enum

          KEEP = :keep
          DISCONNECT = :disconnect

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::PortingOrders::PortingAssociatedPhoneNumber#phone_number_range
        class PhoneNumberRange < Telnyx::Internal::Type::BaseModel
          # @!attribute end_at
          #   Specifies the end of the phone number range for this associated phone number.
          #
          #   @return [String, nil]
          optional :end_at, String

          # @!attribute start_at
          #   Specifies the start of the phone number range for this associated phone number.
          #
          #   @return [String, nil]
          optional :start_at, String

          # @!method initialize(end_at: nil, start_at: nil)
          #   Specifies the phone number range for this associated phone number.
          #
          #   @param end_at [String] Specifies the end of the phone number range for this associated phone number.
          #
          #   @param start_at [String] Specifies the start of the phone number range for this associated phone number.
        end

        # Specifies the phone number type for this associated phone number.
        #
        # @see Telnyx::Models::PortingOrders::PortingAssociatedPhoneNumber#phone_number_type
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
      end
    end
  end
end
