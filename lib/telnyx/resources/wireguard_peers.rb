# frozen_string_literal: true

module Telnyx
  module Resources
    class WireguardPeers
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::WireguardPeerCreateParams} for more details.
      #
      # Create a new WireGuard Peer. Current limitation of 5 peers per interface can be
      # created.
      #
      # @overload create(wireguard_interface_id:, public_key: nil, request_options: {})
      #
      # @param wireguard_interface_id [String] The id of the wireguard interface associated with the peer.
      #
      # @param public_key [String] The WireGuard `PublicKey`.<br /><br />If you do not provide a Public Key, a new
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WireguardPeerCreateResponse]
      #
      # @see Telnyx::Models::WireguardPeerCreateParams
      def create(params)
        parsed, options = Telnyx::WireguardPeerCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "wireguard_peers",
          body: parsed,
          model: Telnyx::Models::WireguardPeerCreateResponse,
          options: options
        )
      end

      # Retrieve the WireGuard peer.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WireguardPeerRetrieveResponse]
      #
      # @see Telnyx::Models::WireguardPeerRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["wireguard_peers/%1$s", id],
          model: Telnyx::Models::WireguardPeerRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::WireguardPeerUpdateParams} for more details.
      #
      # Update the WireGuard peer.
      #
      # @overload update(id, public_key: nil, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param public_key [String] The WireGuard `PublicKey`.<br /><br />If you do not provide a Public Key, a new
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WireguardPeerUpdateResponse]
      #
      # @see Telnyx::Models::WireguardPeerUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::WireguardPeerUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["wireguard_peers/%1$s", id],
          body: parsed,
          model: Telnyx::Models::WireguardPeerUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::WireguardPeerListParams} for more details.
      #
      # List all WireGuard peers.
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::WireguardPeerListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[wireguard_i
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::WireguardPeerListResponse>]
      #
      # @see Telnyx::Models::WireguardPeerListParams
      def list(params = {})
        parsed, options = Telnyx::WireguardPeerListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "wireguard_peers",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::WireguardPeerListResponse,
          options: options
        )
      end

      # Delete the WireGuard peer.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WireguardPeerDeleteResponse]
      #
      # @see Telnyx::Models::WireguardPeerDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["wireguard_peers/%1$s", id],
          model: Telnyx::Models::WireguardPeerDeleteResponse,
          options: params[:request_options]
        )
      end

      # Retrieve Wireguard config template for Peer
      #
      # @overload retrieve_config(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      #
      # @see Telnyx::Models::WireguardPeerRetrieveConfigParams
      def retrieve_config(id, params = {})
        @client.request(
          method: :get,
          path: ["wireguard_peers/%1$s/config", id],
          headers: {"accept" => "text/plain"},
          model: String,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
