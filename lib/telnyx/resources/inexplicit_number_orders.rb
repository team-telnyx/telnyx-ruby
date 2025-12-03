# frozen_string_literal: true

module Telnyx
  module Resources
    class InexplicitNumberOrders
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::InexplicitNumberOrderCreateParams} for more details.
      #
      # Create an inexplicit number order to programmatically purchase phone numbers
      # without specifying exact numbers.
      #
      # @overload create(ordering_groups:, billing_group_id: nil, connection_id: nil, customer_reference: nil, messaging_profile_id: nil, request_options: {})
      #
      # @param ordering_groups [Array<Telnyx::Models::InexplicitNumberOrderCreateParams::OrderingGroup>] Group(s) of numbers to order. You can have multiple ordering_groups objects adde
      #
      # @param billing_group_id [String] Billing group id to apply to phone numbers that are purchased
      #
      # @param connection_id [String] Connection id to apply to phone numbers that are purchased
      #
      # @param customer_reference [String] Reference label for the customer
      #
      # @param messaging_profile_id [String] Messaging profile id to apply to phone numbers that are purchased
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::InexplicitNumberOrderCreateResponse]
      #
      # @see Telnyx::Models::InexplicitNumberOrderCreateParams
      def create(params)
        parsed, options = Telnyx::InexplicitNumberOrderCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "inexplicit_number_orders",
          body: parsed,
          model: Telnyx::Models::InexplicitNumberOrderCreateResponse,
          options: options
        )
      end

      # Get an existing inexplicit number order by ID.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the inexplicit number order
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::InexplicitNumberOrderRetrieveResponse]
      #
      # @see Telnyx::Models::InexplicitNumberOrderRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["inexplicit_number_orders/%1$s", id],
          model: Telnyx::Models::InexplicitNumberOrderRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Get a paginated list of inexplicit number orders.
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer] The page number to load
      #
      # @param page_size [Integer] The size of the page
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::InexplicitNumberOrderListResponse]
      #
      # @see Telnyx::Models::InexplicitNumberOrderListParams
      def list(params = {})
        parsed, options = Telnyx::InexplicitNumberOrderListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "inexplicit_number_orders",
          query: parsed,
          model: Telnyx::Models::InexplicitNumberOrderListResponse,
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
