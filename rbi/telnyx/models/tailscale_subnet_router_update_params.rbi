# typed: strong

module Telnyx
  module Models
    class TailscaleSubnetRouterUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::TailscaleSubnetRouterUpdateParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # IPv4 subnets of the Network that the router advertises to the tailnet. Each
      # entry is a canonical CIDR that the Network routes. Default, loopback,
      # link-local, multicast, and Tailscale (`100.64.0.0/10`) ranges are rejected. So
      # are ranges that overlap the router's own, `172.27.254.0/24` and `198.18.0.0/20`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :advertised_routes

      sig { params(advertised_routes: T::Array[String]).void }
      attr_writer :advertised_routes

      # A replacement Tailscale auth key. Accepted only while the router has never
      # enrolled, for example after a `failed` enrollment. Never returned.
      sig { returns(T.nilable(String)) }
      attr_reader :auth_key

      sig { params(auth_key: String).void }
      attr_writer :auth_key

      # A user specified name for the router.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          id: String,
          advertised_routes: T::Array[String],
          auth_key: String,
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
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

      sig do
        override.returns(
          {
            id: String,
            advertised_routes: T::Array[String],
            auth_key: String,
            name: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
