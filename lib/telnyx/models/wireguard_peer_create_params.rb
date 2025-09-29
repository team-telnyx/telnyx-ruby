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

      # @!attribute public_key
      #   The WireGuard `PublicKey`.<br /><br />If you do not provide a Public Key, a new
      #   Public and Private key pair will be generated for you.
      #
      #   @return [String, nil]
      optional :public_key, String

      # @!method initialize(wireguard_interface_id:, public_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::WireguardPeerCreateParams} for more details.
      #
      #   @param wireguard_interface_id [String] The id of the wireguard interface associated with the peer.
      #
      #   @param public_key [String] The WireGuard `PublicKey`.<br /><br />If you do not provide a Public Key, a new
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
