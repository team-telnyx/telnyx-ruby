# typed: strong

module Telnyx
  module Resources
    class WellKnown
      # OAuth 2.0 Authorization Server Metadata (RFC 8414)
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::WellKnownRetrieveAuthorizationServerMetadataResponse
        )
      end
      def retrieve_authorization_server_metadata(request_options: {})
      end

      # OAuth 2.0 Protected Resource Metadata for resource discovery
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::WellKnownRetrieveProtectedResourceMetadataResponse
        )
      end
      def retrieve_protected_resource_metadata(request_options: {})
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
