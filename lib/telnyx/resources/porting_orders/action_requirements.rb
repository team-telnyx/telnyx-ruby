# frozen_string_literal: true

module Telnyx
  module Resources
    class PortingOrders
      class ActionRequirements
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PortingOrders::ActionRequirementListParams} for more details.
        #
        # Returns a list of action requirements for a specific porting order.
        #
        # @overload list(porting_order_id, filter: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
        #
        # @param porting_order_id [String] The ID of the porting order
        #
        # @param filter [Telnyx::Models::PortingOrders::ActionRequirementListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[id][in][],
        #
        # @param page_number [Integer]
        #
        # @param page_size [Integer]
        #
        # @param sort [Telnyx::Models::PortingOrders::ActionRequirementListParams::Sort] Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::PortingOrders::ActionRequirementListResponse>]
        #
        # @see Telnyx::Models::PortingOrders::ActionRequirementListParams
        def list(porting_order_id, params = {})
          parsed, options = Telnyx::PortingOrders::ActionRequirementListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["porting_orders/%1$s/action_requirements", porting_order_id],
            query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Models::PortingOrders::ActionRequirementListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PortingOrders::ActionRequirementInitiateParams} for more
        # details.
        #
        # Initiates a specific action requirement for a porting order.
        #
        # @overload initiate(id, porting_order_id:, params:, request_options: {})
        #
        # @param id [String] Path param: The ID of the action requirement
        #
        # @param porting_order_id [String] Path param: The ID of the porting order
        #
        # @param params [Telnyx::Models::PortingOrders::ActionRequirementInitiateParams::Params] Body param: Required information for initiating the action requirement for AU ID
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::ActionRequirementInitiateResponse]
        #
        # @see Telnyx::Models::PortingOrders::ActionRequirementInitiateParams
        def initiate(id, params)
          parsed, options = Telnyx::PortingOrders::ActionRequirementInitiateParams.dump_request(params)
          porting_order_id =
            parsed.delete(:porting_order_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["porting_orders/%1$s/action_requirements/%2$s/initiate", porting_order_id, id],
            body: parsed,
            model: Telnyx::Models::PortingOrders::ActionRequirementInitiateResponse,
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
end
