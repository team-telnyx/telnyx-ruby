# frozen_string_literal: true

module Telnyx
  module Resources
    class PortingOrders
      class Actions
        # Activate each number in a porting order asynchronously. This operation is
        # limited to US FastPort orders only.
        #
        # @overload activate(id, request_options: {})
        #
        # @param id [String] Porting Order id
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::ActionActivateResponse]
        #
        # @see Telnyx::Models::PortingOrders::ActionActivateParams
        def activate(id, params = {})
          @client.request(
            method: :post,
            path: ["porting_orders/%1$s/actions/activate", id],
            model: Telnyx::Models::PortingOrders::ActionActivateResponse,
            options: params[:request_options]
          )
        end

        # Cancel a porting order
        #
        # @overload cancel(id, request_options: {})
        #
        # @param id [String] Porting Order id
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::ActionCancelResponse]
        #
        # @see Telnyx::Models::PortingOrders::ActionCancelParams
        def cancel(id, params = {})
          @client.request(
            method: :post,
            path: ["porting_orders/%1$s/actions/cancel", id],
            model: Telnyx::Models::PortingOrders::ActionCancelResponse,
            options: params[:request_options]
          )
        end

        # Confirm and submit your porting order.
        #
        # @overload confirm(id, request_options: {})
        #
        # @param id [String] Porting Order id
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::ActionConfirmResponse]
        #
        # @see Telnyx::Models::PortingOrders::ActionConfirmParams
        def confirm(id, params = {})
          @client.request(
            method: :post,
            path: ["porting_orders/%1$s/actions/confirm", id],
            model: Telnyx::Models::PortingOrders::ActionConfirmResponse,
            options: params[:request_options]
          )
        end

        # Creates a sharing token for a porting order. The token can be used to share the
        # porting order with non-Telnyx users.
        #
        # @overload share(id, expires_in_seconds: nil, permissions: nil, request_options: {})
        #
        # @param id [String] Porting Order id
        #
        # @param expires_in_seconds [Integer] The number of seconds the token will be valid for
        #
        # @param permissions [Symbol, Telnyx::Models::PortingOrders::ActionShareParams::Permissions] The permissions the token will have
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::ActionShareResponse]
        #
        # @see Telnyx::Models::PortingOrders::ActionShareParams
        def share(id, params = {})
          parsed, options = Telnyx::PortingOrders::ActionShareParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["porting_orders/%1$s/actions/share", id],
            body: parsed,
            model: Telnyx::Models::PortingOrders::ActionShareResponse,
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
