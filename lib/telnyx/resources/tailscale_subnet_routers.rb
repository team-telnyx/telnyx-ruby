# frozen_string_literal: true

module Telnyx
  module Resources
    # Tailscale Subnet Router operations
    class TailscaleSubnetRouters
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TailscaleSubnetRouterCreateParams} for more details.
      #
      # Creates a Tailscale Subnet Router on a Network and enrolls it in the user's
      # tailnet with the auth key. The response returns the router with `status`
      # `provisioning`. Poll `GET /tailscale_subnet_routers/{id}` until it is
      # `provisioned`. Then approve its routes in the tailnet, unless an auto-approver
      # covers them.
      #
      # @overload create(advertised_routes:, auth_key:, name:, network_id:, region_code:, request_options: {})
      #
      # @param advertised_routes [Array<String>] IPv4 subnets of the Network that the router advertises to the tailnet. Each entr
      #
      # @param auth_key [String] A Tailscale auth key that enrolls the router in the user's tailnet: reusable, pr
      #
      # @param name [String] A user specified name for the router.
      #
      # @param network_id [String] The id of the Network to attach the router to.
      #
      # @param region_code [String] The code of the region to create the router in. `GET /network_coverage` lists th
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TailscaleSubnetRouterCreateResponse]
      #
      # @see Telnyx::Models::TailscaleSubnetRouterCreateParams
      def create(params)
        parsed, options = Telnyx::TailscaleSubnetRouterCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "tailscale_subnet_routers",
          body: parsed,
          model: Telnyx::Models::TailscaleSubnetRouterCreateResponse,
          options: options
        )
      end

      # Returns the details of a single Tailscale Subnet Router by its identifier,
      # including its enrollment state.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TailscaleSubnetRouterRetrieveResponse]
      #
      # @see Telnyx::Models::TailscaleSubnetRouterRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["tailscale_subnet_routers/%1$s", id],
          model: Telnyx::Models::TailscaleSubnetRouterRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TailscaleSubnetRouterUpdateParams} for more details.
      #
      # Renames the router, changes its advertised routes, or retries a failed
      # enrollment. Any change queues a new provisioning run and returns the router with
      # `status` `provisioning`. The router keeps its machine identity on the tailnet.
      # Send an empty object to retry a `failed` router with its stored auth key.
      # Include a new `auth_key` only while the router has never enrolled. The router's
      # Network and region cannot change: create a new router instead.
      #
      # @overload update(id, advertised_routes: nil, auth_key: nil, name: nil, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param advertised_routes [Array<String>] IPv4 subnets of the Network that the router advertises to the tailnet. Each entr
      #
      # @param auth_key [String] A replacement Tailscale auth key. Accepted only while the router has never enrol
      #
      # @param name [String] A user specified name for the router.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TailscaleSubnetRouterUpdateResponse]
      #
      # @see Telnyx::Models::TailscaleSubnetRouterUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::TailscaleSubnetRouterUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["tailscale_subnet_routers/%1$s", id],
          body: parsed,
          model: Telnyx::Models::TailscaleSubnetRouterUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TailscaleSubnetRouterListParams} for more details.
      #
      # Returns a paginated list of the Tailscale Subnet Routers on the account, with
      # support for filtering by Network.
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::TailscaleSubnetRouterListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[network_id]
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::TailscaleSubnetRouter>]
      #
      # @see Telnyx::Models::TailscaleSubnetRouterListParams
      def list(params = {})
        parsed, options = Telnyx::TailscaleSubnetRouterListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "tailscale_subnet_routers",
          query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::TailscaleSubnetRouter,
          options: options
        )
      end

      # Removes the router from the Network and logs it out of the tailnet. The response
      # returns the router with `status` `deleting`. The record disappears once removal
      # completes. A machine entry can remain in the tailnet's admin console until it is
      # removed there.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TailscaleSubnetRouterDeleteResponse]
      #
      # @see Telnyx::Models::TailscaleSubnetRouterDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["tailscale_subnet_routers/%1$s", id],
          model: Telnyx::Models::TailscaleSubnetRouterDeleteResponse,
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
