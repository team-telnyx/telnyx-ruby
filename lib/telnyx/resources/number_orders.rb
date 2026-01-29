# frozen_string_literal: true

module Telnyx
  module Resources
    class NumberOrders
      # Creates a phone number order.
      #
      # @overload create(billing_group_id: nil, connection_id: nil, customer_reference: nil, messaging_profile_id: nil, phone_numbers: nil, request_options: {})
      #
      # @param billing_group_id [String] Identifies the billing group associated with the phone number.
      #
      # @param connection_id [String] Identifies the connection associated with this phone number.
      #
      # @param customer_reference [String] A customer reference string for customer look ups.
      #
      # @param messaging_profile_id [String] Identifies the messaging profile associated with the phone number.
      #
      # @param phone_numbers [Array<Telnyx::Models::NumberOrderCreateParams::PhoneNumber>]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NumberOrderCreateResponse]
      #
      # @see Telnyx::Models::NumberOrderCreateParams
      def create(params = {})
        parsed, options = Telnyx::NumberOrderCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "number_orders",
          body: parsed,
          model: Telnyx::Models::NumberOrderCreateResponse,
          options: options
        )
      end

      # Get an existing phone number order.
      #
      # @overload retrieve(number_order_id, request_options: {})
      #
      # @param number_order_id [String] The number order ID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NumberOrderRetrieveResponse]
      #
      # @see Telnyx::Models::NumberOrderRetrieveParams
      def retrieve(number_order_id, params = {})
        @client.request(
          method: :get,
          path: ["number_orders/%1$s", number_order_id],
          model: Telnyx::Models::NumberOrderRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Updates a phone number order.
      #
      # @overload update(number_order_id, customer_reference: nil, regulatory_requirements: nil, request_options: {})
      #
      # @param number_order_id [String] The number order ID.
      #
      # @param customer_reference [String] A customer reference string for customer look ups.
      #
      # @param regulatory_requirements [Array<Telnyx::Models::UpdateRegulatoryRequirement>]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NumberOrderUpdateResponse]
      #
      # @see Telnyx::Models::NumberOrderUpdateParams
      def update(number_order_id, params = {})
        parsed, options = Telnyx::NumberOrderUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["number_orders/%1$s", number_order_id],
          body: parsed,
          model: Telnyx::Models::NumberOrderUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::NumberOrderListParams} for more details.
      #
      # Get a paginated list of number orders.
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::NumberOrderListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[status], fi
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::NumberOrderListResponse>]
      #
      # @see Telnyx::Models::NumberOrderListParams
      def list(params = {})
        parsed, options = Telnyx::NumberOrderListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "number_orders",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::NumberOrderListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
