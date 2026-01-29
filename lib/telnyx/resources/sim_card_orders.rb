# frozen_string_literal: true

module Telnyx
  module Resources
    class SimCardOrders
      # Creates a new order for SIM cards.
      #
      # @overload create(address_id:, quantity:, request_options: {})
      #
      # @param address_id [String] Uniquely identifies the address for the order.
      #
      # @param quantity [Integer] The amount of SIM cards to order.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardOrderCreateResponse]
      #
      # @see Telnyx::Models::SimCardOrderCreateParams
      def create(params)
        parsed, options = Telnyx::SimCardOrderCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "sim_card_orders",
          body: parsed,
          model: Telnyx::Models::SimCardOrderCreateResponse,
          options: options
        )
      end

      # Get a single SIM card order by its ID.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SimCardOrderRetrieveResponse]
      #
      # @see Telnyx::Models::SimCardOrderRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["sim_card_orders/%1$s", id],
          model: Telnyx::Models::SimCardOrderRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::SimCardOrderListParams} for more details.
      #
      # Get all SIM card orders according to filters.
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::SimCardOrderListParams::Filter] Consolidated filter parameter for SIM card orders (deepObject style). Originally
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::SimCardOrder>]
      #
      # @see Telnyx::Models::SimCardOrderListParams
      def list(params = {})
        parsed, options = Telnyx::SimCardOrderListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "sim_card_orders",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::SimCardOrder,
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
