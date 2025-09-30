# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::VerificationCodes#list
      class VerificationCodeListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally: filter[verified]
        #
        #   @return [Telnyx::Models::PortingOrders::VerificationCodeListParams::Filter, nil]
        optional :filter, -> { Telnyx::PortingOrders::VerificationCodeListParams::Filter }

        # @!attribute page
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @return [Telnyx::Models::PortingOrders::VerificationCodeListParams::Page, nil]
        optional :page, -> { Telnyx::PortingOrders::VerificationCodeListParams::Page }

        # @!attribute sort
        #   Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        #   @return [Telnyx::Models::PortingOrders::VerificationCodeListParams::Sort, nil]
        optional :sort, -> { Telnyx::PortingOrders::VerificationCodeListParams::Sort }

        # @!method initialize(filter: nil, page: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrders::VerificationCodeListParams} for more details.
        #
        #   @param filter [Telnyx::Models::PortingOrders::VerificationCodeListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[verified]
        #
        #   @param page [Telnyx::Models::PortingOrders::VerificationCodeListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        #   @param sort [Telnyx::Models::PortingOrders::VerificationCodeListParams::Sort] Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute verified
          #   Filter verification codes that have been verified or not
          #
          #   @return [Boolean, nil]
          optional :verified, Telnyx::Internal::Type::Boolean

          # @!method initialize(verified: nil)
          #   Consolidated filter parameter (deepObject style). Originally: filter[verified]
          #
          #   @param verified [Boolean] Filter verification codes that have been verified or not
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
          #   created_at in descending order.
          #
          #   @return [Symbol, Telnyx::Models::PortingOrders::VerificationCodeListParams::Sort::Value, nil]
          optional :value, enum: -> { Telnyx::PortingOrders::VerificationCodeListParams::Sort::Value }

          # @!method initialize(value: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PortingOrders::VerificationCodeListParams::Sort} for more
          #   details.
          #
          #   Consolidated sort parameter (deepObject style). Originally: sort[value]
          #
          #   @param value [Symbol, Telnyx::Models::PortingOrders::VerificationCodeListParams::Sort::Value] Specifies the sort order for results. If not given, results are sorted by create

          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order.
          #
          # @see Telnyx::Models::PortingOrders::VerificationCodeListParams::Sort#value
          module Value
            extend Telnyx::Internal::Type::Enum

            CREATED_AT = :created_at
            CREATED_AT_DESC = :"-created_at"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
