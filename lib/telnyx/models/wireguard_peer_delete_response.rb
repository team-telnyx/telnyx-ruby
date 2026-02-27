# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WireguardPeers#delete
    class WireguardPeerDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WireguardPeerDeleteResponse::Data, nil]
      optional :data, -> { Telnyx::Models::WireguardPeerDeleteResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WireguardPeerDeleteResponse::Data]

      # @see Telnyx::Models::WireguardPeerDeleteResponse#data
      class Data < Telnyx::Models::Record
        # @!attribute wireguard_interface_id
        #   The id of the wireguard interface associated with the peer.
        #
        #   @return [String, nil]
        optional :wireguard_interface_id, String

        response_only do
          # @!attribute last_seen
          #   ISO 8601 formatted date-time indicating when peer sent traffic last time.
          #
          #   @return [String, nil]
          optional :last_seen, String

          # @!attribute private_key
          #   Your WireGuard `Interface.PrivateKey`.<br /><br />This attribute is only ever
          #   utlised if, on POST, you do NOT provide your own `public_key`. In which case, a
          #   new Public and Private key pair will be generated for you. When your
          #   `private_key` is returned, you must save this immediately as we do not save it
          #   within Telnyx. If you lose your Private Key, it can not be recovered.
          #
          #   @return [String, nil]
          optional :private_key, String
        end

        # @!method initialize(last_seen: nil, private_key: nil, wireguard_interface_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::WireguardPeerDeleteResponse::Data} for more details.
        #
        #   @param last_seen [String] ISO 8601 formatted date-time indicating when peer sent traffic last time.
        #
        #   @param private_key [String] Your WireGuard `Interface.PrivateKey`.<br /><br />This attribute is only ever ut
        #
        #   @param wireguard_interface_id [String] The id of the wireguard interface associated with the peer.
      end
    end
  end
end
