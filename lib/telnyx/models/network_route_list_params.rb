# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NetworkRoutes#list
    class NetworkRouteListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[network_id], filter[origin], filter[next_hop.type], filter[cidr],
      #   filter[status]
      #
      #   @return [Telnyx::Models::NetworkRouteListParams::Filter]
      required :filter, -> { Telnyx::NetworkRouteListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[after],
      #   page[limit]
      #
      #   @return [Telnyx::Models::NetworkRouteListParams::Page, nil]
      optional :page, -> { Telnyx::NetworkRouteListParams::Page }

      # @!attribute sort
      #   Sorts the results by a field, ascending, or descending with a leading `-`. The
      #   default is `-created_at`.
      #
      #   @return [Symbol, Telnyx::Models::NetworkRouteListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::NetworkRouteListParams::Sort }

      # @!method initialize(filter:, page: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::NetworkRouteListParams} for more details.
      #
      #   @param filter [Telnyx::Models::NetworkRouteListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[network_id]
      #
      #   @param page [Telnyx::Models::NetworkRouteListParams::Page] Consolidated page parameter (deepObject style). Originally: page[after], page[li
      #
      #   @param sort [Symbol, Telnyx::Models::NetworkRouteListParams::Sort] Sorts the results by a field, ascending, or descending with a leading `-`. The d
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute network_id
        #   The id of the Network whose route table is returned. Required.
        #
        #   @return [String]
        required :network_id, String

        # @!attribute cidr
        #   Only routes with this CIDR.
        #
        #   @return [String, nil]
        optional :cidr, String

        # @!attribute next_hop_type
        #   Only routes whose next hop has this type.
        #
        #   @return [Symbol, Telnyx::Models::NetworkRouteListParams::Filter::NextHopType, nil]
        optional :next_hop_type,
                 enum: -> { Telnyx::NetworkRouteListParams::Filter::NextHopType },
                 api_name: :"next_hop.type"

        # @!attribute origin
        #   Only routes of this origin.
        #
        #   @return [Symbol, Telnyx::Models::NetworkRouteListParams::Filter::Origin, nil]
        optional :origin, enum: -> { Telnyx::NetworkRouteListParams::Filter::Origin }

        # @!attribute status
        #   Only routes with this status.
        #
        #   @return [Symbol, Telnyx::Models::NetworkRouteListParams::Filter::Status, nil]
        optional :status, enum: -> { Telnyx::NetworkRouteListParams::Filter::Status }

        # @!method initialize(network_id:, cidr: nil, next_hop_type: nil, origin: nil, status: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[network_id], filter[origin], filter[next_hop.type], filter[cidr],
        #   filter[status]
        #
        #   @param network_id [String] The id of the Network whose route table is returned. Required.
        #
        #   @param cidr [String] Only routes with this CIDR.
        #
        #   @param next_hop_type [Symbol, Telnyx::Models::NetworkRouteListParams::Filter::NextHopType] Only routes whose next hop has this type.
        #
        #   @param origin [Symbol, Telnyx::Models::NetworkRouteListParams::Filter::Origin] Only routes of this origin.
        #
        #   @param status [Symbol, Telnyx::Models::NetworkRouteListParams::Filter::Status] Only routes with this status.

        # Only routes whose next hop has this type.
        #
        # @see Telnyx::Models::NetworkRouteListParams::Filter#next_hop_type
        module NextHopType
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

        # Only routes of this origin.
        #
        # @see Telnyx::Models::NetworkRouteListParams::Filter#origin
        module Origin
          extend Telnyx::Internal::Type::Enum

          STATIC = :static
          ATTACHMENT = :attachment

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Only routes with this status.
        #
        # @see Telnyx::Models::NetworkRouteListParams::Filter#status
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

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute after
        #   The cursor from `meta.cursors.after` of the previous page.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute limit
        #   The number of results per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!method initialize(after: nil, limit: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[after],
        #   page[limit]
        #
        #   @param after [String] The cursor from `meta.cursors.after` of the previous page.
        #
        #   @param limit [Integer] The number of results per page.
      end

      # Sorts the results by a field, ascending, or descending with a leading `-`. The
      # default is `-created_at`.
      module Sort
        extend Telnyx::Internal::Type::Enum

        CIDR = :cidr
        MINUS_CIDR = :"-cidr"
        STATUS = :status
        STATUS_DESC = :"-status"
        CREATED_AT = :created_at
        CREATED_AT_DESC = :"-created_at"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
