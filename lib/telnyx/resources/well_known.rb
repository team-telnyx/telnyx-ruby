# frozen_string_literal: true

module Telnyx
  module Resources
    class WellKnown
      # OAuth 2.0 Authorization Server Metadata (RFC 8414)
      #
      # @overload retrieve_authorization_server_metadata(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WellKnownRetrieveAuthorizationServerMetadataResponse]
      #
      # @see Telnyx::Models::WellKnownRetrieveAuthorizationServerMetadataParams
      def retrieve_authorization_server_metadata(params = {})
        path =
          @client.base_url_overridden? ? ".well-known/oauth-authorization-server" : "https://api.telnyx.com/.well-known/oauth-authorization-server"
        @client.request(
          method: :get,
          path: path,
          model: Telnyx::Models::WellKnownRetrieveAuthorizationServerMetadataResponse,
          options: params[:request_options]
        )
      end

      # OAuth 2.0 Protected Resource Metadata for resource discovery
      #
      # @overload retrieve_protected_resource_metadata(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WellKnownRetrieveProtectedResourceMetadataResponse]
      #
      # @see Telnyx::Models::WellKnownRetrieveProtectedResourceMetadataParams
      def retrieve_protected_resource_metadata(params = {})
        path =
          @client.base_url_overridden? ? ".well-known/oauth-protected-resource" : "https://api.telnyx.com/.well-known/oauth-protected-resource"
        @client.request(
          method: :get,
          path: path,
          model: Telnyx::Models::WellKnownRetrieveProtectedResourceMetadataResponse,
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
