# frozen_string_literal: true

module Telnyx
  module Resources
    # Public Internet Gateway operations
    class PublicInternetGateways
      # Requests creation of a public internet gateway on the specified network, giving
      # the network internet egress. Creation is asynchronous, so the request is
      # accepted and completes in the background.
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [Telnyx::Models::PublicInternetGatewayCreateParams::Body]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PublicInternetGatewayCreateResponse]
      #
      # @see Telnyx::Models::PublicInternetGatewayCreateParams
      def create(params)
        parsed, options = Telnyx::PublicInternetGatewayCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "public_internet_gateways",
          body: parsed[:body],
          model: Telnyx::Models::PublicInternetGatewayCreateResponse,
          options: options
        )
      end

      # Returns the details of a single public internet gateway by its identifier.
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
      # Returns a paginated list of the public internet gateways on your account, with
      # support for filtering.
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::PublicInternetGatewayListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[network_id]
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::PublicInternetGatewayRead>]
      #
      # @see Telnyx::Models::PublicInternetGatewayListParams
      def list(params = {})
        parsed, options = Telnyx::PublicInternetGatewayListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "public_internet_gateways",
          query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::PublicInternetGatewayRead,
          options: options
        )
      end

      # Deletes the specified public internet gateway, removing internet egress through
      # it.
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
