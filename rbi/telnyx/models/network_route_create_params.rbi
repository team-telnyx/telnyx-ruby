# typed: strong

module Telnyx
  module Models
    class NetworkRouteCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::NetworkRouteCreateParams, Telnyx::Internal::AnyHash)
        end

      # The IPv4 subnet to route, such as a subnet behind the tunnel. It must be a
      # canonical CIDR. Default, loopback, link-local, multicast, and shared address
      # space (`100.64.0.0/10`) ranges are rejected. So are ranges that overlap the
      # Tailscale Subnet Router ranges, `172.27.254.0/24` and `198.18.0.0/20`, or a
      # subnet already on the Network.
      sig { returns(String) }
      attr_accessor :cidr

      # The id of the Network to add the route to.
      sig { returns(String) }
      attr_accessor :network_id

      # Where the Network sends traffic for `cidr`.
      sig { returns(Telnyx::NetworkRouteCreateParams::NextHop) }
      attr_reader :next_hop

      sig do
        params(next_hop: Telnyx::NetworkRouteCreateParams::NextHop::OrHash).void
      end
      attr_writer :next_hop

      sig do
        params(
          cidr: String,
          network_id: String,
          next_hop: Telnyx::NetworkRouteCreateParams::NextHop::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            cidr: String,
            network_id: String,
            next_hop: Telnyx::NetworkRouteCreateParams::NextHop,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class NextHop < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NetworkRouteCreateParams::NextHop,
              Telnyx::Internal::AnyHash
            )
          end

        # The id of the tunnel.
        sig { returns(String) }
        attr_accessor :id

        # The type of the next hop.
        sig do
          returns(Telnyx::NetworkRouteCreateParams::NextHop::Type::OrSymbol)
        end
        attr_accessor :type

        # Where the Network sends traffic for `cidr`.
        sig do
          params(
            id: String,
            type: Telnyx::NetworkRouteCreateParams::NextHop::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The id of the tunnel.
          id:,
          # The type of the next hop.
          type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              type: Telnyx::NetworkRouteCreateParams::NextHop::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The type of the next hop.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::NetworkRouteCreateParams::NextHop::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TUNNEL =
            T.let(
              :tunnel,
              Telnyx::NetworkRouteCreateParams::NextHop::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::NetworkRouteCreateParams::NextHop::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
