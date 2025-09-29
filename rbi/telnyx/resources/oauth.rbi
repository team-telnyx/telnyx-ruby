# typed: strong

module Telnyx
  module Resources
    class OAuth
      # Retrieve details about an OAuth consent token
      sig do
        params(
          consent_token: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::OAuthRetrieveResponse)
      end
      def retrieve(
        # OAuth consent token
        consent_token,
        request_options: {}
      )
      end

      # Create an OAuth authorization grant
      sig do
        params(
          allowed: T::Boolean,
          consent_token: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::OAuthGrantsResponse)
      end
      def grants(
        # Whether the grant is allowed
        allowed:,
        # Consent token
        consent_token:,
        request_options: {}
      )
      end

      # Introspect an OAuth access token to check its validity and metadata
      sig do
        params(
          token: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::OAuthIntrospectResponse)
      end
      def introspect(
        # The token to introspect
        token:,
        request_options: {}
      )
      end

      # Register a new OAuth client dynamically (RFC 7591)
      sig do
        params(
          client_name: String,
          grant_types:
            T::Array[Telnyx::OAuthRegisterParams::GrantType::OrSymbol],
          logo_uri: String,
          policy_uri: String,
          redirect_uris: T::Array[String],
          response_types: T::Array[String],
          scope: String,
          token_endpoint_auth_method:
            Telnyx::OAuthRegisterParams::TokenEndpointAuthMethod::OrSymbol,
          tos_uri: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::OAuthRegisterResponse)
      end
      def register(
        # Human-readable string name of the client to be presented to the end-user
        client_name: nil,
        # Array of OAuth 2.0 grant type strings that the client may use
        grant_types: nil,
        # URL of the client logo
        logo_uri: nil,
        # URL of the client's privacy policy
        policy_uri: nil,
        # Array of redirection URI strings for use in redirect-based flows
        redirect_uris: nil,
        # Array of the OAuth 2.0 response type strings that the client may use
        response_types: nil,
        # Space-separated string of scope values that the client may use
        scope: nil,
        # Authentication method for the token endpoint
        token_endpoint_auth_method: nil,
        # URL of the client's terms of service
        tos_uri: nil,
        request_options: {}
      )
      end

      # OAuth 2.0 authorization endpoint for the authorization code flow
      sig do
        params(
          client_id: String,
          redirect_uri: String,
          response_type:
            Telnyx::OAuthRetrieveAuthorizeParams::ResponseType::OrSymbol,
          code_challenge: String,
          code_challenge_method:
            Telnyx::OAuthRetrieveAuthorizeParams::CodeChallengeMethod::OrSymbol,
          scope: String,
          state: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def retrieve_authorize(
        # OAuth client identifier
        client_id:,
        # Redirect URI
        redirect_uri:,
        # OAuth response type
        response_type:,
        # PKCE code challenge
        code_challenge: nil,
        # PKCE code challenge method
        code_challenge_method: nil,
        # Space-separated list of requested scopes
        scope: nil,
        # State parameter for CSRF protection
        state: nil,
        request_options: {}
      )
      end

      # Retrieve the JSON Web Key Set for token verification
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::OAuthRetrieveJwksResponse
        )
      end
      def retrieve_jwks(request_options: {})
      end

      # Exchange authorization code, client credentials, or refresh token for access
      # token
      sig do
        params(
          grant_type: Telnyx::OAuthTokenParams::GrantType::OrSymbol,
          client_id: String,
          client_secret: String,
          code: String,
          code_verifier: String,
          redirect_uri: String,
          refresh_token: String,
          scope: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::OAuthTokenResponse)
      end
      def token(
        # OAuth 2.0 grant type
        grant_type:,
        # OAuth client ID (if not using HTTP Basic auth)
        client_id: nil,
        # OAuth client secret (if not using HTTP Basic auth)
        client_secret: nil,
        # Authorization code (for authorization_code flow)
        code: nil,
        # PKCE code verifier (for authorization_code flow)
        code_verifier: nil,
        # Redirect URI (for authorization_code flow)
        redirect_uri: nil,
        # Refresh token (for refresh_token flow)
        refresh_token: nil,
        # Space-separated list of requested scopes (for client_credentials)
        scope: nil,
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
