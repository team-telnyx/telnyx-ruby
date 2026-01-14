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

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::WireguardPeerListParams} for more details.
      #
      #   @param filter [Telnyx::Models::WireguardPeerListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[wireguard_i
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
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
    end
  end
end
