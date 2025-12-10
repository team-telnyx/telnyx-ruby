# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      class PortingPhoneNumberBlock < Telnyx::Internal::Type::BaseModel
        # @!attribute activation_ranges
        #   Specifies the activation ranges for this porting phone number block. The
        #   activation range must be within the phone number range and should not overlap
        #   with other activation ranges.
        #
        #   @return [Array<Telnyx::Models::PortingOrders::PortingPhoneNumberBlock::ActivationRange>, nil]
        optional :activation_ranges,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrders::PortingPhoneNumberBlock::ActivationRange] }

        # @!attribute country_code
        #   Specifies the country code for this porting phone number block. It is a
        #   two-letter ISO 3166-1 alpha-2 country code.
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute phone_number_range
        #   Specifies the phone number range for this porting phone number block.
        #
        #   @return [Telnyx::Models::PortingOrders::PortingPhoneNumberBlock::PhoneNumberRange, nil]
        optional :phone_number_range, -> { Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberRange }

        # @!attribute phone_number_type
        #   Specifies the phone number type for this porting phone number block.
        #
        #   @return [Symbol, Telnyx::Models::PortingOrders::PortingPhoneNumberBlock::PhoneNumberType, nil]
        optional :phone_number_type, enum: -> { Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberType }

        response_only do
          # @!attribute id
          #   Uniquely identifies this porting phone number block.
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

        # @!method initialize(id: nil, activation_ranges: nil, country_code: nil, created_at: nil, phone_number_range: nil, phone_number_type: nil, record_type: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrders::PortingPhoneNumberBlock} for more details.
        #
        #   @param id [String] Uniquely identifies this porting phone number block.
        #
        #   @param activation_ranges [Array<Telnyx::Models::PortingOrders::PortingPhoneNumberBlock::ActivationRange>] Specifies the activation ranges for this porting phone number block. The activat
        #
        #   @param country_code [String] Specifies the country code for this porting phone number block. It is a two-lett
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param phone_number_range [Telnyx::Models::PortingOrders::PortingPhoneNumberBlock::PhoneNumberRange] Specifies the phone number range for this porting phone number block.
        #
        #   @param phone_number_type [Symbol, Telnyx::Models::PortingOrders::PortingPhoneNumberBlock::PhoneNumberType] Specifies the phone number type for this porting phone number block.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was last updated.

        class ActivationRange < Telnyx::Internal::Type::BaseModel
          # @!attribute end_at
          #   Specifies the end of the activation range. It must be no more than the end of
          #   the phone number range.
          #
          #   @return [String, nil]
          optional :end_at, String

          # @!attribute start_at
          #   Specifies the start of the activation range. Must be greater or equal the start
          #   of the phone number range.
          #
          #   @return [String, nil]
          optional :start_at, String

          # @!method initialize(end_at: nil, start_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PortingOrders::PortingPhoneNumberBlock::ActivationRange} for
          #   more details.
          #
          #   @param end_at [String] Specifies the end of the activation range. It must be no more than the end of th
          #
          #   @param start_at [String] Specifies the start of the activation range. Must be greater or equal the start
        end

        # @see Telnyx::Models::PortingOrders::PortingPhoneNumberBlock#phone_number_range
        class PhoneNumberRange < Telnyx::Internal::Type::BaseModel
          # @!attribute end_at
          #   Specifies the end of the phone number range for this porting phone number block.
          #
          #   @return [String, nil]
          optional :end_at, String

          # @!attribute start_at
          #   Specifies the start of the phone number range for this porting phone number
          #   block.
          #
          #   @return [String, nil]
          optional :start_at, String

          # @!method initialize(end_at: nil, start_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PortingOrders::PortingPhoneNumberBlock::PhoneNumberRange} for
          #   more details.
          #
          #   Specifies the phone number range for this porting phone number block.
          #
          #   @param end_at [String] Specifies the end of the phone number range for this porting phone number block.
          #
          #   @param start_at [String] Specifies the start of the phone number range for this porting phone number bloc
        end

        # Specifies the phone number type for this porting phone number block.
        #
        # @see Telnyx::Models::PortingOrders::PortingPhoneNumberBlock#phone_number_type
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
