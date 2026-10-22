# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TailscaleSubnetRouters#update
    class TailscaleSubnetRouterUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute advertised_routes
      #   IPv4 subnets of the Network that the router advertises to the tailnet. Each
      #   entry is a canonical CIDR that the Network routes. Default, loopback,
      #   link-local, multicast, and Tailscale (`100.64.0.0/10`) ranges are rejected. So
      #   are ranges that overlap the router's own, `172.27.254.0/24` and `198.18.0.0/20`.
      #
      #   @return [Array<String>, nil]
      optional :advertised_routes, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute auth_key
      #   A replacement Tailscale auth key. Accepted only while the router has never
      #   enrolled, for example after a `failed` enrollment. Never returned.
      #
      #   @return [String, nil]
      optional :auth_key, String

      # @!attribute name
      #   A user specified name for the router.
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(id:, advertised_routes: nil, auth_key: nil, name: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TailscaleSubnetRouterUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param advertised_routes [Array<String>] IPv4 subnets of the Network that the router advertises to the tailnet. Each entr
      #
      #   @param auth_key [String] A replacement Tailscale auth key. Accepted only while the router has never enrol
      #
      #   @param name [String] A user specified name for the router.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
