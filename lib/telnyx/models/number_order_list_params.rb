# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberOrders#list
    class NumberOrderListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[status],
      #   filter[created_at], filter[phone_numbers_count], filter[customer_reference],
      #   filter[requirements_met]
      #
      #   @return [Telnyx::Models::NumberOrderListParams::Filter, nil]
      optional :filter, -> { Telnyx::NumberOrderListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::NumberOrderListParams::Page, nil]
      optional :page, -> { Telnyx::NumberOrderListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::NumberOrderListParams} for more details.
      #
      #   @param filter [Telnyx::Models::NumberOrderListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[status], fi
      #
      #   @param page [Telnyx::Models::NumberOrderListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute created_at
        #   Filter number orders by date range.
        #
        #   @return [Telnyx::Models::NumberOrderListParams::Filter::CreatedAt, nil]
        optional :created_at, -> { Telnyx::NumberOrderListParams::Filter::CreatedAt }

        # @!attribute customer_reference
        #   Filter number orders via the customer reference set.
        #
        #   @return [String, nil]
        optional :customer_reference, String

        # @!attribute phone_numbers_count
        #   Filter number order with this amount of numbers
        #
        #   @return [String, nil]
        optional :phone_numbers_count, String

        # @!attribute requirements_met
        #   Filter number orders by requirements met.
        #
        #   @return [Boolean, nil]
        optional :requirements_met, Telnyx::Internal::Type::Boolean

        # @!attribute status
        #   Filter number orders by status.
        #
        #   @return [String, nil]
        optional :status, String

        # @!method initialize(created_at: nil, customer_reference: nil, phone_numbers_count: nil, requirements_met: nil, status: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[status],
        #   filter[created_at], filter[phone_numbers_count], filter[customer_reference],
        #   filter[requirements_met]
        #
        #   @param created_at [Telnyx::Models::NumberOrderListParams::Filter::CreatedAt] Filter number orders by date range.
        #
        #   @param customer_reference [String] Filter number orders via the customer reference set.
        #
        #   @param phone_numbers_count [String] Filter number order with this amount of numbers
        #
        #   @param requirements_met [Boolean] Filter number orders by requirements met.
        #
        #   @param status [String] Filter number orders by status.

        # @see Telnyx::Models::NumberOrderListParams::Filter#created_at
        class CreatedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute gt
          #   Filter number orders later than this value.
          #
          #   @return [String, nil]
          optional :gt, String

          # @!attribute lt
          #   Filter number orders earlier than this value.
          #
          #   @return [String, nil]
          optional :lt, String

          # @!method initialize(gt: nil, lt: nil)
          #   Filter number orders by date range.
          #
          #   @param gt [String] Filter number orders later than this value.
          #
          #   @param lt [String] Filter number orders earlier than this value.
        end
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
    end
  end
end
