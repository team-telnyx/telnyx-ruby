# typed: strong

module Telnyx
  module Resources
    # Tailscale Subnet Router operations
    class TailscaleSubnetRouters
      # Creates a Tailscale Subnet Router on a Network and enrolls it in the user's
      # tailnet with the auth key. The response returns the router with `status`
      # `provisioning`. Poll `GET /tailscale_subnet_routers/{id}` until it is
      # `provisioned`. Then approve its routes in the tailnet, unless an auto-approver
      # covers them.
      sig do
        params(
          advertised_routes: T::Array[String],
          auth_key: String,
          name: String,
          network_id: String,
          region_code: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TailscaleSubnetRouterCreateResponse)
      end
      def create(
        # IPv4 subnets of the Network that the router advertises to the tailnet. Each
        # entry is a canonical CIDR that the Network routes. Default, loopback,
        # link-local, multicast, and Tailscale (`100.64.0.0/10`) ranges are rejected. So
        # are ranges that overlap the router's own, `172.27.254.0/24` and `198.18.0.0/20`.
        advertised_routes:,
        # A Tailscale auth key that enrolls the router in the user's tailnet: reusable,
        # pre-approved, tagged, and not ephemeral. Telnyx stores it encrypted until
        # enrollment succeeds, then discards it. It is never returned.
        auth_key:,
        # A user specified name for the router.
        name:,
        # The id of the Network to attach the router to.
        network_id:,
        # The code of the region to create the router in. `GET /network_coverage` lists
        # the regions whose `available_services` include `tailscale_subnet_router`.
        region_code:,
        request_options: {}
      )
      end

      # Returns the details of a single Tailscale Subnet Router by its identifier,
      # including its enrollment state.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TailscaleSubnetRouterRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Renames the router, changes its advertised routes, or retries a failed
      # enrollment. Any change queues a new provisioning run and returns the router with
      # `status` `provisioning`. The router keeps its machine identity on the tailnet.
      # Send an empty object to retry a `failed` router with its stored auth key.
      # Include a new `auth_key` only while the router has never enrolled. The router's
      # Network and region cannot change: create a new router instead.
      sig do
        params(
          id: String,
          advertised_routes: T::Array[String],
          auth_key: String,
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TailscaleSubnetRouterUpdateResponse)
      end
      def update(
        # Identifies the resource.
        id,
        # IPv4 subnets of the Network that the router advertises to the tailnet. Each
        # entry is a canonical CIDR that the Network routes. Default, loopback,
        # link-local, multicast, and Tailscale (`100.64.0.0/10`) ranges are rejected. So
        # are ranges that overlap the router's own, `172.27.254.0/24` and `198.18.0.0/20`.
        advertised_routes: nil,
        # A replacement Tailscale auth key. Accepted only while the router has never
        # enrolled, for example after a `failed` enrollment. Never returned.
        auth_key: nil,
        # A user specified name for the router.
        name: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of the Tailscale Subnet Routers on the account, with
      # support for filtering by Network.
      sig do
        params(
          filter: Telnyx::TailscaleSubnetRouterListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::TailscaleSubnetRouter]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[network_id]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      # Removes the router from the Network and logs it out of the tailnet. The response
      # returns the router with `status` `deleting`. The record disappears once removal
      # completes. A machine entry can remain in the tailnet's admin console until it is
      # removed there.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TailscaleSubnetRouterDeleteResponse)
      end
      def delete(
        # Identifies the resource.
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
