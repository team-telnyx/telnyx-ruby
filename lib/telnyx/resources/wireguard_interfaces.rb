# frozen_string_literal: true

module Telnyx
  module Resources
    class WireguardInterfaces
      # Create a new WireGuard Interface. Current limitation of 10 interfaces per user
      # can be created.
      #
      # @overload create(network_id:, region_code:, enable_sip_trunking: nil, name: nil, request_options: {})
      #
      # @param network_id [String] The id of the network associated with the interface.
      #
      # @param region_code [String] The region the interface should be deployed to.
      #
      # @param enable_sip_trunking [Boolean] Enable SIP traffic forwarding over VPN interface.
      #
      # @param name [String] A user specified name for the interface.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WireguardInterfaceCreateResponse]
      #
      # @see Telnyx::Models::WireguardInterfaceCreateParams
      def create(params)
        parsed, options = Telnyx::WireguardInterfaceCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "wireguard_interfaces",
          body: parsed,
          model: Telnyx::Models::WireguardInterfaceCreateResponse,
          options: options
        )
      end

      # Retrieve a WireGuard Interfaces.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WireguardInterfaceRetrieveResponse]
      #
      # @see Telnyx::Models::WireguardInterfaceRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["wireguard_interfaces/%1$s", id],
          model: Telnyx::Models::WireguardInterfaceRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::WireguardInterfaceListParams} for more details.
      #
      # List all WireGuard Interfaces.
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::WireguardInterfaceListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[network_id]
      #
      # @param page [Telnyx::Models::WireguardInterfaceListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WireguardInterfaceListResponse]
      #
      # @see Telnyx::Models::WireguardInterfaceListParams
      def list(params = {})
        parsed, options = Telnyx::WireguardInterfaceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "wireguard_interfaces",
          query: parsed,
          model: Telnyx::Models::WireguardInterfaceListResponse,
          options: options
        )
      end

      # Delete a WireGuard Interface.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WireguardInterfaceDeleteResponse]
      #
      # @see Telnyx::Models::WireguardInterfaceDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["wireguard_interfaces/%1$s", id],
          model: Telnyx::Models::WireguardInterfaceDeleteResponse,
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
