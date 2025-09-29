# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuth#register
    class OAuthRegisterParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute client_name
      #   Human-readable string name of the client to be presented to the end-user
      #
      #   @return [String, nil]
      optional :client_name, String

      # @!attribute grant_types
      #   Array of OAuth 2.0 grant type strings that the client may use
      #
      #   @return [Array<Symbol, Telnyx::Models::OAuthRegisterParams::GrantType>, nil]
      optional :grant_types,
               -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::OAuthRegisterParams::GrantType] }

      # @!attribute logo_uri
      #   URL of the client logo
      #
      #   @return [String, nil]
      optional :logo_uri, String

      # @!attribute policy_uri
      #   URL of the client's privacy policy
      #
      #   @return [String, nil]
      optional :policy_uri, String

      # @!attribute redirect_uris
      #   Array of redirection URI strings for use in redirect-based flows
      #
      #   @return [Array<String>, nil]
      optional :redirect_uris, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute response_types
      #   Array of the OAuth 2.0 response type strings that the client may use
      #
      #   @return [Array<String>, nil]
      optional :response_types, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute scope
      #   Space-separated string of scope values that the client may use
      #
      #   @return [String, nil]
      optional :scope, String

      # @!attribute token_endpoint_auth_method
      #   Authentication method for the token endpoint
      #
      #   @return [Symbol, Telnyx::Models::OAuthRegisterParams::TokenEndpointAuthMethod, nil]
      optional :token_endpoint_auth_method, enum: -> { Telnyx::OAuthRegisterParams::TokenEndpointAuthMethod }

      # @!attribute tos_uri
      #   URL of the client's terms of service
      #
      #   @return [String, nil]
      optional :tos_uri, String

      # @!method initialize(client_name: nil, grant_types: nil, logo_uri: nil, policy_uri: nil, redirect_uris: nil, response_types: nil, scope: nil, token_endpoint_auth_method: nil, tos_uri: nil, request_options: {})
      #   @param client_name [String] Human-readable string name of the client to be presented to the end-user
      #
      #   @param grant_types [Array<Symbol, Telnyx::Models::OAuthRegisterParams::GrantType>] Array of OAuth 2.0 grant type strings that the client may use
      #
      #   @param logo_uri [String] URL of the client logo
      #
      #   @param policy_uri [String] URL of the client's privacy policy
      #
      #   @param redirect_uris [Array<String>] Array of redirection URI strings for use in redirect-based flows
      #
      #   @param response_types [Array<String>] Array of the OAuth 2.0 response type strings that the client may use
      #
      #   @param scope [String] Space-separated string of scope values that the client may use
      #
      #   @param token_endpoint_auth_method [Symbol, Telnyx::Models::OAuthRegisterParams::TokenEndpointAuthMethod] Authentication method for the token endpoint
      #
      #   @param tos_uri [String] URL of the client's terms of service
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      module GrantType
        extend Telnyx::Internal::Type::Enum

        AUTHORIZATION_CODE = :authorization_code
        CLIENT_CREDENTIALS = :client_credentials
        REFRESH_TOKEN = :refresh_token

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Authentication method for the token endpoint
      module TokenEndpointAuthMethod
        extend Telnyx::Internal::Type::Enum

        NONE = :none
        CLIENT_SECRET_BASIC = :client_secret_basic
        CLIENT_SECRET_POST = :client_secret_post

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
