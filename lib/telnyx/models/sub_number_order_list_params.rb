# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SubNumberOrders#list
    class SubNumberOrderListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[status],
      #   filter[order_request_id], filter[country_code], filter[phone_number_type],
      #   filter[phone_numbers_count]
      #
      #   @return [Telnyx::Models::SubNumberOrderListParams::Filter, nil]
      optional :filter, -> { Telnyx::SubNumberOrderListParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SubNumberOrderListParams} for more details.
      #
      #   @param filter [Telnyx::Models::SubNumberOrderListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[status], fi
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute country_code
        #   ISO alpha-2 country code.
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute order_request_id
        #   ID of the number order the sub number order belongs to
        #
        #   @return [String, nil]
        optional :order_request_id, String

        # @!attribute phone_number_type
        #   Phone Number Type
        #
        #   @return [String, nil]
        optional :phone_number_type, String

        # @!attribute phone_numbers_count
        #   Amount of numbers in the sub number order
        #
        #   @return [Integer, nil]
        optional :phone_numbers_count, Integer

        # @!attribute status
        #   Filter sub number orders by status.
        #
        #   @return [String, nil]
        optional :status, String

        # @!method initialize(country_code: nil, order_request_id: nil, phone_number_type: nil, phone_numbers_count: nil, status: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[status],
        #   filter[order_request_id], filter[country_code], filter[phone_number_type],
        #   filter[phone_numbers_count]
        #
        #   @param country_code [String] ISO alpha-2 country code.
        #
        #   @param order_request_id [String] ID of the number order the sub number order belongs to
        #
        #   @param phone_number_type [String] Phone Number Type
        #
        #   @param phone_numbers_count [Integer] Amount of numbers in the sub number order
        #
        #   @param status [String] Filter sub number orders by status.
      end
    end
  end
end
