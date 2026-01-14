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

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PortingPhoneNumberListParams} for more details.
      #
      #   @param filter [Telnyx::Models::PortingPhoneNumberListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[porting_ord
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
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
    end
  end
end
