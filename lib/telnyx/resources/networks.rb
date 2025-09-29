# frozen_string_literal: true

module Telnyx
  module Resources
    class Networks
      # @return [Telnyx::Resources::Networks::DefaultGateway]
      attr_reader :default_gateway

      # Create a new Network.
      #
      # @overload create(name:, request_options: {})
      #
      # @param name [String] A user specified name for the network.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NetworkCreateResponse]
      #
      # @see Telnyx::Models::NetworkCreateParams
      def create(params)
        parsed, options = Telnyx::NetworkCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "networks",
          body: parsed,
          model: Telnyx::Models::NetworkCreateResponse,
          options: options
        )
      end

      # Retrieve a Network.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NetworkRetrieveResponse]
      #
      # @see Telnyx::Models::NetworkRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["networks/%1$s", id],
          model: Telnyx::Models::NetworkRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update a Network.
      #
      # @overload update(id, name:, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param name [String] A user specified name for the network.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NetworkUpdateResponse]
      #
      # @see Telnyx::Models::NetworkUpdateParams
      def update(id, params)
        parsed, options = Telnyx::NetworkUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["networks/%1$s", id],
          body: parsed,
          model: Telnyx::Models::NetworkUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::NetworkListParams} for more details.
      #
      # List all Networks.
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::NetworkListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[name]
      #
      # @param page [Telnyx::Models::NetworkListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NetworkListResponse]
      #
      # @see Telnyx::Models::NetworkListParams
      def list(params = {})
        parsed, options = Telnyx::NetworkListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "networks",
          query: parsed,
          model: Telnyx::Models::NetworkListResponse,
          options: options
        )
      end

      # Delete a Network.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NetworkDeleteResponse]
      #
      # @see Telnyx::Models::NetworkDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["networks/%1$s", id],
          model: Telnyx::Models::NetworkDeleteResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::NetworkListInterfacesParams} for more details.
      #
      # List all Interfaces for a Network.
      #
      # @overload list_interfaces(id, filter: nil, page: nil, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param filter [Telnyx::Models::NetworkListInterfacesParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[name], filt
      #
      # @param page [Telnyx::Models::NetworkListInterfacesParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NetworkListInterfacesResponse]
      #
      # @see Telnyx::Models::NetworkListInterfacesParams
      def list_interfaces(id, params = {})
        parsed, options = Telnyx::NetworkListInterfacesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["networks/%1$s/network_interfaces", id],
          query: parsed,
          model: Telnyx::Models::NetworkListInterfacesResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @default_gateway = Telnyx::Resources::Networks::DefaultGateway.new(client: client)
      end
    end
  end
end
