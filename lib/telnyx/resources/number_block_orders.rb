# frozen_string_literal: true

module Telnyx
  module Resources
    class NumberBlockOrders
      # Creates a phone number block order.
      #
      # @overload create(range:, starting_number:, connection_id: nil, customer_reference: nil, messaging_profile_id: nil, request_options: {})
      #
      # @param range [Integer] The phone number range included in the block.
      #
      # @param starting_number [String] Starting phone number block
      #
      # @param connection_id [String] Identifies the connection associated with this phone number.
      #
      # @param customer_reference [String] A customer reference string for customer look ups.
      #
      # @param messaging_profile_id [String] Identifies the messaging profile associated with the phone number.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NumberBlockOrderCreateResponse]
      #
      # @see Telnyx::Models::NumberBlockOrderCreateParams
      def create(params)
        parsed, options = Telnyx::NumberBlockOrderCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "number_block_orders",
          body: parsed,
          model: Telnyx::Models::NumberBlockOrderCreateResponse,
          options: options
        )
      end

      # Get an existing phone number block order.
      #
      # @overload retrieve(number_block_order_id, request_options: {})
      #
      # @param number_block_order_id [String] The number block order ID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NumberBlockOrderRetrieveResponse]
      #
      # @see Telnyx::Models::NumberBlockOrderRetrieveParams
      def retrieve(number_block_order_id, params = {})
        @client.request(
          method: :get,
          path: ["number_block_orders/%1$s", number_block_order_id],
          model: Telnyx::Models::NumberBlockOrderRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::NumberBlockOrderListParams} for more details.
      #
      # Get a paginated list of number block orders.
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::NumberBlockOrderListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[status], fi
      #
      # @param page [Telnyx::Models::NumberBlockOrderListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::NumberBlockOrder>]
      #
      # @see Telnyx::Models::NumberBlockOrderListParams
      def list(params = {})
        parsed, options = Telnyx::NumberBlockOrderListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "number_block_orders",
          query: parsed,
          page: Telnyx::Internal::DefaultPagination,
          model: Telnyx::NumberBlockOrder,
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
