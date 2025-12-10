# frozen_string_literal: true

module Telnyx
  module Resources
    class PublicInternetGateways
      # Create a new Public Internet Gateway.
      #
      # @overload create(name: nil, network_id: nil, region_code: nil, request_options: {})
      #
      # @param name [String] A user specified name for the interface.
      #
      # @param network_id [String] The id of the network associated with the interface.
      #
      # @param region_code [String] The region interface is deployed to.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PublicInternetGatewayCreateResponse]
      #
      # @see Telnyx::Models::PublicInternetGatewayCreateParams
      def create(params = {})
        parsed, options = Telnyx::PublicInternetGatewayCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "public_internet_gateways",
          body: parsed,
          model: Telnyx::Models::PublicInternetGatewayCreateResponse,
          options: options
        )
      end

      # Retrieve a Public Internet Gateway.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PublicInternetGatewayRetrieveResponse]
      #
      # @see Telnyx::Models::PublicInternetGatewayRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["public_internet_gateways/%1$s", id],
          model: Telnyx::Models::PublicInternetGatewayRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PublicInternetGatewayListParams} for more details.
      #
      # List all Public Internet Gateways.
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::PublicInternetGatewayListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[network_id]
      #
      # @param page [Telnyx::Models::PublicInternetGatewayListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::PublicInternetGatewayListResponse>]
      #
      # @see Telnyx::Models::PublicInternetGatewayListParams
      def list(params = {})
        parsed, options = Telnyx::PublicInternetGatewayListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "public_internet_gateways",
          query: parsed,
          page: Telnyx::Internal::DefaultPagination,
          model: Telnyx::Models::PublicInternetGatewayListResponse,
          options: options
        )
      end

      # Delete a Public Internet Gateway.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PublicInternetGatewayDeleteResponse]
      #
      # @see Telnyx::Models::PublicInternetGatewayDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["public_internet_gateways/%1$s", id],
          model: Telnyx::Models::PublicInternetGatewayDeleteResponse,
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
