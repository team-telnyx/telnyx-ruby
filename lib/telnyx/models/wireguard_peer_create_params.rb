# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WireguardPeers#create
    class WireguardPeerCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute wireguard_interface_id
      #   The id of the wireguard interface associated with the peer.
      #
      #   @return [String]
      required :wireguard_interface_id, String

      # @!method initialize(wireguard_interface_id:, request_options: {})
      #   @param wireguard_interface_id [String] The id of the wireguard interface associated with the peer.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
