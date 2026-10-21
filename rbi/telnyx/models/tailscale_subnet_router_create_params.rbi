# typed: strong

module Telnyx
  module Models
    class TailscaleSubnetRouterCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::TailscaleSubnetRouterCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # IPv4 subnets of the Network that the router advertises to the tailnet. Each
      # entry is a canonical CIDR that the Network routes. Default, loopback,
      # link-local, multicast, and Tailscale (`100.64.0.0/10`) ranges are rejected. So
      # are ranges that overlap the router's own, `172.27.254.0/24` and `198.18.0.0/20`.
      sig { returns(T::Array[String]) }
      attr_accessor :advertised_routes

      # A Tailscale auth key that enrolls the router in the user's tailnet: reusable,
      # pre-approved, tagged, and not ephemeral. Telnyx stores it encrypted until
      # enrollment succeeds, then discards it. It is never returned.
      sig { returns(String) }
      attr_accessor :auth_key

      # A user specified name for the router.
      sig { returns(String) }
      attr_accessor :name

      # The id of the Network to attach the router to.
      sig { returns(String) }
      attr_accessor :network_id

      # The code of the region to create the router in. `GET /network_coverage` lists
      # the regions whose `available_services` include `tailscale_subnet_router`.
      sig { returns(String) }
      attr_accessor :region_code

      sig do
        params(
          advertised_routes: T::Array[String],
          auth_key: String,
          name: String,
          network_id: String,
          region_code: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            advertised_routes: T::Array[String],
            auth_key: String,
            name: String,
            network_id: String,
            region_code: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
