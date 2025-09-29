# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberBlockOrders#list
    class NumberBlockOrderListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[status],
      #   filter[created_at], filter[phone_numbers.starting_number]
      #
      #   @return [Telnyx::Models::NumberBlockOrderListParams::Filter, nil]
      optional :filter, -> { Telnyx::NumberBlockOrderListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::NumberBlockOrderListParams::Page, nil]
      optional :page, -> { Telnyx::NumberBlockOrderListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::NumberBlockOrderListParams} for more details.
      #
      #   @param filter [Telnyx::Models::NumberBlockOrderListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[status], fi
      #
      #   @param page [Telnyx::Models::NumberBlockOrderListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute created_at
        #   Filter number block orders by date range.
        #
        #   @return [Telnyx::Models::NumberBlockOrderListParams::Filter::CreatedAt, nil]
        optional :created_at, -> { Telnyx::NumberBlockOrderListParams::Filter::CreatedAt }

        # @!attribute phone_numbers_starting_number
        #   Filter number block orders having these phone numbers.
        #
        #   @return [String, nil]
        optional :phone_numbers_starting_number, String, api_name: :"phone_numbers.starting_number"

        # @!attribute status
        #   Filter number block orders by status.
        #
        #   @return [String, nil]
        optional :status, String

        # @!method initialize(created_at: nil, phone_numbers_starting_number: nil, status: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[status],
        #   filter[created_at], filter[phone_numbers.starting_number]
        #
        #   @param created_at [Telnyx::Models::NumberBlockOrderListParams::Filter::CreatedAt] Filter number block orders by date range.
        #
        #   @param phone_numbers_starting_number [String] Filter number block orders having these phone numbers.
        #
        #   @param status [String] Filter number block orders by status.

        # @see Telnyx::Models::NumberBlockOrderListParams::Filter#created_at
        class CreatedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute gt
          #   Filter number block orders later than this value.
          #
          #   @return [String, nil]
          optional :gt, String

          # @!attribute lt
          #   Filter number block orders earlier than this value.
          #
          #   @return [String, nil]
          optional :lt, String

          # @!method initialize(gt: nil, lt: nil)
          #   Filter number block orders by date range.
          #
          #   @param gt [String] Filter number block orders later than this value.
          #
          #   @param lt [String] Filter number block orders earlier than this value.
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
