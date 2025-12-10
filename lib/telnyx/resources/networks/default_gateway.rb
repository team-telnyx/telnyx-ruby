# frozen_string_literal: true

module Telnyx
  module Resources
    class Networks
      class DefaultGateway
        # Create Default Gateway.
        #
        # @overload create(network_identifier, wireguard_peer_id: nil, request_options: {})
        #
        # @param network_identifier [String] Identifies the resource.
        #
        # @param wireguard_peer_id [String] Wireguard peer ID.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Networks::DefaultGatewayCreateResponse]
        #
        # @see Telnyx::Models::Networks::DefaultGatewayCreateParams
        def create(network_identifier, params = {})
          parsed, options = Telnyx::Networks::DefaultGatewayCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["networks/%1$s/default_gateway", network_identifier],
            body: parsed,
            model: Telnyx::Models::Networks::DefaultGatewayCreateResponse,
            options: options
          )
        end

        # Get Default Gateway status.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Networks::DefaultGatewayRetrieveResponse]
        #
        # @see Telnyx::Models::Networks::DefaultGatewayRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["networks/%1$s/default_gateway", id],
            model: Telnyx::Models::Networks::DefaultGatewayRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Delete Default Gateway.
        #
        # @overload delete(id, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Networks::DefaultGatewayDeleteResponse]
        #
        # @see Telnyx::Models::Networks::DefaultGatewayDeleteParams
        def delete(id, params = {})
          @client.request(
            method: :delete,
            path: ["networks/%1$s/default_gateway", id],
            model: Telnyx::Models::Networks::DefaultGatewayDeleteResponse,
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
end
