# typed: strong

module Telnyx
  module Resources
    class OAuthClients
      # Create a new OAuth client
      sig do
        params(
          allowed_grant_types:
            T::Array[
              Telnyx::OAuthClientCreateParams::AllowedGrantType::OrSymbol
            ],
          allowed_scopes: T::Array[String],
          client_type: Telnyx::OAuthClientCreateParams::ClientType::OrSymbol,
          name: String,
          logo_uri: String,
          policy_uri: String,
          redirect_uris: T::Array[String],
          require_pkce: T::Boolean,
          tos_uri: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::OAuthClientCreateResponse)
      end
      def create(
        # List of allowed OAuth grant types
        allowed_grant_types:,
        # List of allowed OAuth scopes
        allowed_scopes:,
        # OAuth client type
        client_type:,
        # The name of the OAuth client
        name:,
        # URL of the client logo
        logo_uri: nil,
        # URL of the client's privacy policy
        policy_uri: nil,
        # List of redirect URIs (required for authorization_code flow)
        redirect_uris: nil,
        # Whether PKCE (Proof Key for Code Exchange) is required for this client
        require_pkce: nil,
        # URL of the client's terms of service
        tos_uri: nil,
        request_options: {}
      )
      end

      # Retrieve a single OAuth client by ID
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::OAuthClientRetrieveResponse)
      end
      def retrieve(
        # OAuth client ID
        id,
        request_options: {}
      )
      end

      # Update an existing OAuth client
      sig do
        params(
          id: String,
          allowed_grant_types:
            T::Array[
              Telnyx::OAuthClientUpdateParams::AllowedGrantType::OrSymbol
            ],
          allowed_scopes: T::Array[String],
          logo_uri: String,
          name: String,
          policy_uri: String,
          redirect_uris: T::Array[String],
          require_pkce: T::Boolean,
          tos_uri: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::OAuthClientUpdateResponse)
      end
      def update(
        # OAuth client ID
        id,
        # List of allowed OAuth grant types
        allowed_grant_types: nil,
        # List of allowed OAuth scopes
        allowed_scopes: nil,
        # URL of the client logo
        logo_uri: nil,
        # The name of the OAuth client
        name: nil,
        # URL of the client's privacy policy
        policy_uri: nil,
        # List of redirect URIs
        redirect_uris: nil,
        # Whether PKCE (Proof Key for Code Exchange) is required for this client
        require_pkce: nil,
        # URL of the client's terms of service
        tos_uri: nil,
        request_options: {}
      )
      end

      # Retrieve a paginated list of OAuth clients for the authenticated user
      sig do
        params(
          filter_allowed_grant_types_contains:
            Telnyx::OAuthClientListParams::FilterAllowedGrantTypesContains::OrSymbol,
          filter_client_id: String,
          filter_client_type:
            Telnyx::OAuthClientListParams::FilterClientType::OrSymbol,
          filter_name: String,
          filter_name_contains: String,
          filter_verified: T::Boolean,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultFlatPagination[Telnyx::OAuthClient])
      end
      def list(
        # Filter by allowed grant type
        filter_allowed_grant_types_contains: nil,
        # Filter by client ID
        filter_client_id: nil,
        # Filter by client type
        filter_client_type: nil,
        # Filter by exact client name
        filter_name: nil,
        # Filter by client name containing text
        filter_name_contains: nil,
        # Filter by verification status
        filter_verified: nil,
        # Page number
        page_number: nil,
        # Number of results per page
        page_size: nil,
        request_options: {}
      )
      end

      # Delete an OAuth client
      sig do
        params(id: String, request_options: Telnyx::RequestOptions::OrHash).void
      end
      def delete(
        # OAuth client ID
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
