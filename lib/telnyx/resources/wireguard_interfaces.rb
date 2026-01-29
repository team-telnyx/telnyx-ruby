# frozen_string_literal: true

module Telnyx
  module Resources
    class WireguardInterfaces
      # Create a new WireGuard Interface. Current limitation of 10 interfaces per user
      # can be created.
      #
      # @overload create(region_code:, enable_sip_trunking: nil, name: nil, network_id: nil, request_options: {})
      #
      # @param region_code [String] The region the interface should be deployed to.
      #
      # @param enable_sip_trunking [Boolean] Enable SIP traffic forwarding over VPN interface.
      #
      # @param name [String] A user specified name for the interface.
      #
      # @param network_id [String] The id of the network associated with the interface.
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
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::WireguardInterfaceListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[network_id]
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::WireguardInterfaceListResponse>]
      #
      # @see Telnyx::Models::WireguardInterfaceListParams
      def list(params = {})
        parsed, options = Telnyx::WireguardInterfaceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "wireguard_interfaces",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
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
