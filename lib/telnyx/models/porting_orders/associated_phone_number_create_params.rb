# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::AssociatedPhoneNumbers#create
      class AssociatedPhoneNumberCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute action
        #   Specifies the action to take with this phone number during partial porting.
        #
        #   @return [Symbol, Telnyx::Models::PortingOrders::AssociatedPhoneNumberCreateParams::Action]
        required :action, enum: -> { Telnyx::PortingOrders::AssociatedPhoneNumberCreateParams::Action }

        # @!attribute phone_number_range
        #
        #   @return [Telnyx::Models::PortingOrders::AssociatedPhoneNumberCreateParams::PhoneNumberRange]
        required :phone_number_range,
                 -> { Telnyx::PortingOrders::AssociatedPhoneNumberCreateParams::PhoneNumberRange }

        # @!method initialize(action:, phone_number_range:, request_options: {})
        #   @param action [Symbol, Telnyx::Models::PortingOrders::AssociatedPhoneNumberCreateParams::Action] Specifies the action to take with this phone number during partial porting.
        #
        #   @param phone_number_range [Telnyx::Models::PortingOrders::AssociatedPhoneNumberCreateParams::PhoneNumberRange]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Specifies the action to take with this phone number during partial porting.
        module Action
          extend Telnyx::Internal::Type::Enum

          KEEP = :keep
          DISCONNECT = :disconnect

          # @!method self.values
          #   @return [Array<Symbol>]
        end

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
          #   @param end_at [String] Specifies the end of the phone number range for this associated phone number.
          #
          #   @param start_at [String] Specifies the start of the phone number range for this associated phone number.
        end
      end
    end
  end
end
