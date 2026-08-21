# frozen_string_literal: true

module Telnyx
  module Resources
    # Network operations
    class Networks
      # Network operations
      # @return [Telnyx::Resources::Networks::DefaultGateway]
      attr_reader :default_gateway

      # Creates a new private network, the container that links your WireGuard
      # interfaces, gateways, and cross connects.
      #
      # @overload create(network_create:, request_options: {})
      #
      # @param network_create [Telnyx::Models::NetworkCreate]
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
          body: parsed[:network_create],
          model: Telnyx::Models::NetworkCreateResponse,
          options: options
        )
      end

      # Returns the details of a single network by its identifier.
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

      # Updates the specified network's attributes and returns the updated network.
      #
      # @overload update(network_id, network_create:, request_options: {})
      #
      # @param network_id [String] Identifies the resource.
      #
      # @param network_create [Telnyx::Models::NetworkCreate]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NetworkUpdateResponse]
      #
      # @see Telnyx::Models::NetworkUpdateParams
      def update(network_id, params)
        parsed, options = Telnyx::NetworkUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["networks/%1$s", network_id],
          body: parsed[:network_create],
          model: Telnyx::Models::NetworkUpdateResponse,
          options: options
        )
      end

      # Returns a paginated list of the private networks on your account, with support
      # for filtering.
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::NetworkListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[name]
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Network>]
      #
      # @see Telnyx::Models::NetworkListParams
      def list(params = {})
        parsed, options = Telnyx::NetworkListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "networks",
          query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Network,
          options: options
        )
      end

      # Permanently deletes the specified network from your account.
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
      # Returns a paginated list of the interfaces attached to the specified network,
      # with support for filtering.
      #
      # @overload list_interfaces(id, filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param filter [Telnyx::Models::NetworkListInterfacesParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[name], filt
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::NetworkListInterfacesResponse>]
      #
      # @see Telnyx::Models::NetworkListInterfacesParams
      def list_interfaces(id, params = {})
        parsed, options = Telnyx::NetworkListInterfacesParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["networks/%1$s/network_interfaces", id],
          query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
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
