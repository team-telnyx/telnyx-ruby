# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuth#token
    class OAuthTokenParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute grant_type
      #   OAuth 2.0 grant type
      #
      #   @return [Symbol, Telnyx::Models::OAuthTokenParams::GrantType]
      required :grant_type, enum: -> { Telnyx::OAuthTokenParams::GrantType }

      # @!attribute client_id
      #   OAuth client ID (if not using HTTP Basic auth)
      #
      #   @return [String, nil]
      optional :client_id, String

      # @!attribute client_secret
      #   OAuth client secret (if not using HTTP Basic auth)
      #
      #   @return [String, nil]
      optional :client_secret, String

      # @!attribute code
      #   Authorization code (for authorization_code flow)
      #
      #   @return [String, nil]
      optional :code, String

      # @!attribute code_verifier
      #   PKCE code verifier (for authorization_code flow)
      #
      #   @return [String, nil]
      optional :code_verifier, String

      # @!attribute redirect_uri
      #   Redirect URI (for authorization_code flow)
      #
      #   @return [String, nil]
      optional :redirect_uri, String

      # @!attribute refresh_token
      #   Refresh token (for refresh_token flow)
      #
      #   @return [String, nil]
      optional :refresh_token, String

      # @!attribute scope
      #   Space-separated list of requested scopes (for client_credentials)
      #
      #   @return [String, nil]
      optional :scope, String

      # @!method initialize(grant_type:, client_id: nil, client_secret: nil, code: nil, code_verifier: nil, redirect_uri: nil, refresh_token: nil, scope: nil, request_options: {})
      #   @param grant_type [Symbol, Telnyx::Models::OAuthTokenParams::GrantType] OAuth 2.0 grant type
      #
      #   @param client_id [String] OAuth client ID (if not using HTTP Basic auth)
      #
      #   @param client_secret [String] OAuth client secret (if not using HTTP Basic auth)
      #
      #   @param code [String] Authorization code (for authorization_code flow)
      #
      #   @param code_verifier [String] PKCE code verifier (for authorization_code flow)
      #
      #   @param redirect_uri [String] Redirect URI (for authorization_code flow)
      #
      #   @param refresh_token [String] Refresh token (for refresh_token flow)
      #
      #   @param scope [String] Space-separated list of requested scopes (for client_credentials)
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # OAuth 2.0 grant type
      module GrantType
        extend Telnyx::Internal::Type::Enum

        CLIENT_CREDENTIALS = :client_credentials
        AUTHORIZATION_CODE = :authorization_code
        REFRESH_TOKEN = :refresh_token

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
