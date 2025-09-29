# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PortingPhoneNumbers#list
    class PortingPhoneNumberListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[porting_order_status]
      #
      #   @return [Telnyx::Models::PortingPhoneNumberListParams::Filter, nil]
      optional :filter, -> { Telnyx::PortingPhoneNumberListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::PortingPhoneNumberListParams::Page, nil]
      optional :page, -> { Telnyx::PortingPhoneNumberListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PortingPhoneNumberListParams} for more details.
      #
      #   @param filter [Telnyx::Models::PortingPhoneNumberListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[porting_ord
      #
      #   @param page [Telnyx::Models::PortingPhoneNumberListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute porting_order_status
        #   Filter results by porting order status
        #
        #   @return [Symbol, Telnyx::Models::PortingPhoneNumberListParams::Filter::PortingOrderStatus, nil]
        optional :porting_order_status,
                 enum: -> { Telnyx::PortingPhoneNumberListParams::Filter::PortingOrderStatus }

        # @!method initialize(porting_order_status: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[porting_order_status]
        #
        #   @param porting_order_status [Symbol, Telnyx::Models::PortingPhoneNumberListParams::Filter::PortingOrderStatus] Filter results by porting order status

        # Filter results by porting order status
        #
        # @see Telnyx::Models::PortingPhoneNumberListParams::Filter#porting_order_status
        module PortingOrderStatus
          extend Telnyx::Internal::Type::Enum

          DRAFT = :draft
          IN_PROCESS = :"in-process"
          SUBMITTED = :submitted
          EXCEPTION = :exception
          FOC_DATE_CONFIRMED = :"foc-date-confirmed"
          CANCEL_PENDING = :"cancel-pending"
          PORTED = :ported
          CANCELLED = :cancelled

          # @!method self.values
          #   @return [Array<Symbol>]
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
