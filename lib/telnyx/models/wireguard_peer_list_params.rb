# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WireguardPeers#list
    class WireguardPeerListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[wireguard_interface_id]
      #
      #   @return [Telnyx::Models::WireguardPeerListParams::Filter, nil]
      optional :filter, -> { Telnyx::WireguardPeerListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::WireguardPeerListParams::Page, nil]
      optional :page, -> { Telnyx::WireguardPeerListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::WireguardPeerListParams} for more details.
      #
      #   @param filter [Telnyx::Models::WireguardPeerListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[wireguard_i
      #
      #   @param page [Telnyx::Models::WireguardPeerListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute wireguard_interface_id
        #   The id of the associated WireGuard interface to filter on.
        #
        #   @return [String, nil]
        optional :wireguard_interface_id, String

        # @!method initialize(wireguard_interface_id: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[wireguard_interface_id]
        #
        #   @param wireguard_interface_id [String] The id of the associated WireGuard interface to filter on.
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   The page number to load
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   The size of the page
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end
    end
  end
end
