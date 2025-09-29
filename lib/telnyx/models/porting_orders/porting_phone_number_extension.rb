# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      class PortingPhoneNumberExtension < Telnyx::Internal::Type::BaseModel
        # @!attribute activation_ranges
        #   Specifies the activation ranges for this porting phone number extension. The
        #   activation range must be within the extension range and should not overlap with
        #   other activation ranges.
        #
        #   @return [Array<Telnyx::Models::PortingOrders::PortingPhoneNumberExtension::ActivationRange>, nil]
        optional :activation_ranges,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrders::PortingPhoneNumberExtension::ActivationRange] }

        # @!attribute extension_range
        #   Specifies the extension range for this porting phone number extension.
        #
        #   @return [Telnyx::Models::PortingOrders::PortingPhoneNumberExtension::ExtensionRange, nil]
        optional :extension_range, -> { Telnyx::PortingOrders::PortingPhoneNumberExtension::ExtensionRange }

        # @!attribute porting_phone_number_id
        #   Identifies the porting phone number associated with this porting phone number
        #   extension.
        #
        #   @return [String, nil]
        optional :porting_phone_number_id, String

        response_only do
          # @!attribute id
          #   Uniquely identifies this porting phone number extension.
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

        # @!method initialize(id: nil, activation_ranges: nil, created_at: nil, extension_range: nil, porting_phone_number_id: nil, record_type: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrders::PortingPhoneNumberExtension} for more details.
        #
        #   @param id [String] Uniquely identifies this porting phone number extension.
        #
        #   @param activation_ranges [Array<Telnyx::Models::PortingOrders::PortingPhoneNumberExtension::ActivationRange>] Specifies the activation ranges for this porting phone number extension. The act
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param extension_range [Telnyx::Models::PortingOrders::PortingPhoneNumberExtension::ExtensionRange] Specifies the extension range for this porting phone number extension.
        #
        #   @param porting_phone_number_id [String] Identifies the porting phone number associated with this porting phone number ex
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was last updated.

        class ActivationRange < Telnyx::Internal::Type::BaseModel
          # @!attribute end_at
          #   Specifies the end of the activation range. It must be no more than the end of
          #   the extension range.
          #
          #   @return [Integer, nil]
          optional :end_at, Integer

          # @!attribute start_at
          #   Specifies the start of the activation range. Must be greater or equal the start
          #   of the extension range.
          #
          #   @return [Integer, nil]
          optional :start_at, Integer

          # @!method initialize(end_at: nil, start_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PortingOrders::PortingPhoneNumberExtension::ActivationRange}
          #   for more details.
          #
          #   @param end_at [Integer] Specifies the end of the activation range. It must be no more than the end of th
          #
          #   @param start_at [Integer] Specifies the start of the activation range. Must be greater or equal the start
        end

        # @see Telnyx::Models::PortingOrders::PortingPhoneNumberExtension#extension_range
        class ExtensionRange < Telnyx::Internal::Type::BaseModel
          # @!attribute end_at
          #   Specifies the end of the extension range for this porting phone number
          #   extension.
          #
          #   @return [Integer, nil]
          optional :end_at, Integer

          # @!attribute start_at
          #   Specifies the start of the extension range for this porting phone number
          #   extension.
          #
          #   @return [Integer, nil]
          optional :start_at, Integer

          # @!method initialize(end_at: nil, start_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PortingOrders::PortingPhoneNumberExtension::ExtensionRange} for
          #   more details.
          #
          #   Specifies the extension range for this porting phone number extension.
          #
          #   @param end_at [Integer] Specifies the end of the extension range for this porting phone number extension
          #
          #   @param start_at [Integer] Specifies the start of the extension range for this porting phone number extensi
        end
      end
    end
  end
end
