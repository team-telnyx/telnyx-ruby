# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::PhoneNumberExtensions#list
      class PhoneNumberExtensionListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[porting_phone_number_id]
        #
        #   @return [Telnyx::Models::PortingOrders::PhoneNumberExtensionListParams::Filter, nil]
        optional :filter, -> { Telnyx::PortingOrders::PhoneNumberExtensionListParams::Filter }

        # @!attribute page
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @return [Telnyx::Models::PortingOrders::PhoneNumberExtensionListParams::Page, nil]
        optional :page, -> { Telnyx::PortingOrders::PhoneNumberExtensionListParams::Page }

        # @!attribute sort
        #   Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        #   @return [Telnyx::Models::PortingOrders::PhoneNumberExtensionListParams::Sort, nil]
        optional :sort, -> { Telnyx::PortingOrders::PhoneNumberExtensionListParams::Sort }

        # @!method initialize(filter: nil, page: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrders::PhoneNumberExtensionListParams} for more
        #   details.
        #
        #   @param filter [Telnyx::Models::PortingOrders::PhoneNumberExtensionListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[porting_pho
        #
        #   @param page [Telnyx::Models::PortingOrders::PhoneNumberExtensionListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        #   @param sort [Telnyx::Models::PortingOrders::PhoneNumberExtensionListParams::Sort] Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute porting_phone_number_id
          #   Filter results by porting phone number id
          #
          #   @return [String, nil]
          optional :porting_phone_number_id, String

          # @!method initialize(porting_phone_number_id: nil)
          #   Consolidated filter parameter (deepObject style). Originally:
          #   filter[porting_phone_number_id]
          #
          #   @param porting_phone_number_id [String] Filter results by porting phone number id
        end

        class Page < Telnyx::Internal::Type::BaseModel
          # @!attribute number
          #   The page number to load
          #
          #   @return [Integer, nil]
          optional :number, Integer

          # @!attribute size
          #   The size of the page
          #
          #   @return [Integer, nil]
          optional :size, Integer

          # @!method initialize(number: nil, size: nil)
          #   Consolidated page parameter (deepObject style). Originally: page[size],
          #   page[number]
          #
          #   @param number [Integer] The page number to load
          #
          #   @param size [Integer] The size of the page
        end

        class Sort < Telnyx::Internal::Type::BaseModel
          # @!attribute value
          #   Specifies the sort order for results. If not given, results are sorted by
          #   created_at in descending order
          #
          #   @return [Symbol, Telnyx::Models::PortingOrders::PhoneNumberExtensionListParams::Sort::Value, nil]
          optional :value, enum: -> { Telnyx::PortingOrders::PhoneNumberExtensionListParams::Sort::Value }

          # @!method initialize(value: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PortingOrders::PhoneNumberExtensionListParams::Sort} for more
          #   details.
          #
          #   Consolidated sort parameter (deepObject style). Originally: sort[value]
          #
          #   @param value [Symbol, Telnyx::Models::PortingOrders::PhoneNumberExtensionListParams::Sort::Value] Specifies the sort order for results. If not given, results are sorted by create

          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order
          #
          # @see Telnyx::Models::PortingOrders::PhoneNumberExtensionListParams::Sort#value
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
