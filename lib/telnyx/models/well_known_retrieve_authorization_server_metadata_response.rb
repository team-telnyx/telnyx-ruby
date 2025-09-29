# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WellKnown#retrieve_authorization_server_metadata
    class WellKnownRetrieveAuthorizationServerMetadataResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute authorization_endpoint
      #   Authorization endpoint URL
      #
      #   @return [String, nil]
      optional :authorization_endpoint, String

      # @!attribute code_challenge_methods_supported
      #   Supported PKCE code challenge methods
      #
      #   @return [Array<String>, nil]
      optional :code_challenge_methods_supported, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute grant_types_supported
      #   Supported grant types
      #
      #   @return [Array<String>, nil]
      optional :grant_types_supported, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute introspection_endpoint
      #   Token introspection endpoint URL
      #
      #   @return [String, nil]
      optional :introspection_endpoint, String

      # @!attribute issuer
      #   Authorization server issuer URL
      #
      #   @return [String, nil]
      optional :issuer, String

      # @!attribute jwks_uri
      #   JWK Set endpoint URL
      #
      #   @return [String, nil]
      optional :jwks_uri, String

      # @!attribute registration_endpoint
      #   Dynamic client registration endpoint URL
      #
      #   @return [String, nil]
      optional :registration_endpoint, String

      # @!attribute response_types_supported
      #   Supported response types
      #
      #   @return [Array<String>, nil]
      optional :response_types_supported, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute scopes_supported
      #   Supported OAuth scopes
      #
      #   @return [Array<String>, nil]
      optional :scopes_supported, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute token_endpoint
      #   Token endpoint URL
      #
      #   @return [String, nil]
      optional :token_endpoint, String

      # @!attribute token_endpoint_auth_methods_supported
      #   Supported token endpoint authentication methods
      #
      #   @return [Array<String>, nil]
      optional :token_endpoint_auth_methods_supported, Telnyx::Internal::Type::ArrayOf[String]

      # @!method initialize(authorization_endpoint: nil, code_challenge_methods_supported: nil, grant_types_supported: nil, introspection_endpoint: nil, issuer: nil, jwks_uri: nil, registration_endpoint: nil, response_types_supported: nil, scopes_supported: nil, token_endpoint: nil, token_endpoint_auth_methods_supported: nil)
      #   @param authorization_endpoint [String] Authorization endpoint URL
      #
      #   @param code_challenge_methods_supported [Array<String>] Supported PKCE code challenge methods
      #
      #   @param grant_types_supported [Array<String>] Supported grant types
      #
      #   @param introspection_endpoint [String] Token introspection endpoint URL
      #
      #   @param issuer [String] Authorization server issuer URL
      #
      #   @param jwks_uri [String] JWK Set endpoint URL
      #
      #   @param registration_endpoint [String] Dynamic client registration endpoint URL
      #
      #   @param response_types_supported [Array<String>] Supported response types
      #
      #   @param scopes_supported [Array<String>] Supported OAuth scopes
      #
      #   @param token_endpoint [String] Token endpoint URL
      #
      #   @param token_endpoint_auth_methods_supported [Array<String>] Supported token endpoint authentication methods
    end
  end
end
