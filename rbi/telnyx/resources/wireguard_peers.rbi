# typed: strong

module Telnyx
  module Resources
    class WireguardPeers
      # Create a new WireGuard Peer. Current limitation of 5 peers per interface can be
      # created.
      sig do
        params(
          wireguard_interface_id: String,
          public_key: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WireguardPeerCreateResponse)
      end
      def create(
        # The id of the wireguard interface associated with the peer.
        wireguard_interface_id:,
        # The WireGuard `PublicKey`.<br /><br />If you do not provide a Public Key, a new
        # Public and Private key pair will be generated for you.
        public_key: nil,
        request_options: {}
      )
      end

      # Retrieve the WireGuard peer.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WireguardPeerRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Update the WireGuard peer.
      sig do
        params(
          id: String,
          public_key: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WireguardPeerUpdateResponse)
      end
      def update(
        # Identifies the resource.
        id,
        # The WireGuard `PublicKey`.<br /><br />If you do not provide a Public Key, a new
        # Public and Private key pair will be generated for you.
        public_key: nil,
        request_options: {}
      )
      end

      # List all WireGuard peers.
      sig do
        params(
          filter: Telnyx::WireguardPeerListParams::Filter::OrHash,
          page: Telnyx::WireguardPeerListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WireguardPeerListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[wireguard_interface_id]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        request_options: {}
      )
      end

      # Delete the WireGuard peer.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WireguardPeerDeleteResponse)
      end
      def delete(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Retrieve Wireguard config template for Peer
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(String)
      end
      def retrieve_config(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
