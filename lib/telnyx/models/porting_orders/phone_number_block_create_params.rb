# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::PhoneNumberBlocks#create
      class PhoneNumberBlockCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute activation_ranges
        #   Specifies the activation ranges for this porting phone number block. The
        #   activation range must be within the block range and should not overlap with
        #   other activation ranges.
        #
        #   @return [Array<Telnyx::Models::PortingOrders::PhoneNumberBlockCreateParams::ActivationRange>]
        required :activation_ranges,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrders::PhoneNumberBlockCreateParams::ActivationRange] }

        # @!attribute phone_number_range
        #
        #   @return [Telnyx::Models::PortingOrders::PhoneNumberBlockCreateParams::PhoneNumberRange]
        required :phone_number_range, -> { Telnyx::PortingOrders::PhoneNumberBlockCreateParams::PhoneNumberRange }

        # @!method initialize(activation_ranges:, phone_number_range:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrders::PhoneNumberBlockCreateParams} for more details.
        #
        #   @param activation_ranges [Array<Telnyx::Models::PortingOrders::PhoneNumberBlockCreateParams::ActivationRange>] Specifies the activation ranges for this porting phone number block. The activat
        #
        #   @param phone_number_range [Telnyx::Models::PortingOrders::PhoneNumberBlockCreateParams::PhoneNumberRange]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class ActivationRange < Telnyx::Internal::Type::BaseModel
          # @!attribute end_at
          #   Specifies the end of the activation range. It must be no more than the end of
          #   the extension range.
          #
          #   @return [String]
          required :end_at, String

          # @!attribute start_at
          #   Specifies the start of the activation range. Must be greater or equal the start
          #   of the extension range.
          #
          #   @return [String]
          required :start_at, String

          # @!method initialize(end_at:, start_at:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PortingOrders::PhoneNumberBlockCreateParams::ActivationRange}
          #   for more details.
          #
          #   @param end_at [String] Specifies the end of the activation range. It must be no more than the end of th
          #
          #   @param start_at [String] Specifies the start of the activation range. Must be greater or equal the start
        end

        class PhoneNumberRange < Telnyx::Internal::Type::BaseModel
          # @!attribute end_at
          #   Specifies the end of the phone number range for this porting phone number block.
          #
          #   @return [String]
          required :end_at, String

          # @!attribute start_at
          #   Specifies the start of the phone number range for this porting phone number
          #   block.
          #
          #   @return [String]
          required :start_at, String

          # @!method initialize(end_at:, start_at:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PortingOrders::PhoneNumberBlockCreateParams::PhoneNumberRange}
          #   for more details.
          #
          #   @param end_at [String] Specifies the end of the phone number range for this porting phone number block.
          #
          #   @param start_at [String] Specifies the start of the phone number range for this porting phone number bloc
        end
      end
    end
  end
end
