# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::PhoneNumberExtensions#create
      class PhoneNumberExtensionCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute activation_ranges
        #   Specifies the activation ranges for this porting phone number extension. The
        #   activation range must be within the extension range and should not overlap with
        #   other activation ranges.
        #
        #   @return [Array<Telnyx::Models::PortingOrders::PhoneNumberExtensionCreateParams::ActivationRange>]
        required :activation_ranges,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrders::PhoneNumberExtensionCreateParams::ActivationRange] }

        # @!attribute extension_range
        #
        #   @return [Telnyx::Models::PortingOrders::PhoneNumberExtensionCreateParams::ExtensionRange]
        required :extension_range, -> { Telnyx::PortingOrders::PhoneNumberExtensionCreateParams::ExtensionRange }

        # @!attribute porting_phone_number_id
        #   Identifies the porting phone number associated with this porting phone number
        #   extension.
        #
        #   @return [String]
        required :porting_phone_number_id, String

        # @!method initialize(activation_ranges:, extension_range:, porting_phone_number_id:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrders::PhoneNumberExtensionCreateParams} for more
        #   details.
        #
        #   @param activation_ranges [Array<Telnyx::Models::PortingOrders::PhoneNumberExtensionCreateParams::ActivationRange>] Specifies the activation ranges for this porting phone number extension. The act
        #
        #   @param extension_range [Telnyx::Models::PortingOrders::PhoneNumberExtensionCreateParams::ExtensionRange]
        #
        #   @param porting_phone_number_id [String] Identifies the porting phone number associated with this porting phone number ex
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class ActivationRange < Telnyx::Internal::Type::BaseModel
          # @!attribute end_at
          #   Specifies the end of the activation range. It must be no more than the end of
          #   the extension range.
          #
          #   @return [Integer]
          required :end_at, Integer

          # @!attribute start_at
          #   Specifies the start of the activation range. Must be greater or equal the start
          #   of the extension range.
          #
          #   @return [Integer]
          required :start_at, Integer

          # @!method initialize(end_at:, start_at:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PortingOrders::PhoneNumberExtensionCreateParams::ActivationRange}
          #   for more details.
          #
          #   @param end_at [Integer] Specifies the end of the activation range. It must be no more than the end of th
          #
          #   @param start_at [Integer] Specifies the start of the activation range. Must be greater or equal the start
        end

        class ExtensionRange < Telnyx::Internal::Type::BaseModel
          # @!attribute end_at
          #   Specifies the end of the extension range for this porting phone number
          #   extension.
          #
          #   @return [Integer]
          required :end_at, Integer

          # @!attribute start_at
          #   Specifies the start of the extension range for this porting phone number
          #   extension.
          #
          #   @return [Integer]
          required :start_at, Integer

          # @!method initialize(end_at:, start_at:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PortingOrders::PhoneNumberExtensionCreateParams::ExtensionRange}
          #   for more details.
          #
          #   @param end_at [Integer] Specifies the end of the extension range for this porting phone number extension
          #
          #   @param start_at [Integer] Specifies the start of the extension range for this porting phone number extensi
        end
      end
    end
  end
end
