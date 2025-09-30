# frozen_string_literal: true

module Telnyx
  module Resources
    class OAuth
      # Retrieve details about an OAuth consent token
      #
      # @overload retrieve(consent_token, request_options: {})
      #
      # @param consent_token [String] OAuth consent token
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::OAuthRetrieveResponse]
      #
      # @see Telnyx::Models::OAuthRetrieveParams
      def retrieve(consent_token, params = {})
        @client.request(
          method: :get,
          path: ["oauth/consent/%1$s", consent_token],
          model: Telnyx::Models::OAuthRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Create an OAuth authorization grant
      #
      # @overload grants(allowed:, consent_token:, request_options: {})
      #
      # @param allowed [Boolean] Whether the grant is allowed
      #
      # @param consent_token [String] Consent token
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::OAuthGrantsResponse]
      #
      # @see Telnyx::Models::OAuthGrantsParams
      def grants(params)
        parsed, options = Telnyx::OAuthGrantsParams.dump_request(params)
        @client.request(
          method: :post,
          path: "oauth/grants",
          body: parsed,
          model: Telnyx::Models::OAuthGrantsResponse,
          options: options
        )
      end

      # Introspect an OAuth access token to check its validity and metadata
      #
      # @overload introspect(token:, request_options: {})
      #
      # @param token [String] The token to introspect
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::OAuthIntrospectResponse]
      #
      # @see Telnyx::Models::OAuthIntrospectParams
      def introspect(params)
        parsed, options = Telnyx::OAuthIntrospectParams.dump_request(params)
        @client.request(
          method: :post,
          path: "oauth/introspect",
          headers: {"content-type" => "application/x-www-form-urlencoded"},
          body: parsed,
          model: Telnyx::Models::OAuthIntrospectResponse,
          options: options
        )
      end

      # Register a new OAuth client dynamically (RFC 7591)
      #
      # @overload register(client_name: nil, grant_types: nil, logo_uri: nil, policy_uri: nil, redirect_uris: nil, response_types: nil, scope: nil, token_endpoint_auth_method: nil, tos_uri: nil, request_options: {})
      #
      # @param client_name [String] Human-readable string name of the client to be presented to the end-user
      #
      # @param grant_types [Array<Symbol, Telnyx::Models::OAuthRegisterParams::GrantType>] Array of OAuth 2.0 grant type strings that the client may use
      #
      # @param logo_uri [String] URL of the client logo
      #
      # @param policy_uri [String] URL of the client's privacy policy
      #
      # @param redirect_uris [Array<String>] Array of redirection URI strings for use in redirect-based flows
      #
      # @param response_types [Array<String>] Array of the OAuth 2.0 response type strings that the client may use
      #
      # @param scope [String] Space-separated string of scope values that the client may use
      #
      # @param token_endpoint_auth_method [Symbol, Telnyx::Models::OAuthRegisterParams::TokenEndpointAuthMethod] Authentication method for the token endpoint
      #
      # @param tos_uri [String] URL of the client's terms of service
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::OAuthRegisterResponse]
      #
      # @see Telnyx::Models::OAuthRegisterParams
      def register(params = {})
        parsed, options = Telnyx::OAuthRegisterParams.dump_request(params)
        @client.request(
          method: :post,
          path: "oauth/register",
          body: parsed,
          model: Telnyx::Models::OAuthRegisterResponse,
          options: options
        )
      end

      # OAuth 2.0 authorization endpoint for the authorization code flow
      #
      # @overload retrieve_authorize(client_id:, redirect_uri:, response_type:, code_challenge: nil, code_challenge_method: nil, scope: nil, state: nil, request_options: {})
      #
      # @param client_id [String] OAuth client identifier
      #
      # @param redirect_uri [String] Redirect URI
      #
      # @param response_type [Symbol, Telnyx::Models::OAuthRetrieveAuthorizeParams::ResponseType] OAuth response type
      #
      # @param code_challenge [String] PKCE code challenge
      #
      # @param code_challenge_method [Symbol, Telnyx::Models::OAuthRetrieveAuthorizeParams::CodeChallengeMethod] PKCE code challenge method
      #
      # @param scope [String] Space-separated list of requested scopes
      #
      # @param state [String] State parameter for CSRF protection
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::OAuthRetrieveAuthorizeParams
      def retrieve_authorize(params)
        parsed, options = Telnyx::OAuthRetrieveAuthorizeParams.dump_request(params)
        @client.request(
          method: :get,
          path: "oauth/authorize",
          query: parsed,
          model: NilClass,
          options: options
        )
      end

      # Retrieve the JSON Web Key Set for token verification
      #
      # @overload retrieve_jwks(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::OAuthRetrieveJwksResponse]
      #
      # @see Telnyx::Models::OAuthRetrieveJwksParams
      def retrieve_jwks(params = {})
        @client.request(
          method: :get,
          path: "oauth/jwks",
          model: Telnyx::Models::OAuthRetrieveJwksResponse,
          options: params[:request_options]
        )
      end

      # Exchange authorization code, client credentials, or refresh token for access
      # token
      #
      # @overload token(grant_type:, client_id: nil, client_secret: nil, code: nil, code_verifier: nil, redirect_uri: nil, refresh_token: nil, scope: nil, request_options: {})
      #
      # @param grant_type [Symbol, Telnyx::Models::OAuthTokenParams::GrantType] OAuth 2.0 grant type
      #
      # @param client_id [String] OAuth client ID (if not using HTTP Basic auth)
      #
      # @param client_secret [String] OAuth client secret (if not using HTTP Basic auth)
      #
      # @param code [String] Authorization code (for authorization_code flow)
      #
      # @param code_verifier [String] PKCE code verifier (for authorization_code flow)
      #
      # @param redirect_uri [String] Redirect URI (for authorization_code flow)
      #
      # @param refresh_token [String] Refresh token (for refresh_token flow)
      #
      # @param scope [String] Space-separated list of requested scopes (for client_credentials)
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::OAuthTokenResponse]
      #
      # @see Telnyx::Models::OAuthTokenParams
      def token(params)
        parsed, options = Telnyx::OAuthTokenParams.dump_request(params)
        @client.request(
          method: :post,
          path: "oauth/token",
          headers: {"content-type" => "application/x-www-form-urlencoded"},
          body: parsed,
          model: Telnyx::Models::OAuthTokenResponse,
          options: options
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
