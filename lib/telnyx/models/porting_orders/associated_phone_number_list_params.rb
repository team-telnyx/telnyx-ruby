# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::AssociatedPhoneNumbers#list
      class AssociatedPhoneNumberListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[phone_number], filter[action]
        #
        #   @return [Telnyx::Models::PortingOrders::AssociatedPhoneNumberListParams::Filter, nil]
        optional :filter, -> { Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Filter }

        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute sort
        #   Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        #   @return [Telnyx::Models::PortingOrders::AssociatedPhoneNumberListParams::Sort, nil]
        optional :sort, -> { Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Sort }

        # @!method initialize(filter: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrders::AssociatedPhoneNumberListParams} for more
        #   details.
        #
        #   @param filter [Telnyx::Models::PortingOrders::AssociatedPhoneNumberListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[phone_numbe
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
        #
        #   @param sort [Telnyx::Models::PortingOrders::AssociatedPhoneNumberListParams::Sort] Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute action
          #   Filter results by action type
          #
          #   @return [Symbol, Telnyx::Models::PortingOrders::AssociatedPhoneNumberListParams::Filter::Action, nil]
          optional :action, enum: -> { Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Filter::Action }

          # @!attribute phone_number
          #   Filter results by a phone number. It should be in E.164 format.
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!method initialize(action: nil, phone_number: nil)
          #   Consolidated filter parameter (deepObject style). Originally:
          #   filter[phone_number], filter[action]
          #
          #   @param action [Symbol, Telnyx::Models::PortingOrders::AssociatedPhoneNumberListParams::Filter::Action] Filter results by action type
          #
          #   @param phone_number [String] Filter results by a phone number. It should be in E.164 format.

          # Filter results by action type
          #
          # @see Telnyx::Models::PortingOrders::AssociatedPhoneNumberListParams::Filter#action
          module Action
            extend Telnyx::Internal::Type::Enum

            KEEP = :keep
            DISCONNECT = :disconnect

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Sort < Telnyx::Internal::Type::BaseModel
          # @!attribute value
          #   Specifies the sort order for results. If not given, results are sorted by
          #   created_at in descending order
          #
          #   @return [Symbol, Telnyx::Models::PortingOrders::AssociatedPhoneNumberListParams::Sort::Value, nil]
          optional :value, enum: -> { Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Sort::Value }

          # @!method initialize(value: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PortingOrders::AssociatedPhoneNumberListParams::Sort} for more
          #   details.
          #
          #   Consolidated sort parameter (deepObject style). Originally: sort[value]
          #
          #   @param value [Symbol, Telnyx::Models::PortingOrders::AssociatedPhoneNumberListParams::Sort::Value] Specifies the sort order for results. If not given, results are sorted by create

          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order
          #
          # @see Telnyx::Models::PortingOrders::AssociatedPhoneNumberListParams::Sort#value
          module Value
            extend Telnyx::Internal::Type::Enum

            CREATED_AT_DESC = :"-created_at"
            CREATED_AT = :created_at

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
