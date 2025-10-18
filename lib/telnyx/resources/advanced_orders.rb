# frozen_string_literal: true

module Telnyx
  module Resources
    class AdvancedOrders
      # Create Advanced Order
      #
      # @overload create(area_code: nil, comments: nil, country_code: nil, customer_reference: nil, features: nil, phone_number_type: nil, quantity: nil, requirement_group_id: nil, request_options: {})
      #
      # @param area_code [String]
      #
      # @param comments [String]
      #
      # @param country_code [String]
      #
      # @param customer_reference [String]
      #
      # @param features [Array<Symbol, Telnyx::Models::AdvancedOrder::Feature>]
      #
      # @param phone_number_type [Symbol, Telnyx::Models::AdvancedOrder::PhoneNumberType]
      #
      # @param quantity [Integer]
      #
      # @param requirement_group_id [String] The ID of the requirement group to associate with this advanced order
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object]
      #
      # @see Telnyx::Models::AdvancedOrderCreateParams
      def create(params = {})
        parsed, options = Telnyx::AdvancedOrderCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "advanced_orders",
          body: parsed,
          model: Telnyx::Internal::Type::Unknown,
          options: options
        )
      end

      # Get Advanced Order
      #
      # @overload retrieve(order_id, request_options: {})
      #
      # @param order_id [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object]
      #
      # @see Telnyx::Models::AdvancedOrderRetrieveParams
      def retrieve(order_id, params = {})
        @client.request(
          method: :get,
          path: ["advanced_orders/%1$s", order_id],
          model: Telnyx::Internal::Type::Unknown,
          options: params[:request_options]
        )
      end

      # List Advanced Orders
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object]
      #
      # @see Telnyx::Models::AdvancedOrderListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "advanced_orders",
          model: Telnyx::Internal::Type::Unknown,
          options: params[:request_options]
        )
      end

      # Update Advanced Order
      #
      # @overload update_requirement_group(advanced_order_id, area_code: nil, comments: nil, country_code: nil, customer_reference: nil, features: nil, phone_number_type: nil, quantity: nil, requirement_group_id: nil, request_options: {})
      #
      # @param advanced_order_id [String]
      #
      # @param area_code [String]
      #
      # @param comments [String]
      #
      # @param country_code [String]
      #
      # @param customer_reference [String]
      #
      # @param features [Array<Symbol, Telnyx::Models::AdvancedOrder::Feature>]
      #
      # @param phone_number_type [Symbol, Telnyx::Models::AdvancedOrder::PhoneNumberType]
      #
      # @param quantity [Integer]
      #
      # @param requirement_group_id [String] The ID of the requirement group to associate with this advanced order
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object]
      #
      # @see Telnyx::Models::AdvancedOrderUpdateRequirementGroupParams
      def update_requirement_group(advanced_order_id, params = {})
        parsed, options = Telnyx::AdvancedOrderUpdateRequirementGroupParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["advanced_orders/%1$s/requirement_group", advanced_order_id],
          body: parsed,
          model: Telnyx::Internal::Type::Unknown,
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
