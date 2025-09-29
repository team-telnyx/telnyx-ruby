# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuthClients#create
    class OAuthClientCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute allowed_grant_types
      #   List of allowed OAuth grant types
      #
      #   @return [Array<Symbol, Telnyx::Models::OAuthClientCreateParams::AllowedGrantType>]
      required :allowed_grant_types,
               -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::OAuthClientCreateParams::AllowedGrantType] }

      # @!attribute allowed_scopes
      #   List of allowed OAuth scopes
      #
      #   @return [Array<String>]
      required :allowed_scopes, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute client_type
      #   OAuth client type
      #
      #   @return [Symbol, Telnyx::Models::OAuthClientCreateParams::ClientType]
      required :client_type, enum: -> { Telnyx::OAuthClientCreateParams::ClientType }

      # @!attribute name
      #   The name of the OAuth client
      #
      #   @return [String]
      required :name, String

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
      #   List of redirect URIs (required for authorization_code flow)
      #
      #   @return [Array<String>, nil]
      optional :redirect_uris, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute require_pkce
      #   Whether PKCE (Proof Key for Code Exchange) is required for this client
      #
      #   @return [Boolean, nil]
      optional :require_pkce, Telnyx::Internal::Type::Boolean

      # @!attribute tos_uri
      #   URL of the client's terms of service
      #
      #   @return [String, nil]
      optional :tos_uri, String

      # @!method initialize(allowed_grant_types:, allowed_scopes:, client_type:, name:, logo_uri: nil, policy_uri: nil, redirect_uris: nil, require_pkce: nil, tos_uri: nil, request_options: {})
      #   @param allowed_grant_types [Array<Symbol, Telnyx::Models::OAuthClientCreateParams::AllowedGrantType>] List of allowed OAuth grant types
      #
      #   @param allowed_scopes [Array<String>] List of allowed OAuth scopes
      #
      #   @param client_type [Symbol, Telnyx::Models::OAuthClientCreateParams::ClientType] OAuth client type
      #
      #   @param name [String] The name of the OAuth client
      #
      #   @param logo_uri [String] URL of the client logo
      #
      #   @param policy_uri [String] URL of the client's privacy policy
      #
      #   @param redirect_uris [Array<String>] List of redirect URIs (required for authorization_code flow)
      #
      #   @param require_pkce [Boolean] Whether PKCE (Proof Key for Code Exchange) is required for this client
      #
      #   @param tos_uri [String] URL of the client's terms of service
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      module AllowedGrantType
        extend Telnyx::Internal::Type::Enum

        CLIENT_CREDENTIALS = :client_credentials
        AUTHORIZATION_CODE = :authorization_code
        REFRESH_TOKEN = :refresh_token

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # OAuth client type
      module ClientType
        extend Telnyx::Internal::Type::Enum

        PUBLIC = :public
        CONFIDENTIAL = :confidential

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
