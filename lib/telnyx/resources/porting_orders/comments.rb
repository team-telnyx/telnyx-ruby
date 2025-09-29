# frozen_string_literal: true

module Telnyx
  module Resources
    class PortingOrders
      class Comments
        # Creates a new comment for a porting order.
        #
        # @overload create(id, body: nil, request_options: {})
        #
        # @param id [String] Porting Order id
        #
        # @param body [String]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::CommentCreateResponse]
        #
        # @see Telnyx::Models::PortingOrders::CommentCreateParams
        def create(id, params = {})
          parsed, options = Telnyx::PortingOrders::CommentCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["porting_orders/%1$s/comments", id],
            body: parsed,
            model: Telnyx::Models::PortingOrders::CommentCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PortingOrders::CommentListParams} for more details.
        #
        # Returns a list of all comments of a porting order.
        #
        # @overload list(id, page: nil, request_options: {})
        #
        # @param id [String] Porting Order id
        #
        # @param page [Telnyx::Models::PortingOrders::CommentListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::CommentListResponse]
        #
        # @see Telnyx::Models::PortingOrders::CommentListParams
        def list(id, params = {})
          parsed, options = Telnyx::PortingOrders::CommentListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["porting_orders/%1$s/comments", id],
            query: parsed,
            model: Telnyx::Models::PortingOrders::CommentListResponse,
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
