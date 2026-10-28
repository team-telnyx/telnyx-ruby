# typed: strong

module Telnyx
  module Resources
    # Routes on a Network that send a CIDR to a next hop, such as a tunnel.
    class NetworkRoutes
      # Adds a route to a Network. Traffic on the Network to an address in `cidr` goes
      # via `next_hop`. With a tunnel as the next hop, functions on the Network reach
      # the CIDR through the tunnel without a redeploy. A Network holds each CIDR once.
      sig do
        params(
          cidr: String,
          network_id: String,
          next_hop: Telnyx::NetworkRouteCreateParams::NextHop::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NetworkRouteCreateResponse)
      end
      def create(
        # The IPv4 subnet to route, such as a subnet behind the tunnel. It must be a
        # canonical CIDR. Default, loopback, link-local, multicast, and shared address
        # space (`100.64.0.0/10`) ranges are rejected. So are ranges that overlap the
        # Tailscale Subnet Router ranges, `172.27.254.0/24` and `198.18.0.0/20`, or a
        # subnet already on the Network.
        cidr:,
        # The id of the Network to add the route to.
        network_id:,
        # Where the Network sends traffic for `cidr`.
        next_hop:,
        request_options: {}
      )
      end

      # Retrieves a route and its status.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NetworkRouteRetrieveResponse)
      end
      def retrieve(
        # The id of the route.
        id,
        request_options: {}
      )
      end

      # Lists the routes of the account's Networks. A Network's list is its effective
      # route table: the routes added with `POST /network_routes` (`origin` `static`)
      # and the routes that its attachments install (`origin` `attachment`). Lookup is
      # longest prefix within the Network.
      sig do
        params(
          filter: Telnyx::NetworkRouteListParams::Filter::OrHash,
          page: Telnyx::NetworkRouteListParams::Page::OrHash,
          sort: Telnyx::NetworkRouteListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NetworkRouteListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[network_id], filter[origin], filter[next_hop.type], filter[cidr],
        # filter[status]
        filter:,
        # Consolidated page parameter (deepObject style). Originally: page[after],
        # page[limit]
        page: nil,
        # Sorts the results by a field, ascending, or descending with a leading `-`. The
        # default is `-created_at`.
        sort: nil,
        request_options: {}
      )
      end

      # Deletes a route that was added with `POST /network_routes`. Traffic to its CIDR
      # stops going via the next hop at once. Routes that an attachment installs
      # (`origin` `attachment`) leave with the attachment and cannot be deleted here.
      sig do
        params(id: String, request_options: Telnyx::RequestOptions::OrHash).void
      end
      def delete(
        # The id of the route.
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
