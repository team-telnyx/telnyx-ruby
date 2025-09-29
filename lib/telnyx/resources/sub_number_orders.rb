# frozen_string_literal: true

module Telnyx
  module Resources
    class SubNumberOrders
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::SubNumberOrderRetrieveParams} for more details.
      #
      # Get an existing sub number order.
      #
      # @overload retrieve(sub_number_order_id, filter: nil, request_options: {})
      #
      # @param sub_number_order_id [String] The sub number order ID.
      #
      # @param filter [Telnyx::Models::SubNumberOrderRetrieveParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[include_pho
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SubNumberOrderRetrieveResponse]
      #
      # @see Telnyx::Models::SubNumberOrderRetrieveParams
      def retrieve(sub_number_order_id, params = {})
        parsed, options = Telnyx::SubNumberOrderRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["sub_number_orders/%1$s", sub_number_order_id],
          query: parsed,
          model: Telnyx::Models::SubNumberOrderRetrieveResponse,
          options: options
        )
      end

      # Updates a sub number order.
      #
      # @overload update(sub_number_order_id, regulatory_requirements: nil, request_options: {})
      #
      # @param sub_number_order_id [String] The sub number order ID.
      #
      # @param regulatory_requirements [Array<Telnyx::Models::UpdateRegulatoryRequirement>]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SubNumberOrderUpdateResponse]
      #
      # @see Telnyx::Models::SubNumberOrderUpdateParams
      def update(sub_number_order_id, params = {})
        parsed, options = Telnyx::SubNumberOrderUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["sub_number_orders/%1$s", sub_number_order_id],
          body: parsed,
          model: Telnyx::Models::SubNumberOrderUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::SubNumberOrderListParams} for more details.
      #
      # Get a paginated list of sub number orders.
      #
      # @overload list(filter: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::SubNumberOrderListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[status], fi
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SubNumberOrderListResponse]
      #
      # @see Telnyx::Models::SubNumberOrderListParams
      def list(params = {})
        parsed, options = Telnyx::SubNumberOrderListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "sub_number_orders",
          query: parsed,
          model: Telnyx::Models::SubNumberOrderListResponse,
          options: options
        )
      end

      # Allows you to cancel a sub number order in 'pending' status.
      #
      # @overload cancel(sub_number_order_id, request_options: {})
      #
      # @param sub_number_order_id [String] The ID of the sub number order.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SubNumberOrderCancelResponse]
      #
      # @see Telnyx::Models::SubNumberOrderCancelParams
      def cancel(sub_number_order_id, params = {})
        @client.request(
          method: :patch,
          path: ["sub_number_orders/%1$s/cancel", sub_number_order_id],
          model: Telnyx::Models::SubNumberOrderCancelResponse,
          options: params[:request_options]
        )
      end

      # Update requirement group for a sub number order
      #
      # @overload update_requirement_group(id, requirement_group_id:, request_options: {})
      #
      # @param id [String] The ID of the sub number order
      #
      # @param requirement_group_id [String] The ID of the requirement group to associate
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse]
      #
      # @see Telnyx::Models::SubNumberOrderUpdateRequirementGroupParams
      def update_requirement_group(id, params)
        parsed, options = Telnyx::SubNumberOrderUpdateRequirementGroupParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["sub_number_orders/%1$s/requirement_group", id],
          body: parsed,
          model: Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse,
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
