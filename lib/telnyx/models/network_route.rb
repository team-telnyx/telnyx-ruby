# frozen_string_literal: true

module Telnyx
  module Models
    class NetworkRoute < Telnyx::Internal::Type::BaseModel
      # @!attribute cidr
      #   The IPv4 CIDR the route covers.
      #
      #   @return [String, nil]
      optional :cidr, String

      # @!attribute network_id
      #   The id of the Network the route belongs to.
      #
      #   @return [String, nil]
      optional :network_id, String

      # @!attribute next_hop
      #   Where the Network sends traffic for the route's CIDR.
      #
      #   @return [Telnyx::Models::NetworkRoute::NextHop, nil]
      optional :next_hop, -> { Telnyx::NetworkRoute::NextHop }

      response_only do
        # @!attribute id
        #   Identifies the resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute origin
        #   `static` for a route added with `POST /network_routes`, `attachment` for a route
        #   that another resource installed and removes.
        #
        #   @return [Symbol, Telnyx::Models::NetworkRoute::Origin, nil]
        optional :origin, enum: -> { Telnyx::NetworkRoute::Origin }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute status
        #   `pending` until Telnyx installs the route on the Network, then `active`.
        #   `inactive` while a tunnel next hop has no connected process. `failed` (Preview,
        #   not reported yet) when Telnyx could not install the route.
        #
        #   @return [Symbol, Telnyx::Models::NetworkRoute::Status, nil]
        optional :status, enum: -> { Telnyx::NetworkRoute::Status }
      end

      # @!method initialize(id: nil, cidr: nil, created_at: nil, network_id: nil, next_hop: nil, origin: nil, record_type: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::NetworkRoute} for more details.
      #
      #   @param id [String] Identifies the resource.
      #
      #   @param cidr [String] The IPv4 CIDR the route covers.
      #
      #   @param created_at [Time] ISO 8601 formatted date-time indicating when the resource was created.
      #
      #   @param network_id [String] The id of the Network the route belongs to.
      #
      #   @param next_hop [Telnyx::Models::NetworkRoute::NextHop] Where the Network sends traffic for the route's CIDR.
      #
      #   @param origin [Symbol, Telnyx::Models::NetworkRoute::Origin] `static` for a route added with `POST /network_routes`, `attachment` for a route
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param status [Symbol, Telnyx::Models::NetworkRoute::Status] `pending` until Telnyx installs the route on the Network, then `active`. `inacti

      # @see Telnyx::Models::NetworkRoute#next_hop
      class NextHop < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   The id of the tunnel or attachment.
        #
        #   @return [String]
        required :id, String

        # @!attribute type
        #   The type of the next hop. Routes added with `POST /network_routes` use `tunnel`.
        #   Routes that attachments install carry the attachment's type.
        #
        #   @return [Symbol, Telnyx::Models::NetworkRoute::NextHop::Type]
        required :type, enum: -> { Telnyx::NetworkRoute::NextHop::Type }

        # @!method initialize(id:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::NetworkRoute::NextHop} for more details.
        #
        #   Where the Network sends traffic for the route's CIDR.
        #
        #   @param id [String] The id of the tunnel or attachment.
        #
        #   @param type [Symbol, Telnyx::Models::NetworkRoute::NextHop::Type] The type of the next hop. Routes added with `POST /network_routes` use `tunnel`.

        # The type of the next hop. Routes added with `POST /network_routes` use `tunnel`.
        # Routes that attachments install carry the attachment's type.
        #
        # @see Telnyx::Models::NetworkRoute::NextHop#type
        module Type
          extend Telnyx::Internal::Type::Enum

          TUNNEL = :tunnel
          WIREGUARD_PEER = :wireguard_peer
          WIREGUARD_INTERFACE = :wireguard_interface
          PRIVATE_WIRELESS_GATEWAY = :private_wireless_gateway
          VIRTUAL_CROSS_CONNECT = :virtual_cross_connect
          IPSEC_TUNNEL = :ipsec_tunnel
          PUBLIC_INTERNET_GATEWAY = :public_internet_gateway

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # `static` for a route added with `POST /network_routes`, `attachment` for a route
      # that another resource installed and removes.
      #
      # @see Telnyx::Models::NetworkRoute#origin
      module Origin
        extend Telnyx::Internal::Type::Enum

        STATIC = :static
        ATTACHMENT = :attachment

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # `pending` until Telnyx installs the route on the Network, then `active`.
      # `inactive` while a tunnel next hop has no connected process. `failed` (Preview,
      # not reported yet) when Telnyx could not install the route.
      #
      # @see Telnyx::Models::NetworkRoute#status
      module Status
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        ACTIVE = :active
        INACTIVE = :inactive
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
