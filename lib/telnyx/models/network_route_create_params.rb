# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NetworkRoutes#create
    class NetworkRouteCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute cidr
      #   The IPv4 subnet to route, such as a subnet behind a tunnel or a WireGuard peer.
      #   It must be a canonical CIDR. Default, loopback, link-local, multicast, and
      #   shared address space (`100.64.0.0/10`) ranges are rejected. So are ranges that
      #   overlap the Tailscale Subnet Router ranges, `172.27.254.0/24` and
      #   `198.18.0.0/20`, or a subnet already on the Network.
      #
      #   @return [String]
      required :cidr, String

      # @!attribute network_id
      #   The id of the Network to add the route to.
      #
      #   @return [String]
      required :network_id, String

      # @!attribute next_hop
      #   Where the Network sends traffic for `cidr`.
      #
      #   @return [Telnyx::Models::NetworkRouteCreateParams::NextHop]
      required :next_hop, -> { Telnyx::NetworkRouteCreateParams::NextHop }

      # @!method initialize(cidr:, network_id:, next_hop:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::NetworkRouteCreateParams} for more details.
      #
      #   @param cidr [String] The IPv4 subnet to route, such as a subnet behind a tunnel or a WireGuard peer.
      #
      #   @param network_id [String] The id of the Network to add the route to.
      #
      #   @param next_hop [Telnyx::Models::NetworkRouteCreateParams::NextHop] Where the Network sends traffic for `cidr`.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class NextHop < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   The id of the tunnel, or of a WireGuard peer on the Network's WireGuard
        #   Interface.
        #
        #   @return [String]
        required :id, String

        # @!attribute type
        #   The type of the next hop.
        #
        #   @return [Symbol, Telnyx::Models::NetworkRouteCreateParams::NextHop::Type]
        required :type, enum: -> { Telnyx::NetworkRouteCreateParams::NextHop::Type }

        # @!method initialize(id:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::NetworkRouteCreateParams::NextHop} for more details.
        #
        #   Where the Network sends traffic for `cidr`.
        #
        #   @param id [String] The id of the tunnel, or of a WireGuard peer on the Network's WireGuard Interfac
        #
        #   @param type [Symbol, Telnyx::Models::NetworkRouteCreateParams::NextHop::Type] The type of the next hop.

        # The type of the next hop.
        #
        # @see Telnyx::Models::NetworkRouteCreateParams::NextHop#type
        module Type
          extend Telnyx::Internal::Type::Enum

          TUNNEL = :tunnel
          WIREGUARD_PEER = :wireguard_peer

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
