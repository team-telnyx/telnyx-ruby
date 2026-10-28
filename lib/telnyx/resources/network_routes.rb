# frozen_string_literal: true

module Telnyx
  module Resources
    # Routes on a Network that send a CIDR to a next hop, such as a tunnel.
    class NetworkRoutes
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::NetworkRouteCreateParams} for more details.
      #
      # Adds a route to a Network. Traffic on the Network to an address in `cidr` goes
      # via `next_hop`. With a tunnel as the next hop, functions on the Network reach
      # the CIDR through the tunnel without a redeploy. A Network holds each CIDR once.
      #
      # @overload create(cidr:, network_id:, next_hop:, request_options: {})
      #
      # @param cidr [String] The IPv4 subnet to route, such as a subnet behind the tunnel. It must be a canon
      #
      # @param network_id [String] The id of the Network to add the route to.
      #
      # @param next_hop [Telnyx::Models::NetworkRouteCreateParams::NextHop] Where the Network sends traffic for `cidr`.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NetworkRouteCreateResponse]
      #
      # @see Telnyx::Models::NetworkRouteCreateParams
      def create(params)
        parsed, options = Telnyx::NetworkRouteCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "network_routes",
          body: parsed,
          model: Telnyx::Models::NetworkRouteCreateResponse,
          options: options
        )
      end

      # Retrieves a route and its status.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The id of the route.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NetworkRouteRetrieveResponse]
      #
      # @see Telnyx::Models::NetworkRouteRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["network_routes/%1$s", id],
          model: Telnyx::Models::NetworkRouteRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::NetworkRouteListParams} for more details.
      #
      # Lists the routes of the account's Networks. A Network's list is its effective
      # route table: the routes added with `POST /network_routes` (`origin` `static`)
      # and the routes that its attachments install (`origin` `attachment`). Lookup is
      # longest prefix within the Network.
      #
      # @overload list(filter:, page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::NetworkRouteListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[network_id]
      #
      # @param page [Telnyx::Models::NetworkRouteListParams::Page] Consolidated page parameter (deepObject style). Originally: page[after], page[li
      #
      # @param sort [Symbol, Telnyx::Models::NetworkRouteListParams::Sort] Sorts the results by a field, ascending, or descending with a leading `-`. The d
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NetworkRouteListResponse]
      #
      # @see Telnyx::Models::NetworkRouteListParams
      def list(params)
        parsed, options = Telnyx::NetworkRouteListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "network_routes",
          query: query,
          model: Telnyx::Models::NetworkRouteListResponse,
          options: options
        )
      end

      # Deletes a route that was added with `POST /network_routes`. Traffic to its CIDR
      # stops going via the next hop at once. Routes that an attachment installs
      # (`origin` `attachment`) leave with the attachment and cannot be deleted here.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The id of the route.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::NetworkRouteDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["network_routes/%1$s", id],
          model: NilClass,
          options: params[:request_options]
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
