# frozen_string_literal: true

module Telnyx
  module Models
    module Networks
      class NetworksDefaultGateway < Telnyx::Models::Record
        # @!attribute wireguard_peer_id
        #   Wireguard peer ID.
        #
        #   @return [String, nil]
        optional :wireguard_peer_id, String

        response_only do
          # @!attribute network_id
          #   Network ID.
          #
          #   @return [String, nil]
          optional :network_id, String

          # @!attribute status
          #   The current status of the interface deployment.
          #
          #   @return [Symbol, Telnyx::Models::InterfaceStatus, nil]
          optional :status, enum: -> { Telnyx::InterfaceStatus }
        end

        # @!method initialize(network_id: nil, status: nil, wireguard_peer_id: nil)
        #   @param network_id [String] Network ID.
        #
        #   @param status [Symbol, Telnyx::Models::InterfaceStatus] The current status of the interface deployment.
        #
        #   @param wireguard_peer_id [String] Wireguard peer ID.
      end
    end
  end
end
