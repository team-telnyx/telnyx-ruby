# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WireguardPeers#update
    class WireguardPeerUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WireguardPeerUpdateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::WireguardPeerUpdateResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WireguardPeerUpdateResponse::Data]

      # @see Telnyx::Models::WireguardPeerUpdateResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute public_key
        #   The WireGuard `PublicKey`.<br /><br />If you do not provide a Public Key, a new
        #   Public and Private key pair will be generated for you.
        #
        #   @return [String, nil]
        optional :public_key, String

        # @!attribute wireguard_interface_id
        #   The id of the wireguard interface associated with the peer.
        #
        #   @return [String, nil]
        optional :wireguard_interface_id, String

        response_only do
          # @!attribute id
          #   Identifies the resource.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #   ISO 8601 formatted date-time indicating when the resource was created.
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute updated_at
          #   ISO 8601 formatted date-time indicating when the resource was updated.
          #
          #   @return [String, nil]
          optional :updated_at, String

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

        # @!method initialize(id: nil, created_at: nil, record_type: nil, updated_at: nil, public_key: nil, last_seen: nil, private_key: nil, wireguard_interface_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::WireguardPeerUpdateResponse::Data} for more details.
        #
        #   @param id [String] Identifies the resource.
        #
        #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.
        #
        #   @param public_key [String] The WireGuard `PublicKey`.<br /><br />If you do not provide a Public Key, a new
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
