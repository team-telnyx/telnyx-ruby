# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TailscaleSubnetRouters#create
    class TailscaleSubnetRouterCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute advertised_routes
      #   IPv4 subnets of the Network that the router advertises to the tailnet. Each
      #   entry is a canonical CIDR that the Network routes. Default, loopback,
      #   link-local, multicast, and Tailscale (`100.64.0.0/10`) ranges are rejected. So
      #   are ranges that overlap the router's own, `172.27.254.0/24` and `198.18.0.0/20`.
      #
      #   @return [Array<String>]
      required :advertised_routes, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute auth_key
      #   A Tailscale auth key that enrolls the router in the user's tailnet: reusable,
      #   pre-approved, tagged, and not ephemeral. Telnyx stores it encrypted until
      #   enrollment succeeds, then discards it. It is never returned.
      #
      #   @return [String]
      required :auth_key, String

      # @!attribute name
      #   A user specified name for the router.
      #
      #   @return [String]
      required :name, String

      # @!attribute network_id
      #   The id of the Network to attach the router to.
      #
      #   @return [String]
      required :network_id, String

      # @!attribute region_code
      #   The code of the region to create the router in. `GET /network_coverage` lists
      #   the regions whose `available_services` include `tailscale_subnet_router`.
      #
      #   @return [String]
      required :region_code, String

      # @!method initialize(advertised_routes:, auth_key:, name:, network_id:, region_code:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TailscaleSubnetRouterCreateParams} for more details.
      #
      #   @param advertised_routes [Array<String>] IPv4 subnets of the Network that the router advertises to the tailnet. Each entr
      #
      #   @param auth_key [String] A Tailscale auth key that enrolls the router in the user's tailnet: reusable, pr
      #
      #   @param name [String] A user specified name for the router.
      #
      #   @param network_id [String] The id of the Network to attach the router to.
      #
      #   @param region_code [String] The code of the region to create the router in. `GET /network_coverage` lists th
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
